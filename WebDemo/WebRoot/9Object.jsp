<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP '9Object.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body>
       <p>
       JSP�ű��е�9�����ö���
       </p>
       <div id="o_m" style="width:700px;">
       	<div id="0_1" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b>application</b>:java.servlet.ServletContext��ʵ��,<br />
       			��ʵ������JSP������WebӦ�ñ���,������JSPҳ��,������Servlet֮�佻����Ϣ.<br />
       			��������WebӦ����Ч,һ��JSP��Servlet�����ݷ���application��,<br />
       			�����ݿ��Ա���Ӧ�����������е�JSP��Servlet����.<br />
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       		<b>��������:</b>
       		getAttribute(String attName),<br/>
       		setAttribute(String attName,String attValue),<br/>
       		getInitParameter(String paraName)��.
       		</span>
       	</div>
   		<div id="0_2" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b>config</b>:java.servlet.ServletConfig��ʵ��,
       			��ʵ�������JSP��������Ϣ,�ö�����Ҫ��Servlet����Ч.
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       		<b>��������:</b>
 			getInitParameter(String paramName)<br />
 			getInitParameternames()<br/>
       		</span>
       	</div>
       	<div id="0_3" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b>exception</b>:java.lang.Throwable��ʵ��,
       			��ʵ����������ҳ���е��쳣�ʹ���,������ָ��page��isErrorPage:trueʱ�ö���ſ���
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       		<b>��������:</b>
 			getMessage()<br />
 			printStackTrace()<br/>
       		</span>
       	</div>
       	<div id="0_4" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b>out</b>:java.servlet.jsp.JspWriter��ʵ��,
       			��ʵ������JSPҳ��������,�û����������,�γ�HTMLҳ��
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       		<b>��������:</b>
       		out.println();
       		</span>
       	</div>
       	<div id="0_5" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b>page</b><br/>
       			�����ҳ�汾��,ͨ��û��̫���ô�,Ҳ����Servlet�е�this,<br/>
       			�����;������ɵ�Servlet��,ͨ��page�ĵط��Ϳ���this.<br/>
       			���Ե�ǰҳ����Ч,һ�����ݴ���page��,
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       		</span>
       	</div>
        <div id="0_6" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b>pageContext</b>:javax.servlet.jsp.PageContext��ʵ��<br/>
       			 �ö�������JSPҳ��������,ʹ�ô˶�����Է���ҳ���еĹ������ݡ�<br/>
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       			<b>��������</b>:
       			getServletContext()<br />
       			getServletConfig()
       		</span>
       	</div>
        <div id="0_7" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b style="color:blue;">request</b>:javax.servlet.http.HttpServletRequest��ʵ��<br/>
       			 �ö����װ��һ������,�ͻ��˵������������װ�ڸö�����.<br/>
       			 ���ö���:��ȡ�ͻ��������������ʹ�øö���.<br />
       			 ���Ա���������Ч,һ��JSP��Servlet�����ݷ���request��,<br/>
       			 �����ݽ����Ա������������JSP��Servlet����.<br/>
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       			<b>��������</b>:
       			getParameter(String paramName)<br />
       			getParameterValues(String paramName)<br/>
       			setAttribute(String attrName,Object attrValue)<br/>
       			getAttribute(String attrName)<br/>
       			setCharacterEncoding(String env)��<br />
       		</span>
       	</div>
       	<div id="0_8" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b style="color:blue;">response</b>:javax.servlet.http.HttpServletResponse��ʵ��<br/>
       			����������˶Կͻ��˵���Ӧ,ͨ������ʹ�øö���ֱ����Ӧ.<br/>
       			����ʹ��out����,������Ҫ���ɷ��ַ�����Ӧ.<br/>
       			�������ض���
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       			<b>��������</b>:
       			 getOutPutStream()<br/>
       			 sendRedirect(java.lang.String location)��
       		</span>
       	</div>
     	<div id="0_9" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b style="color:blue;">session</b>:javax.servlet.http.HttpSession��ʵ��<br/>
       			����һ�λỰ.���ͻ����������վ�㽨������ʱ,�Ự��ʼ.�ر�ʱ��ʧ<br />
       			����һ�λỰ��Ч,һ��JSP��Servlet�����ݷ���session��,<br />
       			�����ݿ��Ա����λỰ���������е�JSP��Servlet����.<br/>
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       			<b>��������</b>:
       			 getAttribute(String attrName)<br/>
       			 setAttribute(String attrName,Object attrValue)<br />
       		</span>
       	</div>
      </div>
  </body>
</html>
