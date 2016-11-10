package com.dzy.netty;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerAdapter;
import io.netty.channel.ChannelHandlerContext;
import org.apache.log4j.Logger;


/**
 * Created by dengzhiyuan on 16/11/10.
 */
public class TimeClientHandler extends ChannelHandlerAdapter {
    private static final Logger LOG=Logger.getLogger(TimeClientHandler.class.getName());
    private final ByteBuf firstMessage;
    /**
     * 创建一个客户端处理器
     */
    public TimeClientHandler(){
        byte[] req="QUERY TIME ORDER".getBytes();
        firstMessage= Unpooled.buffer(req.length);
        firstMessage.writeBytes(req);
    }

    @Override
    public void channelActive(ChannelHandlerContext ctx) throws Exception {
        ctx.writeAndFlush(firstMessage);
    }

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
        ByteBuf buf= (ByteBuf) msg;
        byte[] req=new byte[buf.readableBytes()];
        buf.readBytes(req);
        String body=new String(req,"UTF-8");
        LOG.info("现在是"+body);
    }


    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        LOG.warn("未捕获异常从downstream"+cause.getMessage());
        ctx.close();
    }
}
