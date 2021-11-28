<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="javaApp.*"%>
<!--Import some libraries that have classes that we need -->
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register New Customer</title>
</head>
<body>
	<% 
	try{
		ApplicationDB db = new ApplicationDB(); 
		Connection con = db.getConnection(); 
		Statement stmt = con.createStatement(); 
		
		String custUser = request.getParameter("regUsername"); 
		String custPass = request.getParameter("regPassword"); 
		String type = "C"; 
		//maybe check dups 
		String insert = "INSERT INTO user (username, password, type)" + "VALUES (?,?,?)";
		
		PreparedStatement ps = con.prepareStatement(insert); 
		
		ps.setString(1, custUser);
		ps.setString(2, custPass);
		ps.setString(3, type); 
		
		ps.executeUpdate();
		con.close();

		out.print("Insert succeeded!");
		
	}catch(Exception e){
		out.print(e);
		out.print("Insert failed :()");
	}
	%>
</body>
</html>