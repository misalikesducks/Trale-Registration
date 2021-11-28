<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="javaApp.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Travel Registration Log in</title>
	</head>
	
	<body>

							  
		
	
	NEW Customer: Register here
	<br>
		<form method="get" action="registerCustomer.jsp">
			<table>
				<tr>    
					<td>Username: </td><td><input type="text" name="regUsername"></td>
				</tr>
				<tr>
					<td>Password: </td><td><input type="text" name="regPassword"></td>
				</tr>
				
			</table>
			<input type="submit" value="register a new customer">
		</form>
	<br>
	
	
	RETURNING Customer: Log in to your account 
	<br>
		<form method="post" action="customer/customerLogin.jsp">
		<table>
		<tr>    
		<td>Username</td><td><input type="text" name="logUsername"></td>
		</tr>
		<tr>
		<td>Password</td><td><input type="text" name="logPassword"></td>
		</tr>
		</table>
		<input type="submit" value="Log in">
		</form>
	<br>
	
	ADMIN LOG IN: Log in to your account 
	<br>
		<form method="post" action="admin/adminLog.jsp">
		<table>
		<tr>    
		<td>Username</td><td><input type="text" name="adminUsername"></td>
		</tr>
		<tr>
		<td>Password</td><td><input type="text" name="adminPassword"></td>
		</tr>
		</table>
		<input type="submit" value="Log in">
		</form>
	<br>
	
	
	CUSTOMER REPRESENTATIVE LOG IN: WEE
	<br>
		<form method="post" action="customerRep/customerRepLog.jsp">
		<table>
		<tr>    
		<td>Username</td><td><input type="text" name="cRepUsername"></td>
		</tr>
		<tr>
		<td>Password</td><td><input type="text" name="cRepPassword"></td>
		</tr>
		</table>
		<input type="submit" value="Log in">
		</form>
	<br>

</body>
</html>