<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<meta charset="UTF-8">
	
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
	<title>银行系统页面</title>
	
	<link rel="stylesheet" href="css/style.css" type="text/css">
	
	
</head>
<body>
<center>	
	 <h2><strong>银行系统首页</strong></h2>
  <br> <br>
			<button type="button" class="btn btn-primary" onclick="window.location.href='deposit.jsp'"  style="width:140px; height:45px;" />用户存款</button>&nbsp;&nbsp;&nbsp;&nbsp;
		   <button type="button" class="btn btn-primary" onclick="window.location.href='withdraw.jsp'" style="width:140px; height:45px;" />用户取款</button>
			   <br> <br> <br>
			<button type="button" class="btn btn-primary" onclick="window.location.href='trans.jsp'"  style="width:140px; height:45px;" />用户转账</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="button" class="btn btn-primary" onclick="window.location.href='query.jsp'" style="width:140px; height:45px;" />用户查询</button>
				<br>	 <br> <br>	
			<button type="button" class="btn btn-primary" onclick="window.location.href='login.jsp'"  style="width:140px; height:45px;" />退出登录</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="button" class="btn btn-primary" onclick="window.location.href='loss.jsp'" style="width:140px; height:45px;" />用户挂失</button>
		
	</center>		
</body>
</html>