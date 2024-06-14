<%-- 
    Document   : orderdb
    Created on : Mar 7, 2020, 11:30:57 AM
    Author     : shahnawaz khan
--%>

<%@page import="java.sql.*"%>
<%@page import="beans.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name=request.getParameter("name");
            String address=request.getParameter("room");
            String mobile=request.getParameter("mobile");
            
            Order r=new Order();
            r.setName(name);
            r.setRoom(address);
            r.setMobile(mobile);
            session.setAttribute("order", r);
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/rasoi","root","root");
            
            String s="insert into food values(?,?,?)";
            PreparedStatement p=cn.prepareStatement(s);
            p.setString(1,name);
            p.setString(2,address);
            p.setString(3,mobile);
            int i=p.executeUpdate();
            if(i>0)
            {
                response.sendRedirect("getdetails.jsp");
            }
        %>
    </body>
</html>
