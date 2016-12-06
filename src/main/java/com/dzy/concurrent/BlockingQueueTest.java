package com.dzy.concurrent;

import org.junit.Test;

import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/**
 * Created by dengzhiyuan on 16/12/5.
 */
public class BlockingQueueTest {



    public  void testArrayBlockingQueue() {

        BlockingQueue blockingQueue=new ArrayBlockingQueue(1024);

        Producer producer=new Producer(blockingQueue);
        Consumer consumer=new Consumer(blockingQueue);


        new Thread(producer).start();
        new Thread(consumer).start();

    }

    @Test
    public void testLinkedBlockingQueue(){
        try {
            BlockingQueue<String> unbounded = new LinkedBlockingQueue<String>();
            BlockingQueue<String> bounded   = new LinkedBlockingQueue<String>(1024);

            bounded.put("Value");

            String value = bounded.take();

            System.out.println(value);
            System.out.println(value);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }


}
