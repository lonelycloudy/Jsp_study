<%@ page contentType="text/html" language="java"  pageEncoding="GBK" errorPage=""%>
<%@ page import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>获取请求头/请求参数</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body>
 	<%
 		//获取所有请求头的名字
 		Enumeration<String> headerNames = request.getHeaderNames();
 		while(headerNames.hasMoreElements()){
 			String headerName = headerNames.nextElement();
 			//获取每个请求、及其对应的值
 			out.println(headerName+"-->"+request.getHeader(headerName)+"<br />");
 		}
 		out.println("</br>");
 		//设置编码格式,对于简体中文,使用gb2312解码
 		request.setCharacterEncoding("gb2312");
 		//下面依次获得表单域的值
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		//如果某个请求参数有多个值,将使用该方法获取多个值
		String[] color = request.getParameterValues("color");
		String national = request.getParameter("country");
		String getname = request.getParameter("getname");
 	 %>
 	 <!-- 下面依次输出表单域的值 -->
 	 您的名字:<%=name%><br/>
 	 您的姓别:<%=gender%><br/>
 	 您喜欢的颜色:<%for(String c:color){
 	 	out.println(c+" ");
 	 }
 	 %><br/>
           您来自的国家:<%=national%><br/>
    GET参数:getname<%=getname %>
  </body>
</html>
