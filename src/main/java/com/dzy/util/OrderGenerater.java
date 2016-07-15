package com.dzy.util;

import org.apache.commons.lang.StringUtils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * Created by dengzhiyuan on 2016/7/15.
 */
public class OrderGenerater {

    //默认设置一个大小？
    public static ConcurrentHashMap<String,AtomicInteger> cache=new ConcurrentHashMap<String, AtomicInteger>(1);

    public static  String getTimeStampString(){
        String timestamp = new SimpleDateFormat("yyMMddHHmmssSSS").format(new Date());
        String inc=null;
        AtomicInteger value=cache.get(timestamp);
        if (value==null){
            cache.clear();
            int defaultStartValue=0;
            cache.put(timestamp,new AtomicInteger(defaultStartValue));
            inc=String.valueOf(defaultStartValue);
        }else{
            //如果发现有值
            inc=String.valueOf(value.addAndGet(1));//有值就每次加1
        }
        return timestamp+ StringUtils.leftPad(inc,4,"0");
    }
}
