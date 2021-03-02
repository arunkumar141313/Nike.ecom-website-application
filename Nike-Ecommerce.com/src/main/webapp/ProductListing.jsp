<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<%@page import="java.util.*"%>
<%@page import="Nike.ecom.ProductsPojo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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

.image {
	display: flex;
	margin-left: 100px;
	padding-top: 100px;
}

.con {
	display: flex;
	margin-left: 180px;
}

.desp {
	display: flex;
	margin-left: 80px;
}

.name {
	display: flex;
	margin-left: 290px;
	padding-bottom: 10px;
}

.price{
display: flex;
margin-left: 80px;
padding-bottom: px;
}
.price2{
display: flex;
margin-left: 240px;
}

.view{
display: flex;
margin-left: 70px;
padding-top: 10px;
}
.view2{
display: flex;
margin-left: 300px;
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

button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

</style>
<meta charset="ISO-8859-1">
<title>Nike Product List page</title>
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

	<div class="con">
		<c:forEach var="p" items="${product_list}" varStatus="status">
			<div class="image">
			
				<img src="data:image/jpg;base64,${p.base64}" width="240"
					height="300" alt = "no image"/>
			</div>
		</c:forEach>
	</div>

	<div class="desp">
		<c:forEach var="p" items="${product_list}" varStatus="status">

			<div class="name">

				<h3>${p.name}</h3>

			</div>


		</c:forEach>
	</div>

	<div class="price">
		<c:forEach var="p" items="${product_list}" varStatus="status"> 

		<div class="price2"> 
		
		<p>Price : ${p.price}</p>
		
		
	
		</div>
 
</c:forEach>
	</div>
	
		<div class="view">
		<c:forEach var="p" items="${product_list}" varStatus="status"> 

		<div class="view2"> 
		
	
		
		<form action="products_despription"><button type="submit" name="pid" value="${p.id}"> View</button></form>
	
		</div>
 
</c:forEach>
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