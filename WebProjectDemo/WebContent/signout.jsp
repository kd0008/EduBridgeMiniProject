<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signout</title>
</head>
<body>
<h1>signout </h1>
<%
        request.getSession(false).invalidate();  
            System.out.println("You are successfully logged out!"); 
            
                response.sendRedirect("index.jsp");
        %>
</body>
</html>
