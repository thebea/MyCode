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
    <title>����ҳ��</title>  
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
     <h2><strong>����ϵͳע��</strong></h2>
  
  <label for="id">��&nbsp;&nbsp;�ţ�  </label>
     <input type="text" class="form-control" name="id" value=<%=sb%>><br>

  
    <label for="name">������</label>
    <input type="text" class="form-control" name="name">
    
     <label for="password">���룺</label>
    <input type="text" class="form-control" name="password"> <br>
    
    <label for="personId">���֤��</label>
    <input type="text" class="form-control" name="personId"> <br>
    
  <label for="phone">�绰��</label>
    <input type="text" class="form-control" name="phone"><br>
    
    <label for="adress">��&nbsp;&nbsp;ַ��</label>
	                <select name="address" class="form-control">  <br>
	                   <option value="">��ѡ���ַ</option> 
                       <option value="�彭����">�彭����</option>  
                       <option value="������">������</option>
                       <option value="������">������</option> 
                       <option value="������">������</option>
                       <option value="��ˮ��">��ˮ�� </option>
                       <option value="������">������</option>
                       <option value="�����">�����</option>
                       </select>  
	       
     <label for="date">���ڣ�</label>
    <input type="text" class="form-control" name="date" value=<%=date%>><br>
    
    <button type="submit" class="btn btn-primary">ע��</button>&nbsp;&nbsp;&nbsp;&nbsp;
    <button type="reset" class="btn btn-primary">����</button>

	
  </body>
</html>