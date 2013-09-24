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
       JSP脚本中的9个内置对象
       </p>
       <div id="o_m" style="width:700px;">
       	<div id="0_1" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b>application</b>:java.servlet.ServletContext的实例,<br />
       			该实例代表JSP所属的Web应用本身,可用于JSP页面,或者在Servlet之间交换信息.<br />
       			对于整个Web应用有效,一旦JSP、Servlet将数据放入application中,<br />
       			该数据可以被该应用下其他所有的JSP、Servlet访问.<br />
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       		<b>常见方法:</b>
       		getAttribute(String attName),<br/>
       		setAttribute(String attName,String attValue),<br/>
       		getInitParameter(String paraName)等.
       		</span>
       	</div>
   		<div id="0_2" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b>config</b>:java.servlet.ServletConfig的实例,
       			该实例代表该JSP的配置信息,该对象主要在Servlet中有效.
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       		<b>常见方法:</b>
 			getInitParameter(String paramName)<br />
 			getInitParameternames()<br/>
       		</span>
       	</div>
       	<div id="0_3" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b>exception</b>:java.lang.Throwable的实例,
       			该实例代表其它页面中的异常和错误,当编译指定page的isErrorPage:true时该对象才可用
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       		<b>常见方法:</b>
 			getMessage()<br />
 			printStackTrace()<br/>
       		</span>
       	</div>
       	<div id="0_4" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b>out</b>:java.servlet.jsp.JspWriter的实例,
       			该实例代表JSP页面的输出流,用户于输出内容,形成HTML页面
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       		<b>常见方法:</b>
       		out.println();
       		</span>
       	</div>
       	<div id="0_5" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b>page</b><br/>
       			代表该页面本身,通常没有太大用处,也就是Servlet中的this,<br/>
       			其类型就是生成的Servlet类,通用page的地方就可用this.<br/>
       			仅对当前页面有效,一旦数据存入page中,
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       		</span>
       	</div>
        <div id="0_6" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b>pageContext</b>:javax.servlet.jsp.PageContext的实例<br/>
       			 该对象代表该JSP页面上下文,使用此对象可以访问页面中的共享数据。<br/>
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       			<b>常见方法</b>:
       			getServletContext()<br />
       			getServletConfig()
       		</span>
       	</div>
        <div id="0_7" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b style="color:blue;">request</b>:javax.servlet.http.HttpServletRequest的实例<br/>
       			 该对象封装了一次请求,客户端的请求参数都封装在该对象里.<br/>
       			 常用对象:获取客户端请求参数必须使用该对象.<br />
       			 仅对本次请求有效,一旦JSP、Servlet将数据放入request中,<br/>
       			 该数据将可以被该请求的其他JSP、Servlet访问.<br/>
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       			<b>常见方法</b>:
       			getParameter(String paramName)<br />
       			getParameterValues(String paramName)<br/>
       			setAttribute(String attrName,Object attrValue)<br/>
       			getAttribute(String attrName)<br/>
       			setCharacterEncoding(String env)等<br />
       		</span>
       	</div>
       	<div id="0_8" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b style="color:blue;">response</b>:javax.servlet.http.HttpServletResponse的实例<br/>
       			代表服务器端对客户端的响应,通常很少使用该对象直接响应.<br/>
       			而是使用out对象,除非需要生成非字符串响应.<br/>
       			常用于重定向
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       			<b>常见方法</b>:
       			 getOutPutStream()<br/>
       			 sendRedirect(java.lang.String location)等
       		</span>
       	</div>
     	<div id="0_9" style="width:700px;border:solid #99d">
       		<span style="margin-bottom:3px;">
 				<b style="color:blue;">session</b>:javax.servlet.http.HttpSession的实例<br/>
       			代表一次会话.当客户端浏览器与站点建立连接时,会话开始.关闭时消失<br />
       			仅对一次会话有效,一旦JSP、Servlet将数据放入session中,<br />
       			该数据可以被本次会话的其它所有的JSP、Servlet访问.<br/>
       		</span><br/>
       		<span style="margin-top:5px;font-size:16px;">
       			<b>常见方法</b>:
       			 getAttribute(String attrName)<br/>
       			 setAttribute(String attrName,Object attrValue)<br />
       		</span>
       	</div>
      </div>
  </body>
</html>
