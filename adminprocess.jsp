


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Free Pharmaceutical Company Template- Download HTML Website Templates</title>
<body>
    <%
        String username=request.getParameter("username");
		String password=request.getParameter("password");
	   
		
		
		if(username=="admin" && password=="admin"){
			response.sendRedirect("customer.jsp");
           			
		}
		else{
			
			%>
			<jsp:forward page="admin.jsp"></jsp:forward> 
			<% 
			}
		 
    %>
</body>
</html>
