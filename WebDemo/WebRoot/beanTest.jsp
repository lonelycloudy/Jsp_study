<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page language="java" import="lee.Person"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Bean test</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  
  <body>
  	 <%
  	 	//ʵ����Javabean ʵ��,ʵ����ΪPerson,��ʵ����p1
  	 	Person p1 = new Person();
  	 	//��p1���õ�page��Χ��
  	 	pageContext.setAttribute("p1",p1);
  	 	//����p1��name����
  	 	p1.setName("cloud");
  	    p1.setAge(23);
  	  %>
  	  <font>�û�����:<%=p1.getName() %></font>
 	  <font>����:<%=p1.getAge() %></font>
  </body>
</html>
