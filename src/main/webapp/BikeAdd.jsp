<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--===== CSS =====-->
        <link rel="stylesheet" href="formInputAnimation.css">

        <title>Insert Your Bike Details</title>
    </head>
    <body>
        
        <div class="l-form">
           
            <form action="RentHandler" method="GET"><br><br>
               
                 <h1 class="form__title">Enter Your Bike Details</h1>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="ownername" required>
                    <label for="" class="form__label">Owner Name</label>
                </div>

                <div class="form__div">
                    <input type="text" maxlength="10" class="form__input" placeholder=" " name="ownercontact" required>
                    <label for="" class="form__label">Contact</label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="bikename" required>
                    <label for="" class="form__label">Bike Name</label>
                </div>


                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="bikemodel" required>
                    <label for="" class="form__label">Bike Model</label>
                </div>


                <div class="form__div">
                    <input type="number" class="form__input" placeholder=" " name="bikeavg" required>
                    <label for="" class="form__label">Average</label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="bikenumber" required>
                    <label for="" class="form__label">Bike number</label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="bikeaddress" required>
                    <label for="" class="form__label">Address</label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="bikerate" required>
                    <label for="" class="form__label">Enter Rent/hr</label>
                </div>

               
                <input type="hidden"  name="operation" class="form__button" value="BikeInsert" required>
                <input type="submit" class="form__button" value="Submit">

            </div>
            </form>

       
    </body>
</html>