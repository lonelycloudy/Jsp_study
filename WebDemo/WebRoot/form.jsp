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
   	���»Ὣ���������t.jsp������ֵ�t_forward.jsp��ȥ(Server����)
   <jsp:forward page="t_forward.jsp">
		<jsp:param name="username" value="liuxin"/>
		<jsp:param name="password" value="123456"/>
	</jsp:forward>
    --%>
    <%--�������û������,�������û���������Ϣ�ύ��������t_forward.jsp�ű� --%>
      <form id="login" method="post" action="t_forward.jsp">
      		<font>�û���:</font><input type="text" name="username"><br />
      		<font>����:</font><input type="text" name="password"> <br />
      		<input type="submit" value="login">
      </form>
      <%--ʹ�ö�̬include ָ���ҳ�� --%>
      <jsp:include page="form_include.jsp">
      	<jsp:param name="age" value="32"/>
      </jsp:include>
      
  </body>
</html>
