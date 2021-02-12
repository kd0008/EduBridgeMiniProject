<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style>
body {
	background-image: url("image/pp.jpg");
	background-repeat: no-repeat;
	background-size: auto;
}

.col-container {
margin-top:50px;
  display: table;
  width: 100%;
  color:white;
}
.col {
text-align:center;
  display: table-cell;
  padding: 30px;
  border:1px solid white;
}
table{
margin-left:130px;
	height: 40px;
	width: 30px;
	font-weight: bold;
	font-size: 20px;
}

h1 {
	font-size: 50px;
	color:#555555;
}


.box {
	width: 200px;
	height: 30px;
	margin-bottom: 20px;
}

.sub {
	color: black;
	padding: 10px 35px;
	border-redius: 10px;
	text-align: center;
	text-decoration: none;
	font-weight: bold;
	display: inline-block;
	font-size: 16px;
    margin-bottom:20px;
	}
.sub:hover{

}
.sub2{
color: black;
	padding: 10px 35px;
	border-redius: 10px;
	text-align: center;
	text-decoration: none;
	font-weight: bold;
	display: inline-block;
	font-size: 16px;
		margin-bottom:20px;
}
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
	<div class="col-container">
  <div class="col" >
			<h1>Student Login Form</h1>
			<form action="StudentLogin" method="post">
				<table style="with: 100%">
					<tr>
						<td>E-mail:-</td>
						<td><input class="box" type="text" name="email"
							placeholder="E-mail" /></td>
					</tr>
					<tr>
						<td>Password:-</td>
						<td><input class="box" type="password" name="pass"
							placeholder="Password" /></td>
					</tr>

				</table>
				<input class="sub" type="submit" value="Submit" />
			</form>
		</div>
		<div class="col">
			<h1>Staff Login Form</h1>
			<form action="Login" method="post">
				<table style="with: 100%">
					<tr>
						<td>E-mail:-</td>
						<td><input class="box" type="text" name="email"
							placeholder="E-mail" /></td>
					</tr>
					<tr>
						<td>Password:-</td>
						<td><input class="box" type="password" name="pass"
							placeholder="Password" /></td>
					</tr>

				</table>
				<input class="sub2" type="submit" value="Submit" />
			</form>
		</div>
	</div>
</body>
</html>
