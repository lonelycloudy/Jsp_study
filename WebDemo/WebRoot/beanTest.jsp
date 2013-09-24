<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page language="java" import="lee.Person"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Bean test</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  
  <body>
  	 <%
  	 	//实例化Javabean 实例,实现类为Person,该实例名p1
  	 	Person p1 = new Person();
  	 	//将p1放置到page范围中
  	 	pageContext.setAttribute("p1",p1);
  	 	//设置p1的name属性
  	 	p1.setName("cloud");
  	    p1.setAge(23);
  	  %>
  	  <font>用户名字:<%=p1.getName() %></font>
 	  <font>年龄:<%=p1.getAge() %></font>
  </body>
</html>
