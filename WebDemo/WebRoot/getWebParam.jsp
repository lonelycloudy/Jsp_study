<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��ȡweb.xml�е����ñ���</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  <body><br>
 	<% 
 		//�������л�ȡ����ֵ 
 		//String driver  = application.getInitParameter("driver"); 
 		String driver =   "com.mysql.jdbc.Driver";
 		//String url =  application.getInitParameter("url"); 
 	    String url = "jdbc:mysql://localhost:3306/myjsp";
 		//String user = application.getInitParameter("user"); 
 		String user=  "root";
 		//String pass = application.getInitParameter("pass"); 
 		String pass =  "ictspace";
 		//ע������ 
 		Class.forName(driver).newInstance();
 		//��ȡ��������
 		Connection conn = DriverManager.getConnection(url,user,pass); 
 		//����Statement����
 		Statement stmt = conn.createStatement(); 
 		//ִ�в�ѯ
 		String sql = "select * from test";
 		ResultSet rs = stmt.executeQuery(sql);	
 	 %>
 	 <table bgcolor="#9999dd" border="1" width="480">
 	 	<%
 	 	//���������
 	 	while(rs.next())
 	 	{	
 	 	 %>
 	 	 	<tr>
 	 	 		<td>����:<%=rs.getString(1)%></td>
 	 	 		<td>����;<%=rs.getString(2)%></td>
 	 	 	</tr>
 	 	<%
		}
 	 	 %>
 	 </table>
  </body>
</html>
