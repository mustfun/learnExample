package lock;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/**
 * Created by dengzhiyuan on 2016/9/21.
 */
public class ReadWriteLockSupport {

    private final ReentrantReadWriteLock lock=new ReentrantReadWriteLock();
    private volatile boolean isCommpeted;
    private Lock readLock=lock.readLock();
    private Lock writeLock=lock.writeLock();

    private Map<String,String> map;

    public void initCache(){
        readLock.lock();            //读锁
        if (!isCommpeted){
            //拿写锁之前必须要释放掉读锁
            readLock.unlock();
            writeLock.lock();
            if (!isCommpeted){//再次检查，看下是否读锁被人拿了
                map=new HashMap<String, String>();
                isCommpeted=true;
            }
            readLock.lock();
            writeLock.unlock();//这样就降级成一个读锁了


        }
        System.out.println("缓存是否为空=========="+map.isEmpty());
        readLock.unlock();
    }

    public String get(String key){//得到方法
        readLock.lock();
        System.out.println(Thread.currentThread().getName() + " read.");
        startTheCountdown();
        try {
            return map.get(key);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            readLock.unlock();
        }
    }



    public String  put(String key,String value){
        writeLock.lock();
        System.out.println(Thread.currentThread().getName() + " write.");
        startTheCountdown();
        try {
            return map.put(key, value);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            writeLock.unlock();
        }
    }


    private void startTheCountdown() {

        Long currentMills=System.currentTimeMillis();
        for(;;) {
            long diff = System.currentTimeMillis() - currentMills;
            if(diff > 5000) {
                break;
            }
        }
        //在这里停5秒干嘛？
    }



}
