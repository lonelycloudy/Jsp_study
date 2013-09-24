<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>COOKIE设置</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body>
       <%
       		//获取请求参数
       		String name = request.getParameter("name");
       		//以获取到的请求参数为值,创建 一个Cookie对象
       		Cookie c = new Cookie("username",name);
       		//设置Cookie对象的生存期限
       		c.setMaxAge(24*3600);
       		//向客户端增加Cookie对象
       		response.addCookie(c);
        %>
  </body>
</html>
