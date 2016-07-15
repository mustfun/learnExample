package com.dzy;

import com.dzy.util.OrderGenerater;
import org.apache.commons.lang.StringUtils;
import org.junit.Test;

import java.net.InetAddress;
import java.net.UnknownHostException;

/**
 * Created by dengzhiyuan on 2016/7/15.
 */
public class GenerateOrder {

    //自写生成订单类
    /**
     * 全局唯一主键；15位时间戳 +
     *              自增序号四位 +
     *              机器后两段IP，6位 +
     *              备用1位 + 分库信息两位 +
     *              分表信息两位  共30位
     * 寻找到数据库  (userId/100) % 64 + 1 找到数据库    订单最多64个库    目前一个库   二分法裂变扩容
     * 寻找到表信息  userId % 64 + 1 找到表信息    一个库最多64个表   目前分8张表    以后二分法裂变扩容
     */

    public String generateId()
    {
        //只获取本地IP即可
        try {
            String ip=InetAddress.getLocalHost().getHostAddress();
            String[] ipArray = ip.split("\\.");
            final String lastToIp = StringUtils.rightPad(ipArray[2], 3, "0") + StringUtils.leftPad(ipArray[3], 3, "0");
            for (int i = 0; i < 10; i++) {
                new Thread(new Runnable() {
                    @Override
                    public void run() {
                        String tss=OrderGenerater.getTimeStampString();
                        String id = tss + lastToIp + "000" + "01" + "08";
                        System.out.println(id);
                    }
                }).start();
            }

        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        new GenerateOrder().generateId();
    }



}
