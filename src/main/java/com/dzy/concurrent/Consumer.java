package com.dzy.concurrent;

import java.util.concurrent.BlockingQueue;

/**
 * Created by dengzhiyuan on 16/12/5.
 */
public class Consumer implements Runnable {
    protected BlockingQueue blockingQueue=null;

    public Consumer(BlockingQueue blockingQueue){
        this.blockingQueue=blockingQueue;
    }

    public void run() {

        try {
            System.out.println(blockingQueue.take());//拿一个队列中就是空的,所以会等待
            System.out.println("take2正在等待put进值========");
            System.out.println(blockingQueue.take());
            System.out.println("take2已经消费了值========");

            System.out.println(blockingQueue.take());
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
