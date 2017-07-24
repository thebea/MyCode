<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
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
  
    <title>用户登录验证</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk">
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
    String name = request.getParameter("name");
    User.setName(name);
  
    String password = request.getParameter("password");
    User.setPassword(password);
 
 
    if (User.userValid()) {
      if(User.getLoss().equals("N")){
         session.setAttribute("name", name);
         session.setAttribute("balance", User.getBalance()+"");
        
  %>
            <h2 align="center"> 登录成功！</h2>
            <center>
                <input type="button" name="goback" value="返回" onClick="javascript:window.history.go(-1)" >
            </center>
  <%
        // 跳转到登录用户主页
        response.sendRedirect("index.jsp");
        } else {
  %>
        <h2 align="center"> 用户已挂失！</h2>
        <center>
            <input type="button" name="goback" value="返回" onClick="javascript:window.history.go(-1)" >
        </center>
  <%
    }
  %>
  <%
    } else {
  %>
        <h2 align="center"> 用户名或者密码错误！</h2>
        <center>
            <input type="button" name="goback" value="返回" onClick="javascript:window.history.go(-1)" >
        </center>
  <%
    }
  %>
 
  <div align="center">
  </body>
</html>