<%@ page language="java" import="java.util.*,java.net.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>设置中文Cookie</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body>
  		<%
  			//以编码后的字符串为值,创建一个Cookie对象
  			Cookie c = new Cookie("cnName",java.net.URLEncoder.encode("孙悟空","gbk"));
  			//设置Cookie对象的生成周期
  			c.setMaxAge(24*3600);
  			//向客户端增加Cookie对象
  			response.addCookie(c);
  			//获取本站在客户端上保留的所用Cookie
  			Cookie[] cookies = request.getCookies();
  			//遍历客户端上的每个Cookie对象
  			for(Cookie cookie:cookies){ 
  				//如果Cookie名字为username,表明该Cookie是我们需要访问的Cookie
  				if(cookie.getName().equals("cnName")){ 
  					//使用java.util.URLDecoder对Cookie值进行解码
  					out.println(java.net.URLDecoder.decode(cookie.getValue()));
  				}
  			}
  		 %>
  </body>
</html>
