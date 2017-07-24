<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
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
    
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
    
    <meta name="viewport" charset="gb2312"  content="width=device-width, initial-scale=1.0">
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
     StringBuilder str = new StringBuilder();
	Random random = new Random();
	
	for (int i = 0; i < 4; i++) {
		str.append(random.nextInt(10));
	}
	StringBuffer sb = new StringBuffer("1000").append(str);
	
	java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd ");
	java.util.Date currentTime = new java.util.Date();
	String date = simpleDateFormat.format(currentTime).toString();  
	%>


	<form action="registerCheck.jsp" method="post" role="form" id="main">
    <div class="form-group">
     <h2><strong>银行系统注册</strong></h2>
  
  <label for="id">卡&nbsp;&nbsp;号：  </label>
     <input type="text" class="form-control" name="id" value=<%=sb%>><br>

  
    <label for="name">姓名：</label>
    <input type="text" class="form-control" name="name">
    
     <label for="password">密码：</label>
    <input type="text" class="form-control" name="password"> <br>
    
    <label for="personId">身份证：</label>
    <input type="text" class="form-control" name="personId"> <br>
    
  <label for="phone">电话：</label>
    <input type="text" class="form-control" name="phone"><br>
    
    <label for="adress">地&nbsp;&nbsp;址：</label>
	                <select name="address" class="form-control">  <br>
	                   <option value="">请选择地址</option> 
                       <option value="清江浦区">清江浦区</option>  
                       <option value="淮阴区">淮阴区</option>
                       <option value="淮安区">淮安区</option> 
                       <option value="洪泽区">洪泽区</option>
                       <option value="涟水县">涟水县 </option>
                       <option value="盱眙县">盱眙县</option>
                       <option value="金湖县">金湖县</option>
                       </select>  
	       
     <label for="date">日期：</label>
    <input type="text" class="form-control" name="date" value=<%=date%>><br>
    
    <button type="submit" class="btn btn-primary">注册</button>&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="reset" class="btn btn-primary">重置</button>

	
  </body>
</html>