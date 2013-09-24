<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 't.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body>
  	$(1+2)<br/>
  	<%
  	out.println("hello,java");
  	 %>
    This is my JSP page. <br>
    2013-5-24 7:11:56 org.apache.catalina.loader.WebappClassLoader checkThreadLocalMapForLeaks
	严重: The web application [/Listener] created a ThreadLocal with key of type [com.sun.faces.util.Util$1] (value [com.sun.faces.util.Util$1@1134043]) and a value of type [java.util.HashMap] (value [{com.sun.faces.patternCache={ = }}]) but failed to remove it when the web application was stopped. This is very likely to create a memory leak.
	Listener中获取数据库连接出现异常.null
	    
  </body>
</html>
