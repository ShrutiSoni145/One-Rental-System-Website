<%@page import="com.project.dao.UserDao"%>
<%@page import="com.project.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EDIT USER</title>
</head>
<body>
<%
	UserBean user = new UserBean();
	UserDao dao = new UserDao();
	String username = request.getParameter("username");
	//int id = Integer.parseInt(uid);
	user = dao.getUserByusername(username);
%>
<form method="GET" action='UserHandler' name="frmEditUser"> 
<input type="hidden" name="operation" value="edit" />

<table>
	<tr>
		<td>Name</td>
		<td><input type="text" name="username1" readonly="readonly" value="<%=user.getName()%>"></td>
	</tr>
	<tr>
		<td>Email-Id</td>
		<td><input type="text" name="email" value="<%=user.getEmail()%>"/></td>
	</tr>
	<tr>
		<td>Address</td>
		<td><input type="text" name="Address" value="<%=user.getAddress()%>"/></td>
	</tr>
	<tr>
		<td></td>
		<td>Mobile</td>
		<td><input type="text" name="mobile" value="<%=user.getMobile()%>"/></td>
	</tr>
	<tr>
		<td></td>
		
		<td><input type="submit" value="Update" /></td> 
	</tr>
</table>
</form>
</body>
</html>