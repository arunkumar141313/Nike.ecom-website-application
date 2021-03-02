<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"  %>

<%@page import="java.util.*"  %>

<!DOCTYPE html>
<html>
<head>
<style>
.leftop {
	float: right;
	font-size: 25px;
	padding-top: 20px;
}

.top {
	background-color: #87ceeb;
	display: flex;
}

.topnav {
	background-color: #333;
	overflow: hidden;
}

.topnav a {
	float: center;
	
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 25px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #4CAF50;
	color: white;
}

.topnav input[type=text] {
	float: right;
	padding: 6px;
	border: none;
	margin-top: 8px;
	margin-right: 16px;
	font-size: 17px;
}

.cont .btn {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-900%, 700%);
	-ms-transform: translate(-50%, -50%);
	background-color: #ffffff;
	color: black;
	font-size: 16px;
	padding: 12px 24px;
	border: none;
	cursor: pointer;
	border-radius: 5px;
}

.cont .btn:hover {
	background-color: yellow;
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

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 25px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.topnav a:hover, .dropdown:hover .dropbtn {
	background-color: #555;
	color: white;
}

.dropdown-content a:hover {
	background-color: #ddd;
	color: black;
}

.dropdown:hover .dropdown-content {
	display: block;
}

[data-component="slideshow"] .slide {
	display: none;
  text-align: left;
}

[data-component="slideshow"] .slide.active {
	display: block;
}

#nikec{
	font-family: sans-serif;
	font-size: 25px;
	font-style: oblique;
}
.ppl{
	font-family: monospace;
	font-size: 25px;
	font-style: inherit;
}
.logo{
margin-right: 700px;

}
#heading{
margin-right: 700px;
}

.images{
display: flex;
padding-left: 10px;
}

</style>
<meta charset="ISO-8859-1">
<title>Nike-Arun Practice example</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>
	<div class="top">
		<img class="logo"
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpnd-CS4A5LR7_N7i9Fp0UTbsVcBEYWwMSug&usqp=CAU"
			alt="Nike.img" width="90" height="80" />
			<h1 id="heading">Just do It</h1>
			
		<div class="leftop">
			<a href="cart"> Cart</a>&nbsp |<a href="Login.jsp"> Login</a>&nbsp |<a href="SignUp.jsp">
				SignUp</a>&nbsp | 
		</div>
	</div>
	<div class="topnav">

		<a href="http://localhost:8080/Nike-Ecommerce.com/products_list?Category=Men">Men</a>
		 <a href="http://localhost:8080/Nike-Ecommerce.com/products_list?Category=Women">Women</a> 
		 <a href="http://localhost:8080/Nike-Ecommerce.com/products_list?Category=Kids">Kids</a>
		<a href="#Casual">Casual</a> <a href="#Sport">Sport</a> <a
			href="#Formal">Formal</a>
		<div class="dropdown">
			<button class="dropbtn">
				Home <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="http://localhost:8080/Nike-Ecommerce.com/products_list?Category=Men">Men</a>
				 <a href="http://localhost:8080/Nike-Ecommerce.com/products_list?Category=Women">Women</a> 
				 <a href="http://localhost:8080/Nike-Ecommerce.com/products_list?Category=Kids">Kids</a>
				<a href="#">Offers</a> <a href="#">Coupons</a>
			</div>
		</div>
		<input type="text" placeholder="Search..">
	</div>
	<div class="cont">
		<div id="slideshow-example" data-component="slideshow">
			<div role="list">
				<div class="slide">

					<img
						src="https://i.pinimg.com/originals/3b/1f/8d/3b1f8dc0c0e5a13cd893497ab5964037.jpg"
						alt="Quote.img" width="900" height="800"> <img
						src="https://cdn.everydaypower.com/wp-content/uploads/2020/01/80-Best-Nike-Quotes-From-Their-Ads-and-Commercials-1000x600.jpg"
						alt="Shoe.img" width="950" height="800">
				</div>
				<div class="slide">
					<img
						src="https://i.pinimg.com/originals/fa/80/02/fa80025279a9257271533dded6d5c3cb.png"
						alt="Shoe.img" width="900" height="800"> <img
						src="https://s-media-cache-ak0.pinimg.com/736x/d3/1e/c3/d31ec33d7c3f4512005c17335bed400d--nike-cortez-leather-nike-classic-cortez-leather.jpg"
						alt="akj.img" width="950" height="800">
				</div>
				<div class="slide">
					<img
						src="https://d2rd7etdn93tqb.cloudfront.net/wp-content/uploads/2019/01/instagram-pink-nike-shoes-social-012219.jpg"
						alt="ajks.img" width="900" height="800"> <img
						src="https://25.media.tumblr.com/c26993bdfc0eb8f3cdfd7e5c8d2bc8b8/tumblr_mwtgohh9M31s8gq5do1_500.jpg"
						alt="kaj.img" width="950" height="800">

				</div>

			</div>
		</div>

		<script>
		var slideshows = document.querySelectorAll('[data-component="slideshow"]');
		slideshows.forEach(initSlideShow);

		function initSlideShow(slideshow) {

			var slides = document.querySelectorAll(`#${slideshow.id} [role="list"] .slide`);

			var index = 0, time = 2000;
			slides[index].classList.add('active');

			setInterval( () => {
				slides[index].classList.remove('active');
				
				index++;
				if (index === slides.length) index = 0;

				slides[index].classList.add('active');

			}, time);
		}
		</script>
		<button class="btn">SHOP</button>

	</div>
	<div id="nikec">
	<h1>Nike Collections</h1>
	</div>
	<div class="ppl">
	<table style="width: 100%">
		<tr>
			<th>Men's</th>
			<th>Women's</th>
			<th>Kid's</th>
		</tr>
	</table>
	</div>
	<div class="images">
	
		<form action="products_list" > <button type="submit" name="Category" value="Men"><img
			src="https://assets.ajio.com/medias/sys_master/root/hf6/h59/15815998177310/-1117Wx1400H-460574459-yellow-MODEL.jpg"
			alt="men.img" width="600" height="600"></button></form> &nbsp
			<form action="products_list"> <button type="submit" name="Category" value="Women"><img
			src="https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/kmatfojetgb6t58ufbyt/sportswear-essential-t-shirt-9RqXMb.jpg"
			alt="women.img" width="600" height="600"></button></form>&nbsp 
			<form action="products_list"> <button type="submit" name="Category" value="Kids"><img
			src="https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/089c893b-56e3-4a85-af1b-7e9a2da79362/sportswear-older-t-shirt-tbCkqG.jpg"
			alt="kid" width="600" height="600"></button></form>
	</div>


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