<%-- 
    Document   : NewBus
    Created on : Jun 18, 2019, 8:02:44 PM
    Author     : dell
--%>
<%@page import="java.sql.*" %>
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
                    <a class="nav-link active" href="NewBus.jsp">Bus</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Customer_1.jsp">Customer</a>
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
                       <a href="ShowBus.jsp"><h5 class="text-primary align-content-end">Show Buses Here</h5></a>
                   </div>
               <div class="col-lg-5 offset-3">             
                <h3 class="text-primary">Add New Bus</h3><br />
                <form method="POST" action="NewBusJ.jsp">
                    <div class="form-group">
                        <label for="inputBus">Bus Type</label>
                       <select name="inputType" class="form-control">
                            <option>--Select--</option>
                            <option>Luxury</option>
                           <option>Semi-Luxury</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="inputSeats">Total Seats</label>
                        <input class="form-control" type="text" name="inputSeats" placeholder="Enter Number of Seats" />
                    </div>                    

                       <button type="submit" class="btn btn-primary">Add Bus</button>
                       
               </form>
                   </div>
               </div>
                  
           </div>
           </div>        
    </body>
</html>
