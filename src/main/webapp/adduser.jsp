<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="adduser1.css">
    <title>First Page</title>
    <style>
   div{
       text-align: center;
   }
    </style>
</head>
<body>
 
<div>
   
    <h1 align="center">Create Your Account</h1>
    
    
    <form action="LoginHandlar" method="GET">
    <input class="input" type="text" placeholder="Enter Name" name=username required><br><br>
    <input class="input" type="email" placeholder="Enter Email-Id" name=email required><br><br>
    <input class="input" type="password" placeholder="Enter password" name=password required><br><br>
    <input class="input" type="text" placeholder="Address" name=address required><br><br>
     <input type="tel" maxlength="10"   class="input" placeholder="Enter Mobile" name=mobile required><br><br>
      <input type="hidden" name="operation" value="insert"/>
    
    <input class="button" type="submit" value="Login" /></form><br>
   
</div>
</body>
</html>