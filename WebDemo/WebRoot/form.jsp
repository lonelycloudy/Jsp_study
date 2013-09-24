<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'form.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body>
   <%--
   	以下会将浏览器访问t.jsp的请求分到t_forward.jsp里去(Server操作)
   <jsp:forward page="t_forward.jsp">
		<jsp:param name="username" value="liuxin"/>
		<jsp:param name="password" value="123456"/>
	</jsp:forward>
    --%>
    <%--以下是用户输入的,用来将用户的输入信息提交到服务器t_forward.jsp脚本 --%>
      <form id="login" method="post" action="t_forward.jsp">
      		<font>用户名:</font><input type="text" name="username"><br />
      		<font>密码:</font><input type="text" name="password"> <br />
      		<input type="submit" value="login">
      </form>
      <%--使用动态include 指令导入页面 --%>
      <jsp:include page="form_include.jsp">
      	<jsp:param name="age" value="32"/>
      </jsp:include>
      
  </body>
</html>
