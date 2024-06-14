<%-- 
    Document   : BookBus
    Created on : Jun 18, 2019, 8:02:36 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bus Reservation System</title>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    </head>
    <body>
        <div class="container">
       <div class="row">
           <div class="col-lg-11 offset-1 jumbotron ">
               <h1 class="text-primary align-content-center">Bus Reservation System</h1>
           </div>
       </div>       
       <div class="row">
           <div class="col-lg-11 offset-1">                    
              <ul class="nav nav-pills nav-fill">                  
               <li class="nav-item">
                    <a class="nav-link" href="Home.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="NewBus.jsp">Bus</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Customer.jsp">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="BookBus.jsp">Booking</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Contact.jsp">Contact</a>
                </li>
            </ul>                       
               </div>
           </div>
           <div class="row">
               <div class="col-lg-11 offset-1 jumbotron">
                   <div>
                       <a href="ShowBooking.jsp"><h5 class="text-primary align-content-end">Show Booking Here</h5></a>
                   </div>
               <div class="col-lg-5 offset-3">             
                <h3 class="text-primary">Booking Bus</h3><br />
                   <form action="BookBusJ.jsp">
                    <div class="form-group">
                        <label for="inputName">Customer Name</label>
                        <input class="form-control" type="text" name="name" placeholder="Enter Name" />
                    </div>
                     <div class="form-group">
                        <label for="inputName">Mobile</label>
                        <input class="form-control" type="text" name="mob" placeholder="Enter Mobile" />
                    </div>
                        
                        <div class="form-group">
                        <label for="inputName">Address</label>
                        <input class="form-control" type="text" name="addr" placeholder="Enter Address" />
                    </div>
                       
                        <div class="form-group">
                        <label for="inputName">passenger</label>
                        <input class="form-control" type="text" name="pass" placeholder="Enter Total Passanger" />
                    </div>                
                        <div class="form-group">
                        <label for="inputName">From</label>
                        <select name="froms" id="city" onchange="getCity();">
             <option value="" selected="selected">-Select-</option>
			 <option> --Andhra Pradesh-- </option>
			 <option> Anantapur  </option>
			 <option> Chitoor  </option>
			 <option> Cuddapah  </option>
			 <option> Guntur  </option>
			 <option> Hyderabad </option>
			 <option> Kakinada </option>
			 <option> Kurnool  </option>
			 <option> Nellore  </option>
			 <option>Nizamabad </option>
			 <option> Puttaparthi  </option>
			 <option> Rajahmundry  </option>
			 <option> Tirupati  </option>
			 <option> Vijayawada  </option>
			 <option> Visakhapatnam  </option>
			 <option> Warangal  </option>
			 <option>______________</option>
			 <option> --Arunachal Pradesh-- </option>
			 <option> Bomdila </option>
			 <option> Malinithan </option>
			 <option> Tawang </option>
			 <option> Ziro </option>
			 <option> Basar </option>
			 <option> Deomali </option>
			 <option> Pasighat </option>
			 <option>______________</option>
			 <option>-- Assam-- </option>
			 <option> Mangaldoi </option>
			 <option> Tezpur </option>
			 <option> Bongaigaon </option>
			 <option> Dhekiajuli </option>
			 <option> Jonai Bazar </option>
			 <option> Guwahati </option>
			 <option> Kerala </option>
			 <option>-- Bihar-- </option>
			 <option> --Chhattisgarh-- </option>
			 <option> Chandigarh  </option>
			 <option> Delhi </option>
			 <option>-- Goa --</option>
			 <option>-- Gujarat -- </option>
			 <option>-- Haryana --</option>
			 <option> Himachal Pradesh </option>
			 <option> Jammu and Kashmir </option>
			 <option> Jharkhand </option>
			 <option> Karnataka </option>
			 <option> Kerala </option>
			 <option> Lakshadweep  </option>
			 <option> Madhya Pradesh </option>
			 <option> Maharashtra </option>
			 <option> Manipur </option>
			 <option> Meghalaya</option>
			 <option> Mizoram </option>
			 <option> Nagaland </option>
			 <option> Orissa </option>
			 <option> Punjab </option>
			 <option> Puducherry  </option>
			 <option> Rajasthan</option>
			 <option> Sikkim </option>
			 <option> Tamil Nadu</option>
			 <option> Tripura </option>
			 <option> - - - Uttar Pradesh - - -  </option>
			 <option> Amroha </option>
			 <option> Varanasi </option>
			 <option> Mathura </option>
			 <option> Gajraula </option>
			 <option> Tripura </option>
			 <option> Tripura </option>
			 <option> Tripura </option>
			 <option> Tripura </option>
			 <option> Tripura </option>
			 <option> Uttarakhand </option>
			 <option> West Bengal </option>
           </select>
                        
                    </div>
                       <div class="form-group">
                        <label for="inputName">To</label>
                        <select name="tod" id="city" onchange="getCity();">
             <option value="" selected="selected">-Select-</option>
			 <option> --Andhra Pradesh-- </option>
			 <option> Anantapur  </option>
			 <option> Chitoor  </option>
			 <option> Cuddapah  </option>
			 <option> Guntur  </option>
			 <option> Hyderabad </option>
			 <option> Kakinada </option>
			 <option> Kurnool  </option>
			 <option> Nellore  </option>
			 <option>Nizamabad </option>
			 <option> Puttaparthi  </option>
			 <option> Rajahmundry  </option>
			 <option> Tirupati  </option>
			 <option> Vijayawada  </option>
			 <option> Visakhapatnam  </option>
			 <option> Warangal  </option>
			 <option>______________</option>
			 <option> --Arunachal Pradesh-- </option>
			 <option> Bomdila </option>
			 <option> Malinithan </option>
			 <option> Tawang </option>
			 <option> Ziro </option>
			 <option> Basar </option>
			 <option> Deomali </option>
			 <option> Pasighat </option>
			 <option>______________</option>
			 <option>-- Assam-- </option>
			 <option> Mangaldoi </option>
			 <option> Tezpur </option>
			 <option> Bongaigaon </option>
			 <option> Dhekiajuli </option>
			 <option> Jonai Bazar </option>
			 <option> Guwahati </option>
			 <option> Kerala </option>
			 <option>-- Bihar-- </option>
			 <option> --Chhattisgarh-- </option>
			 <option> Chandigarh  </option>
			 <option> Delhi </option>
			 <option>-- Goa --</option>
			 <option>-- Gujarat -- </option>
			 <option>-- Haryana --</option>
			 <option> Himachal Pradesh </option>
			 <option> Jammu and Kashmir </option>
			 <option> Jharkhand </option>
			 <option> Karnataka </option>
			 <option> Kerala </option>
			 <option> Lakshadweep  </option>
			 <option> Madhya Pradesh </option>
			 <option> Maharashtra </option>
			 <option> Manipur </option>
			 <option> Meghalaya</option>
			 <option> Mizoram </option>
			 <option> Nagaland </option>
			 <option> Orissa </option>
			 <option> Punjab </option>
			 <option> Puducherry  </option>
			 <option> Rajasthan</option>
			 <option> Sikkim </option>
			 <option> Tamil Nadu</option>
			 <option> Tripura </option>
			 <option> - - - Uttar Pradesh - - -  </option>
			 <option> Amroha </option>
			 <option> Varanasi </option>
			 <option> Mathura </option>
			 <option> Gajraula </option>
			 <option> Tripura </option>
			 <option> Tripura </option>
			 <option> Tripura </option>
			 <option> Tripura </option>
			 <option> Tripura </option>
			 <option> Uttarakhand </option>
			 <option> West Bengal </option>
           </select>
                    </div>
                       <div class="form-group">
                        <label for="inputName">Price</label>
                        <input class="form-control" type="text" name="price" placeholder="Enter Price" />
                    </div>
                    <button type="submit" class="btn btn-primary">Book Bus</button>
                </form>
                 </div>
                   </div>
           </div>
           </div>        
    </body>
</html>
