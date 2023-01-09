<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Verification</title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <!-- font awesome cdn link  -->
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <link rel="stylesheet" href="Homepage.css">
     <script src="HomepageScript.js"></script>
     <script>
        function fun(){
            swal("Good job!", "Item Added Successfully", "success");
        }
       
    </script>
  </head>
  <style>
.catbutton{
color:currentColor;
margin: 20px;
padding: 20px;
border-radius: 25px;
border: 1px solid black;
color: black;
}
  </style>
  <body>
   

    <!-- <div class="catbutton">
      <button type="submit"><a href="CatagoriesForAdd.jsp">Add For Rent</a></button><br />
      <button type="submit"><a href="CatagoriesTakeOnRent.html">Take On Rent</a></button><br />
    </div> -->
    <section class="menu" id="menu">

        <h1 class="heading">Please Confirm All Details & Click On<span> Add Item</span> </h1>
    
        <div class="box-container">
    
            <div class="box">
                <img src="images/menu-1.png" alt="">
                <h4>Play by the rules, but be ferocious by Phil Knight.</h4>
                <div class="price">If you want to add item's <span></span></div>
                <button onclick="fun();" class="btn">Add Item</a></button>
                <a href="CatagoriesForAdd.jsp" class="btn">Go Home</a>
            </div>
        </div>
    
    </section>
    
    <!-- menu section ends -->
    
  </body>
</html>

