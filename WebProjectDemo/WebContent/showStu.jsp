
<%@ page import="java.sql.*" %>
<% Class.forName("com.mysql.cj.jdbc.Driver"); %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Records</title>
<style>

body {
	background-image: url("image/book8.jpg");
	background-repeat: no-repeat;
background-size: auto;
}
.data{
margin-top:100px;
height:auto;
width:auto;
}
table{
text-align:center;

}
th{
padding:20px;
}
td{
padding:20px;
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
	margin-left: 100px;
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
	<div class="mainbg" align="center">
			<div class="navbar">
			<a href="Home.jsp">Home</a> 
     		<a href="updateStudent.jsp">Update Record</a>
			<a href="showStu.jsp">Show All Record</a> 
			<a href="login.jsp">Login</a>
			<a href="signout.jsp">Signout</a>
		</div></div>
		<div class="data">
		<%
           Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/student?useSSL = false", "root", "root");
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from stu_details");
       %>
      <center>
      <TABLE BORDER="1">
      <TR>
      <TH>Student ID</TH>
      <TH>First Name</TH>
      <TH>Middle Name</TH>
      <TH>Last Name</TH>
      <TH>Course</TH>
      <TH>Gender</TH>
      <TH>Phone Number</TH>
      <TH>Address</TH>
      <TH>E-Mail</TH>
      </TR>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getString(1) %></td>
       <TD> <%= resultset.getString(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
       <TD> <%= resultset.getString(4) %></TD>
       <TD> <%= resultset.getString(5) %></TD>
       <TD> <%= resultset.getString(6) %></TD>
       <TD> <%= resultset.getString(7) %></TD>
       <TD> <%= resultset.getString(8) %></TD>
       <TD> <%= resultset.getString(9) %></TD>
      </TR>
      <% } %>
     </TABLE>
     </center>
    </div>

</body>
</html>