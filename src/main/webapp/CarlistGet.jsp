<%@page import="com.project.bean.CarBean"%>
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
List<CarBean> userList = dao.getAllCar();
%>
    <div class="header_fixed">
        <table>
            <thead>
                <tr>
                     <th>Images</th>
                    <th>Car Name</th>
                    <th>Model</th>
                    <th>Average</th>
                    <th>Number</th>
                    <th>Address</th>
                    <th>Rent/Day</th>
                    <th>Owner Name</th>
                    <th>Contact</th>
                    <th>For Booking</th>
                </tr>
            </thead>
            <tbody>
                <%
			for (CarBean user : userList){
		        %>
                <tr>
                    <td><img src=https://media.istockphoto.com/vectors/car-icon-symbol-simple-design-vector-id1263867224?k=20&m=1263867224&s=170667a&w=0&h=wjj0reocorUjrnIFDdumHXW4j70Pln4ba83JQg6-g9I= alt="Avatar" /></td>
                    <td><%=user.getCarName()%></td>
                    <td><%=user.getCarModel()%></td>
                    <td><%=user.getCarAverage()%></td>
                    <td><%=user. getCarNumber()%></td>
                    <td><%=user. getCarAddress()%></td>
                    <td><%=user. getCarRate()%></td>
                     <td><%=user. getCarOwner()%></td>
                      <td><%=user. getCOwnerContact()%></td>
                    <td><a
                        href="confrimation.jsp?operation=editform&username=<%=user.getCarName()%>">Click For Book</a></td>
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