<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
/* Navbar container */
.navbar {
	overflow: hidden;
	background-color: #333;
	
}

/* Links inside the navbar */
.navbar a {
	float: left;
	font-size: 18px;
	color: white;
	margin: 25px;
	margin-left: 50px;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-weight:bold;
}

/* The dropdown container */
.dropdown {
	float: left;
	overflow: hidden;
	margin: 25px;
	margin-right: 50px;
	margin-left: 50px;
}

/* Dropdown button */
.dropdown .dropbtn {
	font-size: 16px;
	font-weight:bold;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	/* Important for vertical align on mobile phones */
	margin: 0; /* Important for vertical align on mobile phones */
}

/* Add a red background color to navbar links on hover */
.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: #ddd;
	color:black;
}

/* Dropdown content (hidden by default) */
.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

/* Add a grey background color to dropdown links on hover */
.dropdown-content a:hover {
	background-color: #ddd;
}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
	display: block;
}

body {
	background-image: url("image/book8.jpg");
	background-repeat: no-repeat;
	background-size: auto;
}

h1 {
	font-size: 50px;
	margin-top: 150px;
	text-align: center;
	font-family: "Times New Roman", Times, serif;
}
</style>
</head>
<body>
	<div class="mainbg">
			<div class="navbar">
			<a  href="index.jsp">Home</a> 
			<div class="dropdown">
				<button class="dropbtn"> Register </button>
				<div class="dropdown-content">
					 <a href="registration.jsp">Register Staff</a>
					 <a href="studentRegistration.jsp">Register Student</a>
				</div>
			</div>
				<a href="login.jsp">Login</a> 
		</div>
	</div>
	<div><br><br>
		<h1>
			Welcome to School <br> Management System
		</h1>
	</div>
</body>
</html>