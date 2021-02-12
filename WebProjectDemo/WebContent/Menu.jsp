<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
	margin-left: 50px;
	margin-right: 50px;
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

</style>
</head>
<body>
<div class="navbar">
			<a  href="loginsuccess.jsp">Home</a> 
			<div class="dropdown">
				<button class="dropbtn"> Insert </button>
				<div class="dropdown-content">
					 <a href="insert.jsp">Add New Staff Details</a>
					 <a href="insertStudent.jsp">Add New Student Details</a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn"> Update </button>
				<div class="dropdown-content">
					 <a href="update.jsp">Staff Details</a>
					 <a href="updateStu.jsp">Student Details</a>
				</div>
			</div>
				<div class="dropdown">
				<button class="dropbtn"> Delete Records </button>
				<div class="dropdown-content">
					 <a href="deleteStaff.jsp">Delete Staff Record</a>
				    <a href="delete.jsp">Delete Student Record</a>
				</div>
			</div>
			<div class="dropdown">
				<button class="dropbtn"> Show All Records </button>
				<div class="dropdown-content">
					 <a href="show.jsp">Show Student All Record</a> 
				    <a href="showStaff.jsp">Show Staff All Record</a>
				</div>
			</div>
				<a href="login.jsp">Login</a> 
				<a href="signout.jsp">Signout</a>
		</div>
</body>
</html>