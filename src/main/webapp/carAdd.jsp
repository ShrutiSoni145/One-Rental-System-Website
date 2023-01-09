<!-- <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Your Car Details</title>
    <style>
   div{
       text-align: center;
   }
    </style>
</head>
<body>
<h1 align="center">Insert Your Car Details</h1>
<div><form action="itemAddSuccessfully.jsp" method="GET">
    <input type="text" placeholder="Owner NAME" name=ownername><br><br>
    <input type="text" placeholder="Contact" name=ownercontact><br><br>
    <input type="text" placeholder="Car NAME" name=carname><br><br>
    <input type="text" placeholder="Car Number" name=carmodel><br><br>
    <input type="number" placeholder="AVRAGE" name=caravg><br><br>
    <input type="number" placeholder="DATE OF RENT" name=cardate><br><br>
    <input type="text" placeholder="Address" name=caraddress><br><br>
    <input type="text" placeholder="Enter Rent/Day" name=carrate><br><br> 
     
     <input type="hidden" name="operation" value="CarInsert"/>
     <a href="itemAddSuccessfully.jsp">
        <button>Submit</button>
     </a>
     <br><a color="black" href="VehicalsForAdd.jsp">Go Back</a>
    </form><br>
</div>
</body>
</html>
 -->


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--===== CSS =====-->
        <link rel="stylesheet" href="formInputAnimation.css">

        <title>Insert Your Car Details</title>
    </head>
    <body>
        
        <div class="l-form">
           
            <form action="RentHandler" method="GET"><br><br>
               
                 <h1 class="form__title">Enter Your Car Details</h1>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="oname" required>
                    <label for="" class="form__label">Owner Name</label>
                </div>

                <div class="form__div">
                    <input type="text" maxlength="10" class="form__input" placeholder=" " name="ownercontact" required>
                    <label for="" class="form__label">Contact</label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="carname" required>
                    <label for="" class="form__label">Car Name</label>
                </div>


                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="carmodel" required>
                    <label for="" class="form__label">Car Model</label>
                </div>


                <div class="form__div">
                    <input type="number" class="form__input" placeholder=" " name="caravg" required>
                    <label for="" class="form__label">Average</label>
                </div>

                <div class="form__div">
                    <input type="number" class="form__input" placeholder=" " name="carnumber" required>
                    <label for="" class="form__label">Car number </label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="caraddress" required>
                    <label for="" class="form__label">Address</label>
                </div>

                <div class="form__div">
                    <input type="number" class="form__input" placeholder=" " name="carrate" required>
                    <label for="" class="form__label">Enter Rent/Day</label>
                </div>

               
                <input type="hidden"  name="operation" class="form__button" value="CarInsert">
                <!-- <input type="submit" class="form__button" value="Submit"> -->

                
                    <button class="form__button" value="Submit">Submit</button>
                 </form>
            </div>
           

       
    </body>
</html>