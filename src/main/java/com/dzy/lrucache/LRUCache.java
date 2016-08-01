package com.dzy.lrucache;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/**
 * Created by dengzhiyuan on 2016/8/1.
 */
public class LRUCache<K,V> {
    final static int MAX_LENGTH=1<<30; //最大长度2的30次方
    private LinkedHashMap<K,V> map;
    private ReadWriteLock lock=new ReentrantReadWriteLock();//读写锁
    private int cacheSize;

    public LRUCache(){
        this(MAX_LENGTH);
    }

    public LRUCache(final int maxLength){
        cacheSize=maxLength;
        int hashTableSize=(int)Math.ceil(maxLength/0.75f)+1;
        map=new LinkedHashMap<K, V>(hashTableSize,0.75f,true){
            private static final long serialVersionUID=1L;
            @Override
            protected boolean removeEldestEntry(Map.Entry<K, V> eldest) {
                System.out.println("size="+size()+"cacheSize="+maxLength);
                return size()> cacheSize;  //自动调用的，当size>cacheSize的时候 true或者false
            }
        };
    }

    /**
     * 添加项
     * @param item
     * @param state
     */
    public void put(K item,V state){
        lock.writeLock().lock();
        map.put(item,state);
        lock.writeLock().unlock();
    }

    /**
     * 使用前要判断一下是否存在item这个元素
     * @param item
     * @return
     */
    public synchronized V get(String item){
        lock.readLock().lock();
        V value=map.get(item);
        lock.readLock().unlock();
        return value;
    }

    /**
     * 判断是否存在
     * @param item
     * @return
     */
    public boolean containsKey(String item){
        lock.readLock().lock();
        boolean isContainer=map.containsKey(item);
        lock.readLock().unlock();
        return isContainer;
    }

    /**
     * 删除一个元素
     * @param item
     */
    public void remove(String item){
        lock.writeLock().lock();
        map.remove(item);
        lock.writeLock().unlock();;
    }

    public static void main(String[] args) {
        LRUCache<String,String> lruCache=new LRUCache<String, String>(3);
        lruCache.put("1","1");
        lruCache.put("2","2");
        lruCache.put("3","3");
        lruCache.put("4","4");
        System.out.println(lruCache.get("1"));
        System.out.println(lruCache.get("2"));
        System.out.println(lruCache.get("3"));
        System.out.println(lruCache.get("4"));
    }
}
