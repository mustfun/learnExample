package com.dzy.readLog;

import java.util.concurrent.ThreadPoolExecutor;

/**
 * Created by dengzhiyuan on 2016/9/20.
 */
public class MyMonitorThread implements Runnable {

    private ThreadPoolExecutor executor;
    private int seceond;
    private boolean run=true;


    public MyMonitorThread(ThreadPoolExecutor executor,int seceond){
        this.executor=executor;
        this.seceond=seceond;
    }

    public void shutdown(){
        this.run=false;
    }

    @Override
    public void run() {
        while (true){
            System.out.println(
                    String.format("[monitor] [%d/%d] Active: %d, Completed: %d, Task: %d, isShutdown: %s, isTerminated: %s",
                            this.executor.getPoolSize(),
                            this.executor.getCorePoolSize(),
                            this.executor.getActiveCount(),
                            this.executor.getCompletedTaskCount(),
                            this.executor.getTaskCount(),
                            this.executor.isShutdown(),
                            this.executor.isTerminated()));
            try {
                Thread.sleep(seceond*1000);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

    }
}
