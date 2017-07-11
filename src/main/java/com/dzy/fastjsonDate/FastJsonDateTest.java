package com.dzy.fastjsonDate;

import com.alibaba.fastjson.parser.JSONScanner;
import org.junit.Test;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author dengzhiyuan
 * @version 1.0
 * @date 2017/7/11
 * @since 1.0
 */
public class FastJsonDateTest {

    @Test
    public void dateTest() throws Exception{
        JSONScanner jsonScanner=new JSONScanner("0001-01-01T00:00:00+08:00");
        System.out.println(jsonScanner.scanISO8601DateIfMatch(false));
    }
}
