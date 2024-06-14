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
		String email=request.getParameter("email");
		String course=request.getParameter("course");
		String address=request.getParameter("address");
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		
		String s="insert into login values(?,?,?,?,?)";
		PreparedStatement p=cn.prepareStatement(s);
		
		p.setString(1,name);
		p.setString(2,password);
		p.setString(3,email);
		p.setString(4,course);
		p.setString(5,address);
		
		int i=p.executeUpdate();
		if(i>0)
		{
			%>
			<jsp:forward page="login.jsp"></jsp:forward>
			<%
		}
		
	
	%>
</body>
</html>