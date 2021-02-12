<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
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
	font-size: 40px;
}

.container {  
    padding: 50px;  
  background-color: lightblue;  
}  
  
input[type=text], input[type=password], textarea {  
  width: 50%;  
  padding: 15px;  
  margin: 5px 0 22px 0;  
  display: inline-block;  
  border: none;  
  background: #f1f1f1; 
  margin-left:300px; 
}  
input[type=text]:focus, input[type=password]:focus {  

  outline: none;  
}  
hr {  
  border: 1px solid #f1f1f1;  
  margin-bottom: 25px;  
}  
label{
font-size:20px;
margin-left:300px;
}
.registerbtn {  
  background-color: black;  
  color: white;  
  padding: 16px 20px;  
  margin: 8px 0;
  margin-left:450px;  
  border: none;  
  cursor: pointer;  
  width: 25%;  
  font-size:20px;
  opacity: 0.9;  
}  
.registerbtn:hover {  
  opacity: 1; 
  color:black; 
  background-color: #4CAF50;  
  
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
	<form action="StudentRegistration" method="post">
		<div class="container">
			<center>
				<h1 style="margin-top:5px; margin-bottom:50px;">Student Registeration Form</h1>
			</center>
			<hr><br>
			<label> Firstname :- </label> <br>
			<input type="text" name="firstname" placeholder="Firstname" size="15" required /> <br>
			<label>Middlename :- </label> <br>
			<input type="text" name="middlename"placeholder="Middlename" size="15" /><br>
			<label>Lastname :- </label> <br>
		    <input type="text" name="lastname" placeholder="Lastname" size="15" required /><br>
			<div>
				<label> Course :- </label>
				<select style="font-size:18px; width:15%; margin-left:20px;" name="course">
					<option value="Course">Course</option>
					<option value="BCA">BCA</option>
					<option value="BBA">BBA</option>
					<option value="B.Tech">B.Tech</option>
					<option value="MBA">MBA</option>
					<option value="MCA">MCA</option>
					<option value="M.Tech">M.Tech</option>
				</select>
			</div><br>
	 		<div style="font-size:20px; padding: 10px 0;">
				<label> Gender :- </label>
				<input style="margin-left:20px;" type="radio" value="Male"name="gender" checked> Male 
				<input style="margin-left:30px;" type="radio" value="Female" name="gender"> Female 
				<input style="margin-left:30px;" type="radio" value="Other" name="gender"> Other
			</div><br>
			<label> Phone :- </label><br> 
			<input type="text" name="phone" placeholder="phone no." size="10"/ required><br>
			<label> Current Address :-</label><br>
			<textarea name="address" cols="80" rows="5" placeholder="Current Address" value="address" required>  </textarea><br>
			<label for="email">Email :-</label> <br>
			<input type="text" placeholder="Enter Email" name="email" required> <br>
			<label for="psw">Password :-</label><br>
		    <input type="password" placeholder="Enter Password" name="psw" required><br>
		    <label for="psw-repeat">Re-type Password</label><br>
		    <input type="password" placeholder="Retype Password" name="psw-repeat" required><br>
			<button type="submit" class="registerbtn">Register</button>
	</form>
	</div>
</body>
</html>