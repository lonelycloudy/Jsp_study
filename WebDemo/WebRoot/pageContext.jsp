<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'pageContext.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body>
      <p>
      	<b>pageContext对象</b>
      	<%
      		//使用pageContext设置属性,该属性默认在page范围
      		pageContext.setAttribute("page","hello");
      		//使用request设置属性,该属性默认在request范围内
      		request.setAttribute("request", "hello");
      		//使用pageContext将属性设置在request范围中
      		pageContext.setAttribute("request2","hello",pageContext.REQUEST_SCOPE);
      		//使用session将属性设置在session范围中
      		session.setAttribute("session", "hello");
      		//使用pageContext将属性设置在session范围中
      		pageContext.setAttribute("session2", "hello",pageContext.SESSION_SCOPE);
      		//使用application将属性设置在application范围中
      		application.setAttribute("app","hello");
      		//使用pageContext将属性设置在application范围中
      		pageContext.setAttribute("app2", "hello",pageContext.APPLICATION_SCOPE);
      		//下面获取各属性所在的范围
      		out.println("page变量所在范围"+pageContext.getAttributesScope("page")+"<br/>");
      		out.println("request变量所在范围"+pageContext.getAttributesScope("request")+"<br/>");
      		out.println("request2变量所在范围"+pageContext.getAttributesScope("request2")+"<br/>");
      		out.println("session变量所在范围"+pageContext.getAttributesScope("session")+"<br/>");
      		out.println("session2变量所在范围"+pageContext.getAttributesScope("session2")+"<br/>");
      		out.println("app变量所在范围"+pageContext.getAttributesScope("app")+"<br/>");
      		out.println("app2变量所在范围"+pageContext.getAttributesScope("app")+"<br/>");
      		
      	 %>
      </p>
  </body>
</html>
