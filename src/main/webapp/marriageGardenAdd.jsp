<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--===== CSS =====-->
        <link rel="stylesheet" href="formInputAnimation.css">

        <title>Catagory:Wedding</title>
    </head>
    <body>
        
        <div class="l-form">
           
            <form action="RentHandler" method="GET"><br><br>
               
                 <h1 class="form__title">Insert Your marriage Garden Details</h1>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="ownername" required>
                    <label for="" class="form__label">Owner Name</label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="ownercontact" required>
                    <label for="" class="form__label">Contact</label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="gname" required>
                    <label for="" class="form__label">Garden name </label>
                </div>


                <div class="form__div">
                    <input type="number" class="form__input" placeholder=" " name="capacity" required>
                    <label for="" class="form__label">Garden Capacity</label>
                </div>


                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="date" required>
                    <label for="" class="form__label">Date</label>
                </div>
                
                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="address" required>
                    <label for="" class="form__label">Garden Address</label>
                </div>


                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="size" required>
                    <label for="" class="form__label">Garden size</label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="fac" required>
                    <label for="" class="form__label">Additional Facelities</label>
                </div>

                <div class="form__div">
                    <input type="number" class="form__input" placeholder=" " name="rate" required>
                    <label for="" class="form__label">Enter Rent/Day</label>
                </div>

               
                <input type="hidden"  name="operation" class="form__button" value="GardenInsert">
                <!-- <input type="submit" class="form__button" value="Submit"> -->

                
                    <button class="form__button" value="Submit">Submit</button>
                  </form>
            </div>
          