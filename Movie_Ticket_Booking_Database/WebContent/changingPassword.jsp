<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
	String email = request.getParameter("email");
	String newpass = request.getParameter("newpassword");
	String cfpass = request.getParameter("cfpassword");
	String pass = "";
	int id = 0;
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://192.168.18.245:3306/javadb_161",
				"javadb_161", "fdefdscxss");
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from Movie_Ticket_Users where email='" + email + "'");
		while (rs.next()) {
			email = rs.getString(1);
			pass = rs.getString(3);
		}
		System.out.println(email + " " + pass);
		if (email.equals(email)) {
			Statement st1 = con.createStatement();
			int i = st1.executeUpdate(
					"update Movie_Ticket_Users set password='" + cfpass + "' where email='" + email + "'");
			out.println("Password changed successfully");
			st1.close();
			con.close();
		} else {
			out.println("Error");
		}
	} catch (Exception e) {
		out.println(e);
	}
%>