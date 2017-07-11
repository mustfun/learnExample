package com.dzy.designpatten;

import org.junit.Test;

/**
 * @author dengzhiyuan
 * @version 1.0
 * @date 2017/7/4
 * @since 1.0
 */
public class SingletonTest {


    @Test
    public void testLanhanMoshi(){

//        Runnable runnable=()->{Singleton.getInstance();};
        Runnable runnable=new Runnable() {
            @Override
            public void run() {
                String s = Thread.currentThread().getName() + "--------id=" + Thread.currentThread().getId();
                System.out.println(s);
                Singleton.getInstance();
            }
        };
        for (int i = 0; i < 100; i++) {
            Thread thread=new Thread(runnable);
            thread.start();
        }
    }

    public static void main(String[] args) {
        Runnable runnable= Singleton::getInstance;
        for (int i = 0; i < 100; i++) {
            Thread thread=new Thread(runnable);
            thread.start();
        }
    }
}
