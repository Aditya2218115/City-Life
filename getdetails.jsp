<%-- 
    Document   : getdetails
    Created on : Mar 12, 2020, 3:51:59 PM
    Author     : shahnawaz khan
--%>

<%@page import="beans.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="cyan">
        <%
            Order r=(Order)session.getAttribute("order");
            
            String nm=r.getName();
            String rm=r.getRoom();
            String mb=r.getMobile();
            
        %>
        
        <h1>Your Order Has Been Done!!!!!</h1><br>
        <h2>Name: <%=nm %><br></h2>
        <h2>Room: <%=rm %><br></h2>
        <h2>Mobi: <%=mb %><br></h2>
        <br>
        <br>
    </body>
    <a href="index.html">HOME PAGE</a>
</html>
