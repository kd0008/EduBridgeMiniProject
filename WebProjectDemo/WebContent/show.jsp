
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
</style>
</head>
<body>
	<div class="mainbg" align="center">
		
		<jsp:include page="Menu.jsp" />  
		</div>
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