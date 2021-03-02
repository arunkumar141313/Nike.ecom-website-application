<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<style>
.top {
	background-color: #87ceeb;
	display: flex;
	
}
.container {
	padding: 25px;
	background-color: lightblue;
	height: 50;
	width: 201px;
    border: 2px solid black;
    padding: 151px;
    margin-left: 666px;
    margin-top: 118px;
    border-radius: 44px;
}
}

button {
	background-color: #4CAF50;
	width: 40%;
	color: orange;
	padding: 10px;
	margin: 10px 0px;
	border: none;
	cursor: pointer;
	
}
.footer {
	position: relative;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 100px;
	background-color: #333;
	color: white;
	padding: 3em;
}
.leftop {
	float: right;
	font-size: 25px;
	padding-top: 20px;
}
.logo{
margin-right: 700px;

}
#heading{
margin-right: 700px;
}
input{
padding: 6px 15px;
}

</style>
<meta charset="ISO-8859-1">
<title>Nike-Login-Page</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<div class="top">
		<img class="logo"
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpnd-CS4A5LR7_N7i9Fp0UTbsVcBEYWwMSug&usqp=CAU"
			alt="Nike.img" width="90" height="80" />
			<h1 id="heading">Just Do It</h1>

		<div class="leftop">
			<a href="Home-Page.jsp">Homepage</a>&nbsp |<a
				href="SignUp.jsp"> SignUp</a>&nbsp |
		</div>
	</div>

	<div>
		<form action="login" method="post">
			<div class="container">
			<h2 style="color: red;">${warning}</h2>
			<h2>LogIn</h2>
				<label>Email : </label> <input type="email"
					placeholder="Enter Email" name="email" required> <label>Password
					: </label> <input type="password" placeholder="Enter Password"
					name="password" required><br>
				<button type="submit">Login</button><br>
				<h4>Don't have an Account?</h4>
		<h3><a href="SignUp.jsp">SignUp</a></h3>

			</div>

		</form>
		
</div>




</body>
</html>