<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete</title>
<style>

body {
	background-image: url("image/book4.jpg");
	background-repeat: no-repeat;
background-size: auto;
}
.form {
	margin-top:50px;
	font-weight: bold;
}
h1{
font-size:50px;
text-align:center;
}
.form form{
margin-top:50px;
height:200px;
	width:400px;
	
}
input[type="text"] {
	height: 30px;
	width: 250px;
	margin-bottom: 15px;
}
input[type="submit"] {
	height: 35px;
	width: 120px;
	margin-bottom: 20px;
	margin-left: 50px;
	align: center;
	color: white;
	background-color: black;
}

</style>
</head>
<body>

	<div class="mainbg" align="center">
			<jsp:include page="Menu.jsp" /> 
		<div class="form">
		<h1>Delete Record</h1>
		<form action="Delete" method="post">
			<table style="with: 100%">
				<tr>
					<td>Enter Id:-</td>&nbsp
					<td><input type="text" name="stu_id" /></td>
				</tr>
			</table>
			<br>
			<input type="submit" value="Submit" />
		</form>
	</div>
</body>
</html>