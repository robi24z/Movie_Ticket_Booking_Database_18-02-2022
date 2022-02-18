<%@ page import="java.sql.*"%>
<%
	if (session.getAttribute("session") != null) {
		response.sendRedirect("welcome.jsp");
	}
%>
<%
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://192.168.18.245:3306/javadb_161",
				"javadb_161", "fdefdscxss");
		if (request.getParameter("login2") != null) {
			String firstName, lastName, email, gender, birthday, city, country, password;
			firstName = request.getParameter("firstName");
			lastName = request.getParameter("lastName");
			email = request.getParameter("email");
			gender = request.getParameter("gender");
			city = request.getParameter("city");
			country = request.getParameter("country");
			password = request.getParameter("password");
			birthday = request.getParameter("birthday");

			PreparedStatement prepare = null;
			prepare = con.prepareStatement(
					"insert into Movie_Ticket_Users(firstName,lastName,email,gender,city,country,password,DOB) values(?,?,?,?,?,?,?,?)");
			prepare.setString(1, firstName);
			prepare.setString(2, lastName);
			prepare.setString(3, email);
			prepare.setString(4, gender);
			prepare.setString(5, city);
			prepare.setString(6, country);
			prepare.setString(7, password);
			prepare.setString(8, birthday);
			prepare.executeUpdate();
			request.setAttribute("successMsg", "Registered successfully..! Please login");
			RequestDispatcher rd = request.getRequestDispatcher("/registerPage.jsp");
			rd.forward(request, response);
			con.close();

		}
	} catch (Exception e) {
		out.println(e);
	}
%>
