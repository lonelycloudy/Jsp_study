<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Java Bean test</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  
  <body>
  	  <!-- 创建Person的实例,该实例的实例名字为person1 -->
      <jsp:useBean id="p1" class="Person" scope="page"/>
      <!-- 设置p1的name、age属性值 -->
      <jsp:setProperty name="p1" property="name" value="cloud"/>
      <jsp:setProperty name="p1" property="age" value="21"/>
      <!-- 取p1的name和age属性值 -->
      <jsp:getProperty name="p1" property="name"/>
      <jsp:getProperty name="p1" property="age"/>
  </body>
</html>
