<%@page import="beans.Order"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>  Page</title>
    </head>
    <body>
        
        <%
            String name=request.getParameter("name");
            String email=request.getParameter("email");
            
            String mobile=request.getParameter("mob");
            String address=request.getParameter("address");
            
            Order r=new Order();
            r.setName(name);
            r.setEmail(email);
            r.setMob(mobile);
            r.setAddress(address);
            
            session.setAttribute("order",r);
            
            
            String url="jdbc:mysql://localhost:3306/indiatrip";
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection(url, "root","root");
            PreparedStatement pst=con.prepareStatement("insert into customer values(?,?,?,?);");
            pst.setString(1, name);
            pst.setString(2, email);
            
            pst.setString(3, mobile);
            pst.setString(4, address);
            int i=pst.executeUpdate();
            con.close();
            
            if(i>0)
            {
                %>
        
                <jsp:forward page="menu2.jsp"/>
        
                <%
            }
        %>
        
        <br><br><br>Expression Tags<br><br><br>
        Name: <%=name%><br>
        Email: <%=email%><br>
       
        Mobile:<%=mobile %><br>
        Address:<%=address %>
        
        
        
    </body>
</html>
