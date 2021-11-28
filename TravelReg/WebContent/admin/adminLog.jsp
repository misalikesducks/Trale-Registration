<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="javaApp.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
</head>
<body>

	 <%
        try {

		//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();

		//Create a SQL statement
		Statement stmt = con.createStatement();

		//Get parameters from the HTML form at the frontPage.jsp
		String user = request.getParameter("adminUsername");
		String pass = request.getParameter("adminPassword");
		String uType = "A";
		//command to check if credentials are valid
		String valid = "select * from user where username= ?"+ "and password = ?" + "and type = ?";
		//out.print(valid);
		//Create a Prepared SQL statement allowing you to introduce the parameters of the query
		PreparedStatement ps = con.prepareStatement(valid);

		//Add parameters of the query. Start with 1, the 0-parameter is the INSERT statement itself
		ps.setString(1, user);
		ps.setString(2, pass);
		ps.setString(3, uType); 
		//Run the query against the DB
		ResultSet result = ps.executeQuery();
		
		if(result.next()){
			if(user.length() != 0 && user != null && pass != null && pass.length() != 0 ){
				out.println("Welcome " + user); %>
				<button type="button" name="logout" onclick="history.back()">Log Out.</button>
				<% 
				session.setAttribute("admin", user);
				System.out.println(session.getAttribute("user"));
				response.sendRedirect("adminPortal.jsp");
			}else{
				out.println("Invalid Credentials"); %>
				<button type="button" name="back" onclick="history.back()">Try Again.</button>
			<% 
			}
			
		}
		else{
			out.println("Invalid Credentials"); %>
			<button type="button" name="back" onclick="history.back()">Try Again.</button>
		<% 
		}
		

		//Close the connection. Don't forget to do it, otherwise you're keeping the resources of the server allocated.
		con.close();

		//out.print("Login Successful!");
		
		}catch (Exception ex) {
			out.print(ex);
			out.print("Connection no work veri tired ");
		}

    %>
</body>
</html>