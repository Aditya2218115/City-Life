<%-- 
    Document   : Customer
    Created on : Jun 18, 2019, 8:02:59 PM
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
                    <a class="nav-link active" href="Customer_1.jsp">Customer</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="BookBus.jsp">Booking</a>
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
                       <a href="ShowCustomer.jsp"><h5 class="text-primary align-content-end">Show Customer Here</h5></a>
                   </div>
               <div class="col-lg-5 offset-3">             
                <h3 class="text-primary">Add Customer</h3><br />
                   <form action="CustomerJ.jsp">
                    <div class="form-group">
                        <label for="inputName">Name</label>
                        <input class="form-control" type="text" name="name" placeholder="Enter Name" />
                    </div>
                     <div class="form-group">
                        <label for="inputName">Date Of Birth</label>
                        <input class="form-control" type="date" name="dob" placeholder="Enter Date Of Birth" />
                    </div>
                        <div class="form-group">
                        <label for="inputBus"> Gender</label>
                       <select name="gen" class="form-control">
                            <option>--Select--</option>
                            <option>Male</option>
                           <option>Female</option>
                        </select>
                    </div>
                        <div class="form-group">
                        <label for="inputName">Mobile</label>
                        <input class="form-control" type="text" name="mob" placeholder="Enter Mobile" />
                    </div>
                       
                        <div class="form-group">
                        <label for="inputName">Email</label>
                        <input class="form-control" type="email" name="email" placeholder="Enter Email" />
                    </div>                
                        <div class="form-group">
                        <label for="inputName">Address</label>
                        <input class="form-control" type="text" name="addr" placeholder="Enter Address" />
                    </div>
                    <button type="submit" class="btn btn-primary">Add Customer</button>
                </form>
                 </div>
                   </div>
           </div>
           </div>        
    </body>
</html>
