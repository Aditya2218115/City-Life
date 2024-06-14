<%-- 
    Document   : check
    Created on : Feb 2, 2018, 3:10:52 AM
    Author     : admin pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,pkg.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rasoi/title>
    </head>
    <body>
        <%
        MyCon x=new MyCon();
        Connection c=x.tcon();
        String cname;
        cname=request.getParameter("cname");
        int cid=Integer.parseInt(request.getParameter("cid"));
        PreparedStatement pst=c.prepareStatement("update category set cname=? where cid=?");
        pst.setString(1,cname);
        pst.setInt(2,cid);
        int y=pst.executeUpdate();
        if(y>0){
            
           
        response.sendRedirect("category.jsp?msg=Category Updated");
        }
        else
        {
        response.sendRedirect("category.jsp?msg=Category Not Updated");
        }
        
        
        
        %>
    </body>
</html>
