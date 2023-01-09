<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="logout.css">
<title></title>
</head>
<body>

  <div>
    <h2>You Have Logout Successfully . . .</h2>
      <form action="Loginservlet" method="post">
        <input class="input" type="text" placeholder="Enter Name" name="username" required/>
        <input class="input" type="text" placeholder="Enter password" name="password" required /><br><br>
           <input type="hidden" name="operation" value="Login"/>
        <input class="button" type="submit" value="Login" />
      </form>
     
      <br>
    </div>
</body>
</html>
