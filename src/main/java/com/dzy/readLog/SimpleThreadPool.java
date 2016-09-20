package com.dzy.readLog;

import org.junit.Test;

import java.util.concurrent.*;

/**
 * Created by dengzhiyuan on 2016/9/20.
 */
public class SimpleThreadPool {

    //@Test
    public  void testThreadPool(String[] args) {

        ExecutorService executor= Executors.newFixedThreadPool(5);//5个线程池
        for (int i=0;i<10;i++){
            Runnable worker=new WorkThread(""+i);//给一个comment给work
            executor.execute(worker);
        }
        //10个线程，但是每个5秒，5个大小，肯定只有5个执行，其它等待
        System.out.println("for循环走完了，在干嘛呢");
        executor.shutdown();//执行后不再接收新任务，如果里面有任务
        System.out.println("我的心在等待，一直在等待");
        while (!executor.isTerminated()){
            //没有完成就等待
        }
        System.out.println("Finished all threads");
    }

    @Test
    public void testPoolMonitor(){
        RejectExecutionHandleImpl rejectExecutionHandle=new RejectExecutionHandleImpl();
        //获得ThreadFactory
        ThreadFactory threadFactory=Executors.defaultThreadFactory();

        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 4,10,TimeUnit.SECONDS,new ArrayBlockingQueue<Runnable>(2),threadFactory,rejectExecutionHandle);

        MyMonitorThread monitor=new MyMonitorThread(threadPoolExecutor,3);

        Thread monitorThread = new Thread(monitor);
        monitorThread.start();
        for (int i = 0; i < 10; i++) {
            threadPoolExecutor.execute(new WorkThread(i+""));
        }

        try {
            Thread.sleep(3000);

            threadPoolExecutor.shutdown();
            //shut down the monitor thread
            Thread.sleep(5000);
            monitor.shutdown();
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
