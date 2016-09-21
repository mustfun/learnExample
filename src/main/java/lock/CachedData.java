package lock;

import java.util.concurrent.locks.ReentrantReadWriteLock;

/**
 * Created by dengzhiyuan on 2016/9/21.
 */
public class CachedData implements Runnable{
    //缓存数据

    public int i=0;
    public  static  int sum=0;
    Object data;
    volatile boolean cacheValid;
    ReentrantReadWriteLock lock=new ReentrantReadWriteLock();


    private void proccessCacheData(int i){
        lock.readLock().lock();
        if (!cacheValid){
            lock.readLock().unlock();
            lock.writeLock().lock();//拿到一个写锁的时候必须释放读锁
            if (!cacheValid){   //再次检查，防止其他线程获取写锁
                data="正在写入文件======="+i;
                sum+=1;
                cacheValid=true;
            }
            lock.readLock().lock();
            lock.writeLock().unlock();//解锁写锁，必须拿一个读锁

        }

        System.out.println("线程"+i+"正在消费data"+data+"消费值======"+sum);
        lock.readLock().unlock();

    }

    public CachedData(int i){
        this.i=i;
    }

    @Override
    public void run() {
        proccessCacheData(i);
    }


    public static void main(String[] args) {

        for (int i = 0; i < 10; i++) {
            CachedData cachedData=new CachedData(i);
            Thread thread=new Thread(cachedData);
            thread.start();
        }
    }
}
