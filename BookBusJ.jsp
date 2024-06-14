<%-- 
    Document   : BookBusJ
    Created on : Jun 19, 2019, 12:01:58 AM
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
                    <a class="nav-link" href="Customer_1.jsp">Customer</a>
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
                    <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
   
    try {
          
             String name=request.getParameter("name");
             String mob=request.getParameter("mob");
             String addr=request.getParameter("addr");
             String pass=request.getParameter("pass");
             String from=request.getParameter("froms");
             String to=request.getParameter("tod");
             String price=request.getParameter("price");
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/citylife","root","root");
             
             st = c1.createStatement();
             q="insert into book(c_name,mob,addr,pass,froms,tod,price) values('"+ name +"','"+ mob +"','"+ addr +"','"+ pass +"','"+ from +"','"+ to +"','"+ price +"')";
             
             st.executeUpdate(q);
             out.println("Add New Booking Details Successfully...");
                   
    }
    catch(Exception e)
    {
                    out.println(e);
                     out.println("<a href='Customer.jsp'>Try Again</a>");
    }        
            
   %>
           </div>
           </div>        
    </body>
</html>
