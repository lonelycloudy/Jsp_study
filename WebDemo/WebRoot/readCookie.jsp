<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��ȡCookie</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  
  <body>
      <%
      	//��ȡ��վ�ڿͻ����ϱ���������Cookie
      	Cookie[] cookies = request.getCookies();
      	//�����ͻ����ϵ�ÿ��Cookie
      	for(Cookie c : cookies){ 
      		//���Cookie����Ϊusername,������Cookie��������Ҫ���ʵ�Cookie
      		if(c.getName().equals("username")){ 
      			out.println(c.getValue());
      		}
      	}
       %>
  </body>
</html>
