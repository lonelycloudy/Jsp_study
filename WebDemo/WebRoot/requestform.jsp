<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�ռ������ı�ҳ</title>
    
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
	     	�û���:<br/>
	     	<input type="text" name="name"><br/>
	     	�ձ�:<br/>
	     	��:<input type="radio" name="gender" value="��">
	     	Ů:<input type="radio" name="gender" value="Ů"><br/>
	     	ϲ������ɫ:<br/>
	��:<input type="checkbox" name="color" value="��">
	     	��:<input type="checkbox" name="color" value="��">
	      	��:<input type="checkbox" name="color" value="��"><br/>
	      	���ԵĹ���:<br/>
	      	<select name="country">
	      		<option value="�й�">�й�</option>
	      		<option value="����">����</option>
	      	  	<option value="����˹">����˹</option>
	      	</select><br/>
	      	<input type="submit" value="�ύ">
	      	<input type="reset" value="����">
	     </form>
	</div>
       
  </body>
</html>
