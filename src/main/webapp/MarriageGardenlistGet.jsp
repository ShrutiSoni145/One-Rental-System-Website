<%@page import="com.project.bean.MarriageBean"%>
<%@page import="com.project.dao.RentalDao"%>
<%@page import="java.util.List"%>
<%@page import="javax.jws.soap.SOAPBinding.Use"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mariage Garden List</title>
    <link rel="stylesheet" href="BikelistGet.css" />
</head>

<body>
<%	RentalDao dao = new RentalDao();
List<MarriageBean> userList = dao.getMarriageGarden();
%>
    <div class="header_fixed">
        <table>
            <thead>
                <tr>
                     <th>Images</th>
                    <th>Marriage Garden Name</th>
                    <th>Its Capacity</th>
                    <th>Date</th>
                    <th>Dimentions</th>
                    <th>Address</th>
                     <th>Additional Facalities</th>
                    <th>Rent/Day</th>
                    <th>Owner Name</th>
                    <th>Contact</th>
                    <th>For Booking</th>
                </tr>
            </thead>
            <tbody>
                <%
			for (MarriageBean user : userList){
		        %>
                <tr>
                    <td><img src=https://www.ticketbud.com/wp-content/uploads/2019/04/motorbike-logo.png alt="Avatar" /></td>
                    <td><%=user.getGardenName()%></td>
                    <td><%=user. getGardenCapacity()%></td>
                    <td><%=user. getGardenDate()%></td>
                    <td><%=user. getGardenSize()%></td>
                    <td><%=user. getGardenAddress()%></td>
                    <td><%=user. getFacalities()%></td>
                      <td><%=user. getGardenRate()%></td>
                     <td><%=user. getGardenOwner()%></td>
                      <td><%=user. getGOwnerContact()%></td>
                    <td><a
                        href="confrimation.jsp?operation=editform&username=<%=user.getGardenName()%>">Click For Book</a></td>
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