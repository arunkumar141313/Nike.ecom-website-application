<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@page import="java.util.*"%>
<%@page import="Nike.ecom.ProductsPojo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style >
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

#products th {
 padding: 20px;
  text-align: center;
  background-color: brown;
  color: white;
}
#products td {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
    
}

#products{
margin-left: 450px;
    border: 1px solid;
}
.menu
{
padding-bottom: 45px;
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
<title>Cart-Page</title>
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

<div class="content">
				<c:forEach var="c" items="${cart_list}" varStatus="status">
				<div class="cart"><table id="products"><tr>
    <th>Product Image</th>
    <th>product id</th>
    <th>Product name</th>
    <th>Product price</th>
     <th>Click</th>
      
    
  </tr><tr><td><img src="data:image/jpg;base64,${h.base64}" style="height: 50px" width="50px" /></td>
				                             <td>${c.id}</td>
				                             <td>${c.name}</td>
				                             <td>${c.price}</td>
				                             
				                             <td> <a href="Checkout.jsp"> <button>Check out</button></a>
				                             
				                             </td>
				                             
				
				
				
				
				</tr></table> </div>		</c:forEach></div>


</body>
</html>