<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
<style>
h1 {
	font-size: 50px;
}
.form {
	font-weight: bold;
}

input[type="text"] {
	height: 40px;
	width: 350px;
	margin-bottom: 15px;
}

input[type="password"] {
	height: 40px;
	width: 350px;
	margin-bottom: 15px;
}

input[type="submit"] {
	height: 45px;
	width: 180px;
	margin-bottom: 20px;
	margin-left: 50px;
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
	<div class="mainbg" align="center">
			<jsp:include page="Menu.jsp" />  
			<div class="form">
			<h1>Update Details Form</h1><hr style="margin-bottom:40px;">
			<form action="Update" method="post">
				<table style="with: 100%">
					<tr>
						<td>Staff Id</td>
						<td><input type="text" name="staff_id" required/></td>
					</tr>
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

				</table><br>
				<input type="submit" value="Update" />
			</form>
		</div>
		</div>
</body>
</html>