<%@ page language="java" import="java.util.*,java.net.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��������Cookie</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body>
  		<%
  			//�Ա������ַ���Ϊֵ,����һ��Cookie����
  			Cookie c = new Cookie("cnName",java.net.URLEncoder.encode("�����","gbk"));
  			//����Cookie�������������
  			c.setMaxAge(24*3600);
  			//��ͻ�������Cookie����
  			response.addCookie(c);
  			//��ȡ��վ�ڿͻ����ϱ���������Cookie
  			Cookie[] cookies = request.getCookies();
  			//�����ͻ����ϵ�ÿ��Cookie����
  			for(Cookie cookie:cookies){ 
  				//���Cookie����Ϊusername,������Cookie��������Ҫ���ʵ�Cookie
  				if(cookie.getName().equals("cnName")){ 
  					//ʹ��java.util.URLDecoder��Cookieֵ���н���
  					out.println(java.net.URLDecoder.decode(cookie.getValue()));
  				}
  			}
  		 %>
  </body>
</html>
