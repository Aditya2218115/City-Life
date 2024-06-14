<%-- 
    Document   : hoteldb
    Created on : Apr 3, 2020, 3:22:37 PM
    Author     : shahnawaz khan
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           String fromm=request.getParameter("fromm");
           String too=request.getParameter("too");
           String adults=request.getParameter("adults");
           String children=request.getParameter("children");
           String rooms=request.getParameter("rooms");
           String room=request.getParameter("room");
           
           Class.forName("com.mysql.jdbc.Driver");
           Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/citylife","root","root");
           String s="insert into room values(?,?,?,?,?,?)";
           PreparedStatement p=cn.prepareStatement(s);
           p.setString(1,fromm);
           p.setString(2,too);
           p.setString(3,adults);
           p.setString(4,children);
           p.setString(5,rooms);
           p.setString(6,room);
           int i=p.executeUpdate();
           if(i>0)
           {
               response.sendRedirect("index.html");
           }
       %>
    </body>
</html>
