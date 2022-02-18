<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function validateForm() {
		var email = document.form1.email;
		var password = document.form1.password;
		if (email.value == null || email.value == "") {
			window.alert("please enter your email..");
			email.focus();
			return false;
		}
		if (password.value == null || password.value == "") {
			window.alert("please enter your password..");
			password.focus();
			return false;
		}

	}
</script>
<style>
a:link {
	text-decoration: none;
}

a:visited {
	text-decoration: none;
}

.parent {
	background-image: url("login1.jpg");
	width: 1200px;
	height: 900px;
	background-repeat: round;
}

#formcontent {
	text-align: center;
	/* background-image: linear-gradient(to left, red, yellow); */
	box-shadow: 0px 0px 30px 25px;
	width: 400px;
	height: 250px;
	border: 3px white;
	bottom: 0;
	top: 0;
	left: 0;
	right: 0;
	margin: auto;
	position: absolute;
}

#content {
	color: white;
	font-size: 12px
}

.link {
	color: white;
}

body {
	font-family: monospace;
}

h2 {
	color: white;
}

input[type=text] {
	background-color: #f6f6f6;
	border: none;
	color: #0d0d0d;
	padding: 7px 25px;
	text-align: center;
	display: inline-block;
	font-size: 12px;
	margin: 5px;
	width: 85%;
	border: 2px solid #f6f6f6;
	border-radius: 5px 5px 5px 5px;
}

input[type=email] {
	background-color: #f6f6f6;
	border: none;
	color: #0d0d0d;
	padding: 7px 25px;
	text-align: center;
	display: inline-block;
	font-size: 12px;
	margin: 5px;
	width: 85%;
	border: 2px solid #f6f6f6;
	border-radius: 5px 5px 5px 5px;
}

input[type=password] {
	background-color: white;
	border: none;
	color: #0d0d0d;
	padding: 7px 25px;
	text-align: center;
	display: inline-block;
	font-size: 12px;
	margin: 5px;
	width: 85%;
	border: 2px solid #f6f6f6;
	border-radius: 5px 5px 5px 5px;
}
</style>
</head>
<body>
	<div class="parent">

		<div id="formcontent">
			<h2>Login</h2>
			<p style="color: red">
				<%
					if (request.getAttribute("errorMsg") != null) {

						out.println(request.getAttribute("errorMsg"));
					}
				%>
			</p>
			<form id="content" name="form1" onsubmit="return validateForm()"
				action="emailAndPassword.jsp">
				<b>E-mail: </b><input type="text"
					style="width: 100px; height: 20px;" name="email"
					placeholder="e-mail"><br> <b>Password:</b><input
					type="password" style="width: 100px; height: 20px;" name="password"
					placeholder="password"><br> <br> <input
					type="submit" value="login" name="login1">

			</form>
			<br>
			<div id="formFooter">
				<b><a class="link" href="register.html">Sign up |</a> <a
					href="home.html" class="link">Home |</a><a href="" class="link">
						Forgot password?</a></b>
			</div>
		</div>

	</div>

</body>
</html>