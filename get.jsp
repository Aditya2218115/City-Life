<%-- 
    Document   : get
    Created on : Mar 6, 2020, 3:07:34 PM
    Author     : shahnawaz khan
--%>

<%@page import="beans.Roombook"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="cyan">
        <%
            Roombook r=(Roombook)session.getAttribute("roombook");
            String n=r.getName();
            String e=r.getEmail();
            String m=r.getMobile();
            String a=r.getAadhar();
            String en=r.getEntry();
            String ex=r.getExitout();
            String ro=r.getRoom();
            String t=r.getType();
            String p=r.getPrice();
        %>
        <fieldset>
            <legend><h1>GET DETAILS</h1></legend>
                <table>
                    
                <tr><td><h1>Name</h1></td><td><h1><%= n %></h1></td></tr></h1>
                <tr><td><h1>Email</h1></td><td><h1><%=e %></h1></td></tr>
                <tr><td><h1>Mobile</h1></td>><td><h1><%=m %></h1></td></tr>
                <tr><td><h1>Aadhar</h1></td>><td><h1><%=a %></h1></td></tr>
                <tr><td><h1>Entry</h1></td>><td><h1><%=en %></h1></td></tr>
                <tr><td><h1>Exit</h1></td>><td><h1><%=ex %></h1></td></tr>
                <tr><td><h1>Room</h1></td>><td><h1><%=ro %></h1></td></tr>
                <tr><td><h1>Type</h1></td>><td><h1><%=t %></h1></td></tr>
                <tr><td><h1>Price</h1></td>><td><h1><%=p %></h1></td></tr>
                    
                    
                </table>
            
        </fieldset>
                    <br>
   <br>
   <input type="submit" value="Print">&nbsp &nbsp<a href="index.html">HOME PAGE</a>
    </body>
</html>
