package com.dzy.readLog;

import org.junit.Test;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by dengzhiyuan on 2016/9/13.
 */
public class HashTest {

    @Test
    public void testHashCode(){
        Map<String,String> myMap=new HashMap();
        Integer a=2;
        int h=a.hashCode();
        h ^= (h >>> 20) ^ (h >>> 12);
        System.out.println(h);
        h=h ^ (h >>> 7) ^ (h >>> 4);
        System.out.println(h);

    }


}
