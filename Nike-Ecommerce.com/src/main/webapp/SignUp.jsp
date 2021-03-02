<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: black;
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	padding: 16px;
	background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}

/* Add a blue text color to links */
a {
	color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
	background-color: #f1f1f1;
	text-align: center;
}
.leftop {
	float: right;
	font-size: 25px;
}
.top {
	background-color: #87ceeb;
}

</style>
<meta charset="ISO-8859-1">
<title>Nike-SignUp-Page</title>
</head>
<body>
<div class="top">
		<img
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpnd-CS4A5LR7_N7i9Fp0UTbsVcBEYWwMSug&usqp=CAU"
			alt="Nike.img" width="70" height="50" />

		<div class="leftop">
			<a href="Login.jsp"> LogIn</a>&nbsp |<a
				href="SignUp.jsp"> SignUp</a>&nbsp |
		</div>
	</div>
<form action="Register" method="post">
		<div class="container">
			<h1>Register</h1>
			<p>Please fill in this form to create an account.</p>
			<hr>

			<label for="username"><b>User name</b></label> <input type="text"
				placeholder="Enter username" name="username" id="username" required>

			<label for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" choose
				password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
				title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
				" name="password" id="psw" required> <label for="email"><b>Email</b></label>
			<input type="email" placeholder="Enter email" name="email" id="email"
				required>


			<button type="submit" class="registerbtn">Register</button>
		</div>

		<div class="container signin">
			<p>
				Already have an account? <a href="Login.jsp">Login in</a>.
			</p>
		</div>
	</form>

</body>
</html>