package lock;

import java.util.TreeMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/**
 * Created by dengzhiyuan on 2016/9/21.
 */
public class ReadWriteDictionary {

    private final TreeMap<String, String> map = new TreeMap<String, String>();
    private final ReentrantReadWriteLock lock = new ReentrantReadWriteLock();
    private final Lock r = lock.readLock();
    private final Lock w = lock.writeLock();

    public String get(String key) {
        r.lock();
        try {
            return map.get(key);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            r.unlock();
        }
        return null;
    }

    public Object[] allKeys() {
        r.lock();
        try {
            return map.keySet().toArray();
        } finally {
            r.unlock();
        }
    }

    public String put(String key, String value) {
        w.lock();
        try {
            return map.put(key, value);
        } finally {
            w.unlock();
        }
    }

    public void clear() {
        w.lock();
        try {
            map.clear();
        } finally {
            w.unlock();
        }
    }
}
