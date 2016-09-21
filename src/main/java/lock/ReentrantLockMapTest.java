package lock;

/**
 * Created by dengzhiyuan on 2016/9/21.
 */
public class ReentrantLockMapTest {

    public static void testReadLock(){
        final ReadWriteLockSupport support=new ReadWriteLockSupport();

        support.initCache();

        Runnable runnable=new Runnable() {
            @Override
            public void run() {
                support.get("test");
            }
        };

        new Thread(runnable).start();
        new Thread(runnable).start();

        new Thread(new Runnable() {
            public void run() {
                support.put("test", "test");
            }
        }).start();

    }

    public static void testWriteLock(){
        final ReadWriteLockSupport support=new ReadWriteLockSupport();

        support.initCache();

        new Thread(new Runnable() {
            public void run() {
                support.put("key1", "value1");
            }
        }).start();

        new Thread(new Runnable() {
            public void run() {
                support.put("key2", "value2");
            }
        }).start();

        new Thread(new Runnable() {
            public void run() {
                support.get("key1");
            }
        }).start();
    }

    public static void main(String[] args) {
        testReadLock();
    }

}
