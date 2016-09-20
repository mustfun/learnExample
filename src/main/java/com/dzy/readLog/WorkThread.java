package com.dzy.readLog;

/**
 * Created by dengzhiyuan on 2016/9/20.
 */
public class WorkThread implements Runnable{

    private String commont;

    public WorkThread(String s) {
        this.commont=s;
    }

    @Override
    public void run() {
        System.out.println(Thread.currentThread().getName()+"开启comment="+commont);
        processComment();
        System.out.println(Thread.currentThread().getName() + "结束comment");

    }

    private void processComment() {
        try {
            Thread.sleep(5000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }

    @Override
    public String toString() {
        return this.commont;
    }

}
