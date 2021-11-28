<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="javaApp.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Administration Home</title>
</head>
<body>
<%-- <%
    if ((session.getAttribute("user") == null)) {
%>
You are not logged in<br/>
<a href="AdminLogin.jsp">Please Login</a>
<%} else {
%>
 Welcome <%=session.getAttribute("user") %>  --%>
<br> Select your task: <br> 

	<table>
		<thead>
			<tr>
				<th>
				    <h5 class="card-title">Customer Service Representatives</h5>
				    <form method="post" action="login/register_representative_form.jsp"> 
				    <input type ="submit" value="Register">
				    <input type ="submit" value="Delete Account" formaction = "delete_representative_form.jsp">
				    <input type ="submit" value="Edit" formaction = "edit_representative_form.jsp">
				 	</form>
			 	</th>
			 </tr>
		</thead>
		<thead>
			<tr>
				<th>
				    <h5 class="card-title">Customers</h5>
				    <form method="post" action="login/register_representative_form.jsp"> 
				    <input type ="submit" value="Register">
				    <input type ="submit" value="Delete Account" formaction = "delete_representative_form.jsp">
				    <input type ="submit" value="Edit" formaction = "edit_representative_form.jsp">
				 	</form>
			 	</th>
			 </tr>
		</thead>
	 	<thead>
	 		<tr>
	 			<th>
		 			<h5 class="card-title">Obtain Sales Report</h5>
				    <small>Sales report for the month of: </small>
				    <br>
				    <input type="text" name="salesRequestMonth" placeholder="Enter Month">
				    <form action="AdminSalesReport.jsp">
						<input type="submit" value="Retrieve">
					</form>	
				</th>
	 		</tr>
	 	</thead>
	 	<thead>
	 		<tr>
	 			<th>
		 			<h5 class="card-title">Obtain Flight Reservations</h5>
				    <small>By flight number: </small>>
				    <br>
				    <input type="text" name="flight_reservation_fnum" placeholder="Enter Flight Num">
				    <form action="reservationListFNum.jsp">
						<input type="submit" value="Retrieve">
					</form>	
						<small>By Customer Name </small>
				    <br>
				    <input type="text" name="flight_reservation_cname" placeholder="Enter Name">
				    <form action="reservationListCName.jsp">
						<input type="submit" value="Retrieve">
					</form>	
				</th>
	 		</tr>
	 	</thead>
	 	<thead>
	 		<tr>
	 			<th>
		 			<h5 class="card-title">Revenue Summary List</h5>
				    <small>Select one: </small>
				    <br>
					<input type="text" name="flightRevenue" placeholder="Enter Name">
				    <form action="revenueFlight.jsp">
						<input type="submit" value="Retrieve">
					</form>	
					<input type="text" name="airlineRevenue" placeholder="Enter Name">
					<br>
					<form action="revenueAirline.jsp">
						<input type="submit" value="Retrieve">
					</form>	
					
					<input type="text" name="customerRevenue" placeholder="Enter Name">
					<form action="revenueCustomer.jsp">
						<input type="submit" value="Retrieve">
					</form>	
				</th>
	 		</tr>
	 	</thead>
	 	<thead>
	 		<tr>
	 			<th>
		 			<h5 class="card-title">Customer with Most Revenue</h5>
				    <br>
				    <form action="customerMostRevenue.jsp">
						<input type="submit" value="Retrieve">
					</form>	
				</th>
	 		</tr>
	 	</thead>
	 	<thead>
	 		<tr>
	 			<th>
		 			<h5 class="card-title">Most Active Flights</h5>
				    <br>
				    <form action="mostActiveFlight.jsp">
						<input type="submit" value="Retrieve">
					</form>	
				</th>
	 		</tr>
	 	</thead>
	</table>
	<%-- <%
	}
	%> --%>
</body>
</html>