<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
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


h1 {
	font-size: 50px;
}

.form {
	margin-left: 450px;
	font-weight: bold;
}

input[type="text"] {
	height: 30px;
	width: 250px;
	margin-bottom: 15px;
}

input[type="password"] {
	height: 30px;
	width: 250px;
	margin-bottom: 15px;
}

input[type="submit"] {
	height: 35px;
	width: 120px;
	margin-bottom: 20px;
	margin-left: 120px;
	align: center;
	color: white;
	background-color: black;
}
body{
background-color:#ccf2f4;
}
</style>
</head>
<body>
	<div class="mainbg">
				<div class="navbar">
			<a class="active" href="index.jsp">Home</a> 
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
		<center><h1>Registration Form</h1></center><hr style="margin-bottom:40px;">
		<div class="form">
			<form action="Registration" method="post">
				<table style="with: 100%">
					<tr>
						<td>FirstName</td>
						<td><input type="text" name="fname" required/></td>
					</tr>
					<tr>
						<td>LastName</td>
						<td><input type="text" name="lname" required/></td>
					</tr>
					<tr>
						<td>Department</td>
						<td><input type="text" name="department" required/></td>
					</tr>
					<tr>
						<td>Gender</td>
						<td><input type="text" name="gender" required/></td>
					</tr>
					<tr>
						<td>E-mail</td>
						<td><input type="text" name="email" required/></td>
					</tr>
					<tr>
						<td>Password</td>
						<td><input type="password" name="pass" required/></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><input type="text" name="address" required/></td>
					</tr>
					<tr>
						<td>Phone Number</td>
						<td><input type="text" name="phone_no" required/></td>
					</tr>

				</table>
				<input type="submit" value="Submit" />
			</form>
		</div>
</body>
</html>