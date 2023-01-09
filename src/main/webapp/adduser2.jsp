<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Users</title>
    <style>
   div{
       text-align: center;
   }
    </style>
</head>
<body>
<h1 align="center">Add User</h1>
<div><form action="LoginHandlar" method="GET">
    <input type="text" placeholder="Enter Name" name=username><br><br>
    <input type="email" placeholder="Enter Email-Id" name=email><br><br>
    <input type="password" placeholder="Enter password" name=password><br><br>
    <input type="text" placeholder="City" name=city><br><br>
    <input type="tel" maxlength="10" placeholder="Enter Mobile" name=mobile><br><br>
      <input type="hidden" name="operation" value="insert"/>
    
    <input type="submit" value="Login" /></form><br>
    <form action="LogoutController" method="post">
		<input type="submit" value="Logout">
	</form>
</div>
</body>
</html>