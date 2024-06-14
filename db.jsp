<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String name=request.getParameter("naam");
		String password=request.getParameter("pass");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		PreparedStatement p=cn.prepareStatement("select * from login where name=? and password=?");
		
		p.setString(1,name);
		p.setString(2,password);
		
		ResultSet rs=p.executeQuery();
		if(rs.next())
		{
			%>
			<jsp:forward page="index.html"></jsp:forward>
			<%
		}
		else
		{
			%>
			<jsp:include page="signup.jsp"></jsp:include>
			<%
		}
	
	%>
</body>
</html>