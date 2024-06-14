<%-- 
    Document   : CustomerJ
    Created on : Jun 18, 2019, 11:05:50 PM
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
                  <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          
             String name=request.getParameter("name");
             String dob=request.getParameter("dob");
             String gen=request.getParameter("gen");
             String mob=request.getParameter("mob");
             String email=request.getParameter("email");
             String addr=request.getParameter("addr");
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/citylife","root","root");
             
             st = c1.createStatement();
             q="insert into cust(name,dob,gen,mob,email,addr) values('"+ name +"','"+ dob +"','"+ gen +"','"+ mob +"','"+ email +"','"+ addr +"')";
             
             st.executeUpdate(q);
             out.println("Add New Customer Details Successfully...");
                   
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("<a href='Customer.jsp'>Try Again</a>");
    }        
            
   %>
                 </div>
                   </div>
           </div>
           </div>        
    </body>
</html>
