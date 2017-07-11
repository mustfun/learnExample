package com.dzy.designpatten;

/**
 * @author dengzhiyuan
 * @version 1.0
 * @date 2017/7/4
 * @since 1.0
 */
public class Singleton {

    //私有的、类型为Singleton自身的静态成员变量

    private static Singleton singleton = null;

    //构造方法被设为私有，防止外部使用new来创建对象，破坏单例

    private Singleton(){

        System.out.println("构造函数被调用");

    }

    //公有的静态方法，供外部调用来获取单例对象

    /*public static Singleton getInstance(){

        synchronized (Object.class){
            if(singleton == null){    //第一次调用该方法时，创建对象。

                singleton = new Singleton();

            }
        }

        return singleton;

    }*/

    /**
     * 双重检查锁有2个问题：1、内存可见性问题   主内存和缓存没有同步
     *  2、 指令重排序问题：singleton还没有构造器还没有初始化，但是不为空，所以直接返回啦
     * @return
     */

    public static Singleton getInstance(){

        // 主内存和缓存没有同步
        if(singleton == null){    //第一次调用该方法时，创建对象。
                //wait
                synchronized (Object.class){
                    if (singleton==null) {   //是不是第二个线程   ====》  当时由于内存可见性的不知道new
                        singleton = new Singleton();  //不安全的
                        // 分配内存
                        // 构造器函数初始化
                        // 改变指针指向
                        // jvm控制的=========>    synchronized什么时候释放锁？
                    }
                }
            }
        return singleton;

    }
}
