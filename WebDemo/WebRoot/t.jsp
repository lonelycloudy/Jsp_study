<%@ page contentType="text/html" language="java" import="java.util.*" pageEncoding="GBK" errorPage="error.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>JSP-语法测试页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
   <%-- 下面是JSP声明部分--%>
  <%!
  //声明一个整型变量,少<%后的"!"会无法编译
  public int count;
  //声明一个方法
  public String info()
  {
  	return "Hello";
  }
   %>
  <body>
   	&quot;<%-- 这里是JSP注释--%>
  	<!--这里是HTML注释 -->
  <%-- 下面是循环测试--%>
	 <p>留言板管理中心-当前时间时<%out.println(new java.util.Date());%></p>
  <% for(int i=0;i<7;i++){
  	out.println("<font size='"+i+"'>");
  %>训练</font> <br>
  <% }%>
  <%
  	//将count的值输出后再加1,每次刷新均累加,并不释放变量值.新的http连接则清零
  	out.println(count++);
   %>
   <br/>
   <%
   	//输出info()方法的返回值
   	out.println(info());
    %>
    <br/>
    <%--使用表达式输出变量值:表达式后不能有分号 --%>
    <%=count++ %>
    <%--使用表达式输出方法的返回值 --%>
    <%=info() %>
    <!-- 循环十次,输出表格 -->
    <table bgcolor="#9999dd" border="1" width="300px">
    	<!-- Java脚本会对HTML的标签产生作用 -->
    	<%
    	for(int i = 0;i < 10;i++){
    	%>
    		<!-- 上面的循环将控制<tr>标签循环 -->
    		<tr>
    			<td>循环值</td>
    			<td><%=i%></td>
    		</tr>
    	<%
    	}
    	%>
    </table>
    <%
    	//下面代码将出现运行时出错
    	int a = 6;
    	int b = 0;
    	//int c = a / b ;
     %>
     <%-- 将外部 文件嵌入到当前JSP文件中,同时解析这个页面中的JSP语句
     	下面是静态include使用
     --%>
    <%--包含t_include.jsp,调用t_include.jsp定义的方法,可用来调用DB接口封装函数 --%>
     <%@include file="t_include.jsp"%>
     <%-- 表达式调用外部jsp脚本中的函数--%>
     <%=t_include_str() %>
     <%-- 一、编译指令:Servlet编译
     			page,include,taglib<struts用>,上述例子即是。
     	     二、动作指令(JSP写法)
     	    jsp:forward 执行页面转向,将请求的处理转发到下一个页面
     	    jsp:param 用于传递参数,必须与其它支持参数的标签一起使用
     	    jsp:include 用于动态引入一个JSP页面.
     	    jsp:plugin 用于下载JavaBean或Applet到客户端执行
     	    jsp:useBean 创建一个JavaBean的实例
     	    jsp:setProperty 设置JavaBean 实例的属性值
     	    jsp:getProperty 输出JavaBean 实例的属性值     
     --%>
    <%--以下会将浏览器访问t.jsp的请求分到t_forward.jsp里去 --%>
	<jsp:forward page="t_forward.jsp">
		<jsp:param name="username" value="liuxin"/>
		<jsp:param name="password" value="123456"/>
	</jsp:forward>
	<%--plugin指令 :下载服务器端的JavaBean或Applet到客户端执行,客户端需要jdk
		param指令 : 并不单独使用,结合<jsp:include|forward|plugin
	--%>
	
  </body>
</html>
