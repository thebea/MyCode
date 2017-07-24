<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="java.sql.*" %>
<jsp:useBean class="bank.User" id="User" scope="page" />

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户注册验证</title>
    
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

 <%
    request.setCharacterEncoding("GBK");
    
    String id=request.getParameter("id");
    int ids=Integer.parseInt(id);
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String personId = request.getParameter("personId");
    String phone = request.getParameter("phone");
    String address = request.getParameter("address");
    String date=request.getParameter("date");
    
    double balance=0.00;
  %>
  
  </head>
  
  <body>
 <% 
    User.setId(ids);
    User.setName(name);
    User.setPassword(password);
    User.setPersonId(personId);
    User.setPhone(phone);
    User.setAddress(address);
    User.setDate(date);
    User.setBalance(balance);
    
    if (!User.isExist()) {
        if (password.length()==6) {
            User.addUser();
  %>
            <h2 align="center"> 注册成功</h2>
   	<td>
    	<p align="center"><a href="login.jsp" target="_parent">返回登陆界面</a></p>
    	
    </td>
  <%    
	    } else {
  %>
  
	        <h2 align="center"> 请输入六位数的密码</h2>
	  <td>
    	<a href="register.jsp" target="_parent">返回注册页面<br></a>
    </td>
  <%
	    }
    } else {
  %>
        <h2 align="center"> 用户名已存在</h2>
	  
    	<td>
    	<a href="register.jsp" target="_parent">返回注册页面<br></a>
    </td>
  <%
    }
  %>
 
  </body>
</html>