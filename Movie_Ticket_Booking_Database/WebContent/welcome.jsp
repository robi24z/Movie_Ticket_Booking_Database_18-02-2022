<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="main">
		<%
			if (session.getAttribute("session") == null || session.getAttribute("session") == "") {
				response.sendRedirect("login.jsp");
			}
		%>
		<h3>
			Welcome,
			<%=session.getAttribute("session")%></h3>
		<h3>
			<a href="logOut.jsp">Logout</a> | <a href="">Home</a>
		</h3>
	</div>
</body>
</html>