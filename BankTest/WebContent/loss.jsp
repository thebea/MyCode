<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<jsp:useBean class="bank.User" id="User" scope="page" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>��ʧҳ��</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <% 
       request.setCharacterEncoding("GBK");
       String name = (String)session.getAttribute("name");
       User.setName(name);
       User.setLoss("Y");
       
       User.isLoss();
   %>
   <h2 align="center"> ��ʧ�ɹ�</h2>
          <center>
              <a href="login.jsp" target="_parent">
    	           <b>���ص�¼ҳ��</b><br>
    	  </center>
  </body>
</html>