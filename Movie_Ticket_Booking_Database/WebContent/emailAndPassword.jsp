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
		if (request.getParameter("login1") != null) {
			String dbemail, dbpassword;
			String email, password;
			email = request.getParameter("email");
			password = request.getParameter("password");
			PreparedStatement prepare = null;
			prepare = con.prepareStatement("select * from Movie_Ticket_Users where email=? AND password=?");
			prepare.setString(1, email);
			prepare.setString(2, password);
			ResultSet rs = prepare.executeQuery();
			if (rs.next()) {
				dbemail = rs.getString("email");
				dbpassword = rs.getString("password");
				if (email.equals(dbemail) && password.equals(dbpassword)) {
					session.setAttribute("session", dbemail);
					response.sendRedirect("welcome.jsp");
				}
			} else {
				request.setAttribute("errorMsg", "Invalid email or password");
				RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
				rd.forward(request, response);
			}
			con.close();
		}
	} catch (Exception e) {
		out.println(e);
	}
%>