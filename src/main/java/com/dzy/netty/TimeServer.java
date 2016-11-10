package com.dzy.netty;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import org.apache.log4j.Logger;

import java.net.Socket;

/**
 * Created by dengzhiyuan on 16/11/10.
 */
public class TimeServer {

    private static final Logger LOG=Logger.getLogger(TimeServer.class.getName());


    public void bind(int port) throws Exception{
        //配置服务端的NIO线程组
        EventLoopGroup bossGroup=new NioEventLoopGroup();
        EventLoopGroup workGroup=new NioEventLoopGroup();

        try {
            ServerBootstrap b=new ServerBootstrap();
            b.group(bossGroup,workGroup).channel(NioServerSocketChannel.class)
                    .option(ChannelOption.SO_BACKLOG,1024)
                    .childHandler(new ChildChannelHandler());
            LOG.info("正在等待客户端连接........");
            //绑定端口,同步等待成功
            ChannelFuture f=b.bind(port).sync();
            //等待服务器监听端口关闭
            f.channel().closeFuture().sync();


        }catch (Exception e){
            e.printStackTrace();
        }finally {
            //优雅退出,释放线程池资源
            bossGroup.shutdownGracefully();
            workGroup.shutdownGracefully();
        }


    }

    private class ChildChannelHandler extends ChannelInitializer<SocketChannel>{

        @Override
        protected void initChannel(SocketChannel socketChannel) throws Exception {
            socketChannel.pipeline().addLast(new TimeServerHandler());
        }
    }

    public static void main(String[] args) throws Exception {
        int port=8080;
        try {
            if (args!=null&&args.length>0){
                port=Integer.valueOf(args[0]);
            }
        } catch (NumberFormatException e) {
            //采用默认port
        }
        LOG.info("服务器监听端口是"+port);
        new TimeServer().bind(port);
    }
}
