<%@page import="com.project.bean.UserBean"%>
<%@page import="com.project.dao.UserDao"%>
<%@page import="java.util.List"%>
<%@page import="javax.jws.soap.SOAPBinding.Use"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%	UserDao dao = new UserDao();
List<UserBean> userList = dao.getAllUsers();

%>

<table border="1">
	<tr>
		<th>Name</th>
		<th>Email</th>
		<th>Address</th>
		<th>Mobile</th>
	</tr>
	<tr>
		<%
			for (UserBean user : userList) {
		%>
		<td><%=user.getName()%></td>
		<td><%=user.getEmail()%></td>
		<td><%=user.getAddress()%></td>
		<td><%=user.getMobile()%></td>

		<td><a
			href="UserHandler?operation=delete&username=<%=user.getName()%>">Block User</a></td>
	</tr>
	<%
		}
		//}
	%>
</table>
<p><a href="index.jsp">Go back</a></p>
<form action="LogoutController" method="post">
		<input type="submit" value="Logout">
	</form>



</body>
</html>