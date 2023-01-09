<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--===== CSS =====-->
        <link rel="stylesheet" href="formInputAnimation.css">

        <title>Insert Your Truck Details</title>
    </head>
    <body>
        
        <div class="l-form">
           
            <form action="itemAddSuccessfully.jsp" method="GET"><br><br>
               
                 <h1 class="form__title">Enter Your Truck Details</h1>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="ownername">
                    <label for="" class="form__label">Owner Name</label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="ownercontact">
                    <label for="" class="form__label">Contact</label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="trucknumber">
                    <label for="" class="form__label">Truck Number</label>
                </div>


                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="truckmodel">
                    <label for="" class="form__label">Model</label>
                </div>


                <div class="form__div">
                    <input type="number" class="form__input" placeholder=" " name="truckavg">
                    <label for="" class="form__label">Average</label>
                </div>

                <div class="form__div">
                    <input type="number" class="form__input" placeholder=" " name="truckdate">
                    <label for="" class="form__label">Date of Rent </label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="truckaddress">
                    <label for="" class="form__label">Address</label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="truckrent">
                    <label for="" class="form__label">Enter Rent/Day</label>
                </div>

               
                <input type="hidden"  name="operation" class="form__button" value="TruckInsert">
                <!-- <input type="submit" class="form__button" value="Submit"> -->

                
                    <button class="form__button" value="Submit">Submit</button>
                
            </div>
            </form>