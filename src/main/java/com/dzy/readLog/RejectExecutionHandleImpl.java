package com.dzy.readLog;

import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

/**
 * Created by dengzhiyuan on 2016/9/20.
 */
public class RejectExecutionHandleImpl implements RejectedExecutionHandler {
    @Override
    public void rejectedExecution(Runnable r, ThreadPoolExecutor executor) {
        System.out.println("线程r"+r.toString()+"被拒绝了~自动调控");
    }
}
