<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>COOKIE����</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body>
       <%
       		//��ȡ�������
       		String name = request.getParameter("name");
       		//�Ի�ȡ�����������Ϊֵ,���� һ��Cookie����
       		Cookie c = new Cookie("username",name);
       		//����Cookie�������������
       		c.setMaxAge(24*3600);
       		//��ͻ�������Cookie����
       		response.addCookie(c);
        %>
  </body>
</html>
