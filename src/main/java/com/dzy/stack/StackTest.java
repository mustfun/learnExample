package com.dzy.stack;

import org.junit.Test;

/**
 * @author dengzhiyuan
 * @version 1.0
 * @date 2017/8/29
 * @since 1.0
 */
public class StackTest {


    //测试无限递归,设置-xss128k，设置的是每个线程栈的大小
    @Test
    public void testDigui(){
        try {
            cal(1);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private int cal(int i){
        System.out.println("i = " + i);
        return cal(++i); //发生stackoverflowError
    }


    //理论上创建n个什么都不做的线程是会产生栈outofmemo的
    @Test
    public void testStackOutofMem(){
        createThread();
    }


    public void createThread(){
        final int[] i = {0};
        while (true){

            Thread t=new Thread(() -> {
                i[0]++;
                System.out.println(i[0]);
                //dosomthing(); //据说加上去会死机
            });

            t.start();

            if (i[0] ==1000||i[0] ==1001){
                System.out.println("====================================程序正常终止=====================================");
                break;
            }
        }
    }

    public void dosomthing(){
        while (true){

        }
    }



    @Test
    public void formyTest(){
        createTreadd2();
    }

    public void createTreadd2(){
        while (true){
            Thread t=new Thread(() -> {
                //每次在堆里面new出来的都是一个新对象
                byte[] object=new byte[2024];
                System.out.println("object = " + object.toString());
            });
            t.start();
        }
    }




}
