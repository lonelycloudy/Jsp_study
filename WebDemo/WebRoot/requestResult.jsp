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
    
    <title>��ȡ����ͷ/�������</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body>
 	<%
 		//��ȡ��������ͷ������
 		Enumeration<String> headerNames = request.getHeaderNames();
 		while(headerNames.hasMoreElements()){
 			String headerName = headerNames.nextElement();
 			//��ȡÿ�����󡢼����Ӧ��ֵ
 			out.println(headerName+"-->"+request.getHeader(headerName)+"<br />");
 		}
 		out.println("</br>");
 		//���ñ����ʽ,���ڼ�������,ʹ��gb2312����
 		request.setCharacterEncoding("gb2312");
 		//�������λ�ñ����ֵ
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		//���ĳ����������ж��ֵ,��ʹ�ø÷�����ȡ���ֵ
		String[] color = request.getParameterValues("color");
		String national = request.getParameter("country");
		String getname = request.getParameter("getname");
 	 %>
 	 <!-- ����������������ֵ -->
 	 ��������:<%=name%><br/>
 	 �����ձ�:<%=gender%><br/>
 	 ��ϲ������ɫ:<%for(String c:color){
 	 	out.println(c+" ");
 	 }
 	 %><br/>
           �����ԵĹ���:<%=national%><br/>
    GET����:getname<%=getname %>
  </body>
</html>
