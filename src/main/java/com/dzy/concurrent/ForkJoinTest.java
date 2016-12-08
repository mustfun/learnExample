package com.dzy.concurrent;

/**
 * Created by dengzhiyuan on 16/12/8.
 */

import java.util.concurrent.ExecutionException;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.ForkJoinTask;
import java.util.concurrent.RecursiveTask;

/**
 *ForkJoinTask：我们要使用ForkJoin框架，必须首先创建一个ForkJoin任务。它提供在任务中执行fork()和join()操作的机制，通常情况下我们不需要直接继承ForkJoinTask类，而只需要继承它的子类，Fork/Join框架提供了以下两个子类：
 RecursiveAction：用于没有返回结果的任务。
 RecursiveTask ：用于有返回结果的任务。

 ForkJoinTask需要通过ForkJoinPool来执行，
 任务分割出的子任务会添加到当前工作线程所维护的双端队列中，进入队列的头部。当一个工作线程的队列里暂时没有任务时，它会随机从其他工作线程的队列的尾部获取一个任务。
 *
 *
 */
public class ForkJoinTest extends RecursiveTask<Integer>{ //这个地方是个泛型,自己定义

    private static final int THREADHOLD=2;
    private int start;
    private int end;

    public ForkJoinTest(int start,int end){
        this.start=start;
        this.end=end;
    }


    @Override
    protected Integer compute() {
        int sum=0;
        boolean canCompute=(start-end)<=THREADHOLD;
        if(canCompute){
            for (int i=start;i<end;i++){
                sum+=i;
            }
        }else{
            //如果大于阀值,就分裂成2个任务计算
            int middle=(end-start)/2;
            ForkJoinTest left=new ForkJoinTest(start,middle);
            ForkJoinTest right=new ForkJoinTest(middle+1,end);

            left.fork();
            right.fork();


            int leftResult=left.join();
            int rightResult=right.join();

            sum=leftResult+rightResult;

        }
        return sum;
    }

    public static void main(String[] args) {
        ForkJoinPool forkJoinPool=new ForkJoinPool();
        ForkJoinTest forkJoinTest=new ForkJoinTest(1,10000);
        ForkJoinTask<Integer> submit = forkJoinPool.submit(forkJoinTest);
        try {
            System.out.println(submit.get());
        } catch (InterruptedException e) {
            e.printStackTrace();
        } catch (ExecutionException e) {
            e.printStackTrace();
        }
    }
}
