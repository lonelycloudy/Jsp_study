<%@ page contentType="text/html; charset=GBK" language="java" errorPage="error.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>���ݿ����</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  
  <body>
   <p>
	<%
	//ע�����ݿ�����
	String dbDriver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/myjsp";
	String username="root";
	String password = "ictspace";
	Statement mStatement=null;
	ResultSet mResultSet = null;
	Connection mConnection =null;
	String sql = "select * from test";
	Class.forName(dbDriver).newInstance();
	//��ȡ���ݿ�����
	mConnection = DriverManager.getConnection(url,username,password);
	mStatement = mConnection.createStatement();
	mResultSet = mStatement.executeQuery(sql);
	%>
	<table bgcolor="#9999dd" border="1" width="300">
 	<%
	//�������
		while(mResultSet.next())
		{
	 %>
	<tr>
		<!-- ���������� -->
	<td><%=mResultSet.getString(1) %></td>
	<td><%=mResultSet.getString(2) %></td>
	<td><%=mResultSet.getString(3) %></td>
	</tr>
	<%} %>
	</table>
   </p>
  </body>
</html>
