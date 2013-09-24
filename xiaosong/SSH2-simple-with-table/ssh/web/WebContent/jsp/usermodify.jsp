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
<h1>用户信息</h1>


<form action="system/modify.action" method="post">

<input type="hidden" name="id" value="${user.id}" />

<table width="450" border="1">
	<tr>
		<td>用户名称:</td>
		<td><input type="text" name="name" value="${user.name }" /></td>
		<td>&nbsp;&nbsp;</td>
	</tr>
	<tr>
		<td>密码:</td>
		<td>
		<input type="password" name="password" value="${user.password }" />
		</td>
		<td>&nbsp;&nbsp;</td>
	</tr>
	<tr>
		<td>邮箱:</td>
		<td><input type="text" name="email" value="${user.email}" /></td>
		<td>&nbsp;&nbsp;</td>
	</tr>
	<tr>
		<td>学校:</td>
		<td>
		<input type="text" name="school" value="${user.school}" />
		</td>
		<td>&nbsp;&nbsp;</td>
	</tr>
	<tr>
		<td>&nbsp;&nbsp;</td>
		<td>
		<input type="submit" value="保存" /> &nbsp;&nbsp; <input type="button" value="注销" /></td>
		<td>&nbsp;&nbsp;</td>
	</tr>
</table>
</form>
</center>
</body>

</html>
