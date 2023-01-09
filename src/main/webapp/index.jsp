<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="indexx.css">
    <title>First Page</title>
  </head>
  <body>
  
    <div>
      <h1 align="center">Lo<span>g</span>in</h1>
      <form action="Loginservlet" method="post">
        <input class="input" type="text" placeholder="Enter Name" name="username" />
        <input class="input" type="password" placeholder="Enter password" name="password" />
        <h6>Forgot password</h6>
           <input type="hidden" name="operation" value="Login"/><br>
        <input class="button" type="submit" value="Login" />
       
      </form>
      <form action="adduser.jsp" method="POST" >
        <input class="button" type="submit" value="SignUp" />
        </form>
         <form action="adminlogin.jsp" method="POST" >
        <input class="button" type="submit" value="Admin Login" />
      </form>
    </div>
  </body>
</html>
