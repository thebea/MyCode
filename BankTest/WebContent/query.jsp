<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>My JSP 'userlist.jsp' starting page</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0"> 
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
<link rel="stylesheet" type="text/css" href="styles.css">
-->
<style type="text/css">
	th,td{width: 150px;border: 2px solid gray;text-align: center;}
	body{text-align: center;}
	a{text-decoration: none;}
	table {border-collapse: collapse;}
</style>
</head>
</head>

<body>
	<h2 align="center">用户信息</h2>
		<table align="center">
			<tr><td>卡号</td><td>密码</td><td>姓名</td><td>身份证</td><td>电话</td><td>住址</td><td>开户日期</td><td>余额</td><td>挂失</td></tr>
		</table>
		<table align="center">
		
	<c:forEach items="${listss}" var="user">
		<tr>
			<td class="hidden-480">${user.id}</td>
			<td class="hidden-480">${user.password }</td>
			<td class="hidden-480">${user.name }</td>
			<td class="hidden-480">${user.personId }</td>
			<td class="hidden-480">${user.phone }</td>
			<td class="hidden-480">${user.address }</td>
			<td class="hidden-480">${user.date }</td>
			<td class="hidden-480">${user.balance}</td>
			<td class="hidden-480">${user.loss }</td>
		</tr>
	</c:forEach>
</table>
	<br>
		<c:if test="${pageNos>1 }">
			<a href="ListUser?pageNos=1" >首页</a>
			<a href="ListUser?pageNos=${pageNos-1 }">上一页</a>
		</c:if>
		<c:if test="${pageNos <recordCount }">
			<a href="ListUser?pageNos=${pageNos+1 }">下一页</a>
			<a href="ListUser?pageNos=${recordCount}">末页</a>
		</c:if>
	<form action="ListUser">
		<h4 align="center">共${recordCount}页  
			<input type="text" value="${pageNos}" name="pageNos" size="1">页
			<input type="submit" value="到达">
		</h4>
	</form>
</body>
</html>
