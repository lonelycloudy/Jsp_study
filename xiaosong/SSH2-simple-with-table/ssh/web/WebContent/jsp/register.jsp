<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>Template</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>

<center>
<h1>用户注册</h1>

<s:form name="addForm" action="system/register" validate="true">
    
	<s:textfield label="用户名称" name="user.name"/>
	<s:textfield label="密码" name="user.password"/>
	<s:textfield label="邮箱" name="user.email"/>
	<s:textfield label="学校" name="user.school"/>
	
    <s:submit value="保存" />
</s:form>



<form action="system/register.action" method="post">
<table width="450" border="1">
	<tr>
		<td>用户名称:</td>
		<td><input type="text" name="name" /></td>
		<td>&nbsp;&nbsp;</td>
	</tr>
	<tr>
		<td>密码:</td>
		<td><input type="password" name="password" /></td>
		<td>&nbsp;&nbsp;</td>
	</tr>
	<tr>
		<td>邮箱:</td>
		<td><input type="text" name="email" /></td>
		<td>&nbsp;&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;&nbsp;</td>
		<td><input type="submit" value="注册" /> &nbsp;&nbsp; <input type="reset" value="重置" /></td>
		<td>&nbsp;&nbsp;</td>
	</tr>
</table>
</form>

</center>

</body>

</html>
