<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="loginn.css">
    <title>Admin Login Page</title>
    <style>
    
    </style>
  </head>
  <body>
   
    <div>
        <h1 align="center">Admin Login...</h1>
      <form action="AdminLoginServlet" method="post">
        <input class="input" type="text" placeholder="Enter Name" name="username" />
        <input class="input" type="password" placeholder="Enter password" name="password" /><br><br>
           <input type="hidden" name="operation" value="Login"/>
        <input  class="button" type="submit" value="Login" />
      </form>
     
      <br>
    </div>
  </body>
</html>