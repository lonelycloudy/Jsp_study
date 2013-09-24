<%@ page contentType="text/html; charset=GB2312" language="java" %>
<%@ page import="java.util.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Session ����ҳ��</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
  </head>
  
  <body>
	<%
		//ȡ��Session��Χ��itemMap����,�о�����c��structһ��
		Map<String,Integer> itemMap = (Map<String,Integer>)session.getAttribute("itemMap");
		//���Map����Ϊ��,���ʼ��Map����
		if(itemMap == null){ 
			itemMap = new HashMap<String,Integer>();
			itemMap.put("�鼮",0);
			itemMap.put("����",0);
			itemMap.put("����",0);
		}
		//��ȡ��һ��ҳ����������
		String[] buys = request.getParameterValues("item");
		//����������ĸ�Ԫ��
		for(String item:buys){ 
			//���itemΪbook,��ʾѡ�����鼮
			if(item.equals("book")){ 
				int num1 = itemMap.get("�鼮").intValue();
				//���鼮key��Ӧ��������1
				itemMap.put("�鼮",num1+1);
			}
			//���itemΪcomputer,��ʾѡ�������
			if(item.equals("computer")){ 
				int num2 = itemMap.get("����").intValue();
				itemMap.put("����",num2+1);
			}
			//���itemΪcar,��ʾѡ��������
			if(item.equals("car")){ 
				int num3 = itemMap.get("����").intValue();
				itemMap.put("����",num3+1);
			}	
		}
		//��itemMap����ŵ����ó�session��Χ��itemMap����
		session.setAttribute("itemMap",itemMap);
	%>
	<p>
		�����������Ʒ:<br>
		�鼮:<%=itemMap.get("�鼮") %>��<br/>
		����:<%=itemMap.get("����") %>̨<br/>
		����:<%=itemMap.get("����") %>��<br/>
		<a href="shop.jsp">�ٴι���</a>
	</p>
  </body>
</html>
