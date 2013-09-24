<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>读取Cookie</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  
  <body>
      <%
      	//获取本站在客户端上保留的所用Cookie
      	Cookie[] cookies = request.getCookies();
      	//遍历客户端上的每个Cookie
      	for(Cookie c : cookies){ 
      		//如果Cookie的名为username,表明该Cookie是我们需要访问的Cookie
      		if(c.getName().equals("username")){ 
      			out.println(c.getValue());
      		}
      	}
       %>
  </body>
</html>
