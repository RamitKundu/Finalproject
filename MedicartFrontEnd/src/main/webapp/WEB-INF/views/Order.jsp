<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<%@include file="Landingpage.jsp" %>
 <div class="container">
<div class="row">
<div class="page-header">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;"><em>Billing Address</em></h2>
</td>
</div>
<table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   <th>User Name</th>
                    <th>Address</th>
                    
                    <th>State</th>
                    <th>Pincode</th>
                    <th>Contact</th>
                    </thead>

<tr>
<td>${a.userName}</td>
<td>${a.address}</td>
<td>${a.state}</td>
<td>${a.pin}</td>
<td>${a.contact}</td>
</tr>

</table>
 <div class="container">
<div class="row">
<div class="page-header">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;"><em>Shiping Address</em></h2>
</td>
</div>
<table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   <th>Username</th>
                    <th>Address</th>
                    <th>City</th>
                    <th>State</th>
                    <th>Pincode</th>
                    <th>Country</th>
                    </thead>

<tr>
<td>${b.userName}</td>
<td>${b.address}</td>
<td>${b.city}</td>
<td>${b.state}</td>
<td>${b.pincode}</td>
<td>${b.country}</td>
</tr>

</table>
<c:if test="${not empty p}">
<div class="container">
<div class="row">
<div class="page-header">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;"><em>Products Details</em></h2>
</td>
</div>
  <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   
                     <th>Image</th>
                     <th>ProductName</th>
                     <th>ProductPrice</th>
                    <th>Quantity</th>
                     <th>Total price</th> 
                      
                   </thead>
	

<tr>
<td><img alt="" src="${req}/resources/img/product/${c.productId}.png" height="100px" width="100px"style="width:auto; style=hight:auto"/></td>
 
<td>${c.productName}</td>
<td>${c.productPrice}</td>
<td>${c.quantity}</td>
<td>${c.totalPrice}</td>

</tr>
</table>
</c:if>
	   
 <c:if test="${empty p}"> 
<div class="container">
<div class="row">
<div class="page-header">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;"><em>Products Details</em></h2>
</td>
</div>
  <table id="mytable" class="table table-bordred table-striped">
                      <thead>
                     <th>Image</th>
                     <th>ProductName</th>
                     <th>ProductPrice</th>
                    <th>Quantity</th>
                     <th>Total price</th> 
                   </thead>

<c:forEach items="${allcart}" var="pro">

<tr>
<td><img alt="" src="${req}/resources/img/product/${pro.productId}.png"  height="100px" width="100px"style="width:auto; style=hight:auto"/></td>
 
<td>${pro.productName}</td>
<td>${pro.productPrice}</td>
<td>${pro.productQuantity}</td>
<td>${pro.totalPrice}</td>

</tr>
</c:forEach>
</table>
 
<div class="carttotal">
<p style="color:black;"><font size="4">Grand Total </font><font size="4"> = ${grandtotal}</font></p>
</div> 

</c:if> 



<center><a href="${req}/thankyou" class="btn btn-warning"> Order Confrom</a></center>
<%@include file="Footer.jsp" %>
</body>
</html>