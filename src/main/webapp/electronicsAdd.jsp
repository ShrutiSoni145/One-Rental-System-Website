<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--===== CSS =====-->
        <link rel="stylesheet" href="formInputAnimation.css">

        <title>Insert Your Electronic Item Details</title>
    </head>
    <body>
        
        <div class="l-form">
           
            <form action="RentHandler" method="GET"><br><br>
               
                 <h1 class="form__title">Insert Your Electronic Item Details</h1>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="Oname" required>
                    <label for="" class="form__label">Owner Name</label>
                </div>

                <div class="form__div">
                    <input type="text" maxlength="10" class="form__input" placeholder=" " name="Ocontact" required>
                    <label for="" class="form__label">Owner Contact</label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="iname" required>
                    <label for="" class="form__label">Item Name</label>
                </div>

                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="brand" required>
                    <label for="" class="form__label">Brand Name</label>
                </div>


               
                <div class="form__div">
                    <input type="text" class="form__input" placeholder=" " name="iadd" required>
                    <label for="" class="form__label">Address</label>
                </div>

                <div class="form__div">
                    <input type="number" class="form__input" placeholder=" " name="irate" required>
                    <label for="" class="form__label">Rent / hour's</label>
                </div>

                

               
                <input type="hidden"  name="operation" class="form__button" value="EInsert">
                <!-- <input type="submit" class="form__button" value="Submit"> -->

                
                    <button class="form__button" value="Submit">Submit</button>
              </form>    
            </div>
          