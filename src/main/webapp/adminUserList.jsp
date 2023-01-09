<%@page import="com.project.bean.UserBean"%>
<%@page import="com.project.dao.UserDao"%>
<%@page import="java.util.List"%>
<%@page import="javax.jws.soap.SOAPBinding.Use"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User's List</title>
    <link rel="stylesheet" href="BikelistGet.css" />
</head>

<body>
<%	UserDao dao = new UserDao();
List<UserBean> userList = dao.getAllUsers();
%>
    <div class="header_fixed">
        <table>
            <thead>
                <tr>
                    <th>Profile</th>
                     <th>Name</th>
                    <th>Email</th>
                    <th>Address</th>
                    <th>Mobile No.</th>
                    <th>Authentication</th>
                </tr>
            </thead>
            <tbody>
               <%
			for (UserBean user : userList) {
		%>
                <tr>
                    <td><img src=https://www.ticketbud.com/wp-content/uploads/2019/04/motorbike-logo.png alt="Avatar" /></td>
                    <td><%=user.getName()%></td>
		            <td><%=user.getEmail()%></td>
		            <td><%=user.getAddress()%></td>
		            <td><%=user.getMobile()%></td>
		<td><a
			href="UserHandler?operation=delete&username=<%=user.getName()%>">Block User</a></td>
	    </tr>
	<%
		}
		
	%>
                  
            </table>
          
            
                </tr>
            </tbody>
        </table>
    </div>
</body>
</html>