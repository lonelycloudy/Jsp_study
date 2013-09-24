<%@page contentType="image/jpeg" language="java" %>
<%@ page language="java" import="java.awt.image.*,javax.imageio.*,java.io.*,java.awt.*,java.util.*" pageEncoding="GBK"%>
<%
	//创建BufferedImage 对象
	BufferedImage image = new BufferedImage(340,160,BufferedImage.TYPE_INT_RGB);
	//以Image对象获取Graphics();
	Graphics g = image.getGraphics();
	//使用Graphics画图,所画的图像将会出现在image对象中
	g.fillRect(0,0,400,400);
	//设置颜色:红
	g.setColor(new Color(255,0,0));
	//画出一段弧
	g.fillArc(20,20,100,100,30,120);
	//设置颜色:绿
	g.setColor(new Color(0,255,0));
	//画出一段弧
	g.fillArc(20,20,100,100,150,120);
	//设置颜色:蓝
	g.setColor(new Color(0,0,255));
	//画出一段弧
	g.fillArc(20,20,100,100,270,120);
	//设置颜色黑
	g.setColor(new Color(0,0,0));
	g.setFont(new Font("Arial Black",Font.PLAIN,16));
	//画出三个字符串
	g.drawString("red:climb",200,60);
	g.drawString("green:swim",200,100);
	g.drawString("blue:jump",200,140);
	g.dispose();
	//将图像输出到页面的响应
	ImageIO.write(image,"jpg",response.getOutputStream());
%>