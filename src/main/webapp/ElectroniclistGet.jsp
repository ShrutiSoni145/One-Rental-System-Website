<%@page import="com.project.bean.ElectronicBean"%>
<%@page import="com.project.dao.RentalDao"%>
<%@page import="java.util.List"%>
<%@page import="javax.jws.soap.SOAPBinding.Use"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electronic Item List</title>
    <link rel="stylesheet" href="BikelistGet.css" />
</head>

<body>
<%	RentalDao dao = new RentalDao();
List<ElectronicBean> userList = dao.getElectronics();
%>
    <div class="header_fixed">
        <table>
            <thead>
                <tr>
                     <th>Images</th>
                    <th>Item Name</th>
                    <th>Brand</th>
                    <th>Address</th>
                    <th>Rent/Hr</th>
                    <th>Owner Name</th>
                    <th>Contact</th>
                    <th>For Booking</th>
                </tr>
            </thead>
            <tbody>
                <%
			for (ElectronicBean user : userList){
		        %>
                <tr>
                    <td><img src=https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDFX0VAKdlcGPShiv5qTSQBffv80blmhnI7DEK0Hb22XVzw1YKIrbkCAQnq2Diint8Mt4&usqp=CAU alt="Avatar" /></td>
                    <td><%=user.getItemName()%></td>
                      <td><%=user. getItemBrand()%></td>
                    <td><%=user. getItemAddress()%></td>
                   
                    <td><%=user. getItemRate()%></td>
                     <td><%=user. getItemOwner()%></td>
                      <td><%=user. getIOwnerContact()%></td>
                    <td><a
                        href="confrimation.jsp?operation=editform&username=<%=user.getItemName()%>">Click For Book</a></td>
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