<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
      <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">  
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">  
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>  
    <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>   
    <title>开户页面</title>  
    <style type="text/css">
      #main{
      margin:auto;
      width:300px;
      };
</style>
    
    <title>取款页面</title>
    
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
   <form action="withdrawCheck.jsp" method="post" role="form" id="main">
    <div class="form-group">
     <h2><strong>银行取款页面</strong></h2>
  <br> <br> <br>
  <label for="money">请输入取款金额：  </label>
     <input type="text" class="form-control" name="money"><br>

   <br>
    
    <button type="submit" class="btn btn-primary">取款</button>&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="reset" class="btn btn-primary">清空</button>
 </body>
</html>
