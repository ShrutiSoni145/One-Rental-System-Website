<%@page import="com.project.bean.BikeBean"%>
<%@page import="com.project.dao.RentalDao"%>
<%@page import="java.util.List"%>
<%@page import="javax.jws.soap.SOAPBinding.Use"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bike List</title>
    <link rel="stylesheet" href="BikelistGet.css" />
</head>

<body>
<%	RentalDao dao = new RentalDao();
List<BikeBean> userList = dao.getAllBikes();
%>
    <div class="header_fixed">
        <table>
            <thead>
                <tr>
                     <th>Images</th>
                    <th>Bike Name</th>
                    <th>Model</th>
                    <th>Average</th>
                    <th>Number</th>
                    <th>Address</th>
                    <th>Rent/Hr</th>
                    <th>Owner Name</th>
                    <th>Contact</th>
                    <th>For Booking</th>
                </tr>
            </thead>
            <tbody>
                <%
			for (BikeBean user : userList){
		        %>
                <tr>
                    <td><img src=https://www.ticketbud.com/wp-content/uploads/2019/04/motorbike-logo.png alt="Avatar" /></td>
                    <td><%=user.getBikeName()%></td>
                    <td><%=user. getBikeModel()%></td>
                    <td><%=user. getBikeAverage()%></td>
                    <td><%=user. getBikeNumber()%></td>
                    <td><%=user. getBikeAddress()%></td>
                    <td><%=user. getBikeRent()%></td>
                     <td><%=user. getOwnerName()%></td>
                      <td><%=user. getOwnerContact()%></td>
                    <td><a
                        href="confrimation.jsp?operation=editform&username=<%=user.getBikeName()%>">Click For Book</a></td>
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