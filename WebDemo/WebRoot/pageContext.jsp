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
      	<b>pageContext����</b>
      	<%
      		//ʹ��pageContext��������,������Ĭ����page��Χ
      		pageContext.setAttribute("page","hello");
      		//ʹ��request��������,������Ĭ����request��Χ��
      		request.setAttribute("request", "hello");
      		//ʹ��pageContext������������request��Χ��
      		pageContext.setAttribute("request2","hello",pageContext.REQUEST_SCOPE);
      		//ʹ��session������������session��Χ��
      		session.setAttribute("session", "hello");
      		//ʹ��pageContext������������session��Χ��
      		pageContext.setAttribute("session2", "hello",pageContext.SESSION_SCOPE);
      		//ʹ��application������������application��Χ��
      		application.setAttribute("app","hello");
      		//ʹ��pageContext������������application��Χ��
      		pageContext.setAttribute("app2", "hello",pageContext.APPLICATION_SCOPE);
      		//�����ȡ���������ڵķ�Χ
      		out.println("page�������ڷ�Χ"+pageContext.getAttributesScope("page")+"<br/>");
      		out.println("request�������ڷ�Χ"+pageContext.getAttributesScope("request")+"<br/>");
      		out.println("request2�������ڷ�Χ"+pageContext.getAttributesScope("request2")+"<br/>");
      		out.println("session�������ڷ�Χ"+pageContext.getAttributesScope("session")+"<br/>");
      		out.println("session2�������ڷ�Χ"+pageContext.getAttributesScope("session2")+"<br/>");
      		out.println("app�������ڷ�Χ"+pageContext.getAttributesScope("app")+"<br/>");
      		out.println("app2�������ڷ�Χ"+pageContext.getAttributesScope("app")+"<br/>");
      		
      	 %>
      </p>
  </body>
</html>
