<%@ page contentType="text/html" language="java" import="java.util.*" pageEncoding="GBK" errorPage="error.jsp"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>JSP-�﷨����ҳ��</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
   <%-- ������JSP��������--%>
  <%!
  //����һ�����ͱ���,��<%���"!"���޷�����
  public int count;
  //����һ������
  public String info()
  {
  	return "Hello";
  }
   %>
  <body>
   	&quot;<%-- ������JSPע��--%>
  	<!--������HTMLע�� -->
  <%-- ������ѭ������--%>
	 <p>���԰��������-��ǰʱ��ʱ<%out.println(new java.util.Date());%></p>
  <% for(int i=0;i<7;i++){
  	out.println("<font size='"+i+"'>");
  %>ѵ��</font> <br>
  <% }%>
  <%
  	//��count��ֵ������ټ�1,ÿ��ˢ�¾��ۼ�,�����ͷű���ֵ.�µ�http����������
  	out.println(count++);
   %>
   <br/>
   <%
   	//���info()�����ķ���ֵ
   	out.println(info());
    %>
    <br/>
    <%--ʹ�ñ��ʽ�������ֵ:���ʽ�����зֺ� --%>
    <%=count++ %>
    <%--ʹ�ñ��ʽ��������ķ���ֵ --%>
    <%=info() %>
    <!-- ѭ��ʮ��,������ -->
    <table bgcolor="#9999dd" border="1" width="300px">
    	<!-- Java�ű����HTML�ı�ǩ�������� -->
    	<%
    	for(int i = 0;i < 10;i++){
    	%>
    		<!-- �����ѭ��������<tr>��ǩѭ�� -->
    		<tr>
    			<td>ѭ��ֵ</td>
    			<td><%=i%></td>
    		</tr>
    	<%
    	}
    	%>
    </table>
    <%
    	//������뽫��������ʱ����
    	int a = 6;
    	int b = 0;
    	//int c = a / b ;
     %>
     <%-- ���ⲿ �ļ�Ƕ�뵽��ǰJSP�ļ���,ͬʱ�������ҳ���е�JSP���
     	�����Ǿ�̬includeʹ��
     --%>
    <%--����t_include.jsp,����t_include.jsp����ķ���,����������DB�ӿڷ�װ���� --%>
     <%@include file="t_include.jsp"%>
     <%-- ���ʽ�����ⲿjsp�ű��еĺ���--%>
     <%=t_include_str() %>
     <%-- һ������ָ��:Servlet����
     			page,include,taglib<struts��>,�������Ӽ��ǡ�
     	     ��������ָ��(JSPд��)
     	    jsp:forward ִ��ҳ��ת��,������Ĵ���ת������һ��ҳ��
     	    jsp:param ���ڴ��ݲ���,����������֧�ֲ����ı�ǩһ��ʹ��
     	    jsp:include ���ڶ�̬����һ��JSPҳ��.
     	    jsp:plugin ��������JavaBean��Applet���ͻ���ִ��
     	    jsp:useBean ����һ��JavaBean��ʵ��
     	    jsp:setProperty ����JavaBean ʵ��������ֵ
     	    jsp:getProperty ���JavaBean ʵ��������ֵ     
     --%>
    <%--���»Ὣ���������t.jsp������ֵ�t_forward.jsp��ȥ --%>
	<jsp:forward page="t_forward.jsp">
		<jsp:param name="username" value="liuxin"/>
		<jsp:param name="password" value="123456"/>
	</jsp:forward>
	<%--pluginָ�� :���ط������˵�JavaBean��Applet���ͻ���ִ��,�ͻ�����Ҫjdk
		paramָ�� : ��������ʹ��,���<jsp:include|forward|plugin
	--%>
	
  </body>
</html>
