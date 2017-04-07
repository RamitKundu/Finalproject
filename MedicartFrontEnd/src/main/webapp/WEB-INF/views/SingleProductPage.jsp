<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <c:set var="req" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SingleProductPage</title>
<link href="${req}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${req}/resources/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <script>
function myFunction() {
    alert("Hello\nPlease Login before adding to Cart");
}
</script>
 
  <script>
function myFunction1() {
    alert("Hello\nPlease Login before Buying ");
}
</script>


</head>
<body>

<%@include file="Landingpage.jsp"%>

	
<h3>${cartmsg}</h3>


	<div class="container-fluid">

		<div class="content-wrapper">

			<div class="item-container">

				<div class="container">


					<div class="row featurette">

						<div class="col-md-5">
							<div>
								<a id="item-1" class="service1-item"> <img alt=""
									src="${req}/resources/img/product/${pro.id}.png" alt="xyz"
									height="400" width="350" class="img thumbnail"
									class="img-responsive" style="width:auto" Style="height:auto"></img>

								</a>
							</div>



							<div class="btn-group wishlist ">

								
							</div>

						</div>


						<div class="col-md-5 ">
							<div style="float: right">
								<h2>Product Name:</h2>
								<h2 class="featurette-heading"
									style="color: black; font-weight: bold;">
									<i><b>${pro.productName}</b></i><span class="text-muted"> </span>
								</h2>
								<h2>Product Details: </h2>
								<p class="lead" style="color: solid balck; font-size: 20px">${pro.productDescription}</p>
                                
                                <h2>Product Price: </h2>
								<p class="lead" style="color: black; font-weight: normal"> &#8377 ${pro.productPrice}</p>
								<hr>
								<c:if test="${empty successmsg}"><h2>Product Quantity:</h2>
								
								<form id="addToCart" action="${req}/myCart/${pro.id}"
									method="post">
									<select name="productQuantity">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
									</select>
									<c:if test="${empty useremail }">
									 <input type="submit" value="Add to cart"
										class="btn btn-primary" onclick="myFunction()" >
										<!-- USE IT LATER<a href="${req}/billingAddress/${pro.id}" class="btn btn-info" onclick="myFunction1()" allign="right" >BuyNow</a>-->
										</c:if>
										<c:if test="${not empty useremail }">
									 <input type="submit" value="Add to cart"
										class="btn btn-primary"  >
	    <a href="${req}/billingpage/${pro.id}" class="btn btn-info" allign="right" >BuyNow</a></c:if>   
								</form>
								</c:if>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<%@include file="Footer.jsp"%>

</body>
</html>