<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<jsp:useBean class="bank.User" id="User" scope="page" />
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
   <%	
     request.setCharacterEncoding("GBK");
     
     String name = (String)session.getAttribute("name");
     User.setName(name);
	 String balance_s = (String)session.getAttribute("balance");
	  double balance=Double.parseDouble(balance_s);
   
      String money = request.getParameter("money");
      double money1=Double.parseDouble(money);
      
      double balance1=balance-money1;
      User.setBalance(balance1);
     
     if(money1<balance){
         User.isModify();
     %>
          <h2 align="center"> 取款成功</h2>
          <center>
              <a href="index.jsp" target="_parent">
    	           <b>返回主页面</b><br>
    	  </center>
     <%    
	    } else {
     %>
         <h2 align="center">取款已超额</h2>
        <center>
              <a href="index.jsp" target="_parent">
    	           <b>返回主页面</b><br>
    	  </center>
     <%
        }
       %>
    <%   
    
    java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	java.util.Date currentTime = new java.util.Date();
	String date = simpleDateFormat.format(currentTime).toString();  
    
    
    
        try {  
                String LINE_SEPATATOF = System.getProperty("line.separator");
                 
                StringBuffer pathname = new StringBuffer("D:\\BankFile"); 
                pathname.append("\\");
                pathname.append(name);
                pathname.append(".txt");
                String pathname_s=pathname.toString();

                /* 写入Txt文件 */  
                File writename = new File(pathname_s); 
                writename.createNewFile(); // 创建新文件  
                BufferedWriter bw= new BufferedWriter(new FileWriter(writename,true)); 
               
                bw.write("["+name+"] 于 "+date+" 取款  "+money1+" 元 "+LINE_SEPATATOF); 
                
                bw.flush();  
                bw.close();  
            } catch (Exception e) {  
                e.printStackTrace();  }
    %> 
    
  </body>
</html>
