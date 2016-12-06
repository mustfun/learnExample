package com.dzy.concurrent;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ThreadFactory;

/**
 * Created by dengzhiyuan on 16/12/5.
 * 消费者在拿去
 */
public class Producer implements Runnable {

    protected BlockingQueue blockingQueue=null;

    public Producer(BlockingQueue blockingQueue){
        this.blockingQueue=blockingQueue;
    }

    public void run() {

        try {
            blockingQueue.put(1);
            Thread.sleep(1000);

            blockingQueue.put(2);
            Thread.sleep(1000);

            blockingQueue.put(3);
            Thread.sleep(1000);

        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
