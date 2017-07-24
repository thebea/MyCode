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
    
    <title>My JSP 'transCheck.jsp' starting page</title>
    
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

      String name1 = (String)session.getAttribute("name");
      User.setName(name1);
	  String balance_s = (String)session.getAttribute("balance");
	  double balance1=Double.parseDouble(balance_s);
       
      String money = request.getParameter("money");
      double money1=Double.parseDouble(money);
     
      if(money1<balance1){
           balance1=balance1-money1;
           User.setBalance(balance1);
           User.isModify();
             
           
         String name2=request.getParameter("name");
         User.setName(name2);
         ResultSet rs = User.isSelect(); 
         double balance2=0; 
          while(rs.next()){
              balance2=rs.getDouble("balance") ;
     	   }
	        balance2=balance2+money1;  
            User.setBalance(balance2);
            User.isModify();
	     
     %>
          <h2 align="center"> 转账成功</h2>
          <center>
              <a href="index.jsp" target="_parent">
    	           <b>返回主页面</b><br>
    	  </center>
     <%    
	    } else {
     %>
         <h2 align="center">转账超额</h2>
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
    
    String name2=request.getParameter("name");
    
        try {  
                String LINE_SEPATATOF = System.getProperty("line.separator");
                 
                StringBuffer pathname = new StringBuffer("D:\\BankFile"); 
                pathname.append("\\");
                pathname.append(name1);
                pathname.append(".txt");
                String pathname_s=pathname.toString();

                File writename = new File(pathname_s); 
                writename.createNewFile();   
                BufferedWriter bw= new BufferedWriter(new FileWriter(writename,true)); 
               
                bw.write("["+name1+"] 于 "+date+" 向  ["+name2+"] 转账 "+money1+" 元 "+LINE_SEPATATOF); 
                
                bw.flush();  
                bw.close();  
            } catch (Exception e) {  
                e.printStackTrace();  }
    %> 
       
  </body>
</html>
