<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="loginn.css">
    <title>Login Page</title>
    <style>
    
    </style>

  </head>
  <body>
   
    <div>
        <h2 align="center">Your Account Is Successfully Created Please Login...</h2>
      <form action="Loginservlet" method="post">
        <input class="input" type="text" placeholder="Enter Name" name="username" />
        <input class="input" type="password" placeholder="Enter password" name="password" /><br><br>
           <input type="hidden" name="operation" value="Login"/>
        <input  class="button" type="submit" value="Login" />
      </form>
     
      <br>
    </div>
  </body>
</html>

