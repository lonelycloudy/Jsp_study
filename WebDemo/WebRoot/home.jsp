<%@ page contentType="text/html;charset=GBK" language="java" errorPage="error.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page info="留言板管理中心" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>留言板-首页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  <body>
  	<%-- 这里是JSP注释--%>
  	<!--这里是HTML注释 -->
	 <p>
 	 <!-- 输出Info信息 -->
	 <%=getServletInfo() %>-当前时间时<%out.println(new java.util.Date());%>  <br/>
	 
	 </p>
  </body>
</html>
