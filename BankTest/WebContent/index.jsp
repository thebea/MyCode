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
    <title>����ҳ��</title>  
    <style type="text/css">
      #main{
      margin:auto;
      width:300px;
      };
</style>
	<title>����ϵͳҳ��</title>
	
	<link rel="stylesheet" href="css/style.css" type="text/css">
	
	
</head>
<body>
<center>	
	 <h2><strong>����ϵͳ��ҳ</strong></h2>
  <br> <br>
			<button type="button" class="btn btn-primary" onclick="window.location.href='deposit.jsp'"  style="width:140px; height:45px;" />�û����</button>&nbsp;&nbsp;&nbsp;&nbsp;
		   <button type="button" class="btn btn-primary" onclick="window.location.href='withdraw.jsp'" style="width:140px; height:45px;" />�û�ȡ��</button>
			   <br> <br> <br>
			<button type="button" class="btn btn-primary" onclick="window.location.href='trans.jsp'"  style="width:140px; height:45px;" />�û�ת��</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="button" class="btn btn-primary" onclick="window.location.href='query.jsp'" style="width:140px; height:45px;" />�û���ѯ</button>
				<br>	 <br> <br>	
			<button type="button" class="btn btn-primary" onclick="window.location.href='login.jsp'"  style="width:140px; height:45px;" />�˳���¼</button>&nbsp;&nbsp;&nbsp;&nbsp;
			<button type="button" class="btn btn-primary" onclick="window.location.href='loss.jsp'" style="width:140px; height:45px;" />�û���ʧ</button>
		
	</center>		
</body>
</html>