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
<title>标题</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

</head>

<body>


<table border="1"   bordercolorlight="white" bordercolor="blue" width="80%" height="50%">
<tr>
	<td>姓名</td>
	<td>密码</td>
	<td>邮箱</td>
	<td>学校</td>
	<td>操作</td>
	<td>操作</td>
</tr>
<s:iterator value="pageBean.list">
	<tr>
	<td><s:property value="name" />. </td>
	<td><s:property value="password" />. </td>
	<td><s:property value="email" /> .</td>
	<td><s:property value="school" />. </td>
	<td><a href="system/userlist.action?id=<s:property value="id"/>">修改</a></td>
	<td><a href="system/userlist.action?id=<s:property value="id"/>" onclick="return askDel()" />删除</a></td>
	</tr>
</s:iterator>
</table>
共<s:property value="pageBean.allRow" />条记录 共<s:property value="pageBean.totalPage" />
页 当前第<s:property value="pageBean.currentPage" />页

<s:if test="%{pageBean.currentPage == 1}">
             第一页 上一页
</s:if>
<s:else>
	<a href="system/userlist.action?page=1">第一页</a>
	<a href="system/userlist.action?page=<s:property value="%{pageBean.currentPage-1}"/>">上一页</a>
</s:else>
<s:if test="%{pageBean.currentPage != pageBean.totalPage}">
	<a href="system/userlist.action?page=<s:property value="%{pageBean.currentPage+1}"/>">下一页</a>
	<a href="system/userlist.action?page=<s:property value="pageBean.totalPage"/>">最后一页</a>
</s:if>
<s:else>
         下一页 最后一页
</s:else>



</body>
</html>
