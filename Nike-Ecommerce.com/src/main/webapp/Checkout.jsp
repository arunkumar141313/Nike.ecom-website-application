<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
.top {
	background-color: #87ceeb;
	display: flex;
}

.leftop {
	float: right;
	font-size: 25px;
	padding-top: 20px;
}

.logo {
	margin-right: 700px;
}

#heading {
	margin-right: 700px;
}

.h1{
color: green;
}
.footer {
	position: fixed;
	bottom: 0;
	left: 0;
	width: 100%;
	height: 100px;
	background-color: #333;
	color: white;
	padding: 3em;
}
</style>
<meta charset="ISO-8859-1">
<title>CheckOut</title>
</head>
<body>
	<div class="top">
		<img class="logo"
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpnd-CS4A5LR7_N7i9Fp0UTbsVcBEYWwMSug&usqp=CAU"
			alt="Nike.img" width="90" height="80" />
		<h1 id="heading">Just Do It</h1>

		<div class="leftop">
			<a href="Homepage2.jsp">Homepage</a>&nbsp |<a href="#"> Cart</a>&nbsp
			|
		</div>
	</div>

<h1 class="h1" style="text-align: center">Your Order is Placed</h1>
<h3 style="text-align: center">Keep Shopping <a href="Homepage2.jsp"> Click here....</a></h3>



	<div class="footer">
		<footer>
			<table style="width: 50%">
				<tr>
					<th>Find Store</th>
					<th>Get Help</th>
					<th>About Nike</th>
				</tr>
				<tr>
					<th>Become a member</th>
					<th>order status</th>
					<th>news</th>
				</tr>
				<tr>
					<th>Sign Up for email</th>
					<th>Delivery</th>
					<th>Careers</th>
				</tr>
				<tr>
					<th><p>© 2020 Nike, Inc. All Rights Reserved</p></th>
				</tr>
			</table>


		</footer>
	</div>


</body>
</html>