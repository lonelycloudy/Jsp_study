<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
//��ȡ�������
String user = request.getParameter("username"); 
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>userinf.htmlα��̬ҳ��,<%=user%>�ĸ�����Ϣ</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body>
   	<%
   		//�˴�Ӧ��ͨ�����ݿ��ȡ���û���Ӧ��Ϣ
   		out.println("����ʱ����:"+new java.util.Date()+"<br/>");
   		out.println("�û���:"+user);
   	%>
  </body>
</html>
