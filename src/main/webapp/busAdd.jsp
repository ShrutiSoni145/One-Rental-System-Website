<!DOCTYPE html>
 <html lang="en">
     <head>
         <meta charset="UTF-8">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
 
         <!--===== CSS =====-->
         <link rel="stylesheet" href="formInputAnimation.css">
 
         <title>Insert Your Bus Details</title>
     </head>
     <body>
         
         <div class="l-form">
            
             <form action="itemAddSuccessfully.jsp" method="GET"><br><br>
                
                  <h1 class="form__title">Enter Your Bus Details</h1>
 
                 <div class="form__div">
                     <input type="text" class="form__input" placeholder=" " name="ownername">
                     <label for="" class="form__label">Owner Name</label>
                 </div>
 
                 <div class="form__div">
                     <input type="text" class="form__input" placeholder=" " name="ownercontact">
                     <label for="" class="form__label">Contact</label>
                 </div>
 
                 <div class="form__div">
                     <input type="text" class="form__input" placeholder=" " name="busnumber">
                     <label for="" class="form__label">Bus Number</label>
                 </div>
 
 
                 <div class="form__div">
                     <input type="text" class="form__input" placeholder=" " name="busmodel">
                     <label for="" class="form__label">Model</label>
                 </div>
 
 
                 <div class="form__div">
                     <input type="number" class="form__input" placeholder=" " name="busavg">
                     <label for="" class="form__label">Average</label>
                 </div>
 
                 <div class="form__div">
                     <input type="number" class="form__input" placeholder=" " name="busdate">
                     <label for="" class="form__label">Date of Rent </label>
                 </div>
 
                 <div class="form__div">
                     <input type="text" class="form__input" placeholder=" " name="busaddress">
                     <label for="" class="form__label">Address</label>
                 </div>
 
                 <div class="form__div">
                     <input type="text" class="form__input" placeholder=" " name="busrent">
                     <label for="" class="form__label">Enter Rent/Day</label>
                 </div>
 
                
                 <input type="hidden"  name="operation" class="form__button" value="BusInsert">
                 <!-- <input type="submit" class="form__button" value="Submit"> -->
 
                 
                     <button class="form__button" value="Submit">Submit</button>
                 
             </div>
             </form>
 
        
     </body>
 </html>