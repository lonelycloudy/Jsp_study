<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>收集参数的表单页</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body>
	<div id="r_f" style="float:left;width:700px;margin-left:120px;align:center;">
		 <form id="form1" method = "post" action="requestResult.jsp?getname=342">
	     	用户名:<br/>
	     	<input type="text" name="name"><br/>
	     	姓别:<br/>
	     	男:<input type="radio" name="gender" value="男">
	     	女:<input type="radio" name="gender" value="女"><br/>
	     	喜欢的颜色:<br/>
	红:<input type="checkbox" name="color" value="红">
	     	绿:<input type="checkbox" name="color" value="绿">
	      	蓝:<input type="checkbox" name="color" value="蓝"><br/>
	      	来自的国家:<br/>
	      	<select name="country">
	      		<option value="中国">中国</option>
	      		<option value="美国">美国</option>
	      	  	<option value="俄罗斯">俄罗斯</option>
	      	</select><br/>
	      	<input type="submit" value="提交">
	      	<input type="reset" value="重置">
	     </form>
	</div>
       
  </body>
</html>
