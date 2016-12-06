package com.dzy.log;

import org.apache.commons.io.IOUtils;

import java.io.File;
import java.io.FileInputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

/**
 * Created by dengzhiyuan on 16/11/29.
 */
public class LogAnalyse {

    private static String TODAYLOG="/Users/dengzhiyuan/log/";
    private SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
    /**
     * 从文件中读取日志分析
     */
    LogAnalyse(){
        String today=format.format(new Date());
        TODAYLOG+="LOG_"+today+".log";
    }

    public void readLogUseText(String word) throws Exception{
        File file=new File(TODAYLOG);

        List<String> strings = IOUtils.readLines(new FileInputStream(file), "UTF-8");
        Iterator<String> iter = strings.iterator();
        while(iter.hasNext()){
            String s =  iter.next();
            if (s.contains(word)){
                System.out.println(s);
            }
        }
    }

    public static void main(String[] args) throws Exception {
        Long before=System.currentTimeMillis();
        System.out.println(before);
         LogAnalyse logAnalyse=new LogAnalyse();
         logAnalyse.readLogUseText("查找完毕放款银行:标id");
        System.out.println((System.currentTimeMillis()-before)/1000+"s");


    }
}
