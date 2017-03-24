
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--Favicons -->
<link rel="shortcut icon" href="images/favico.ico">

<title>Medicart</title>

</head>
<body>
	<%@include file="Landingpage.jsp"%>

	<h5>${b4cart}</h5>



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
									class="img-responsive" style="width:auto" style= "heightauto></img>

								</a>
							</div>



							<div class="btn-group wishlist ">

								</center>
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
								<p class="lead" style="color: black; font-weight: normal">${pro.productPrice}</p>
								<hr>

								<h2>Product Quantity:</h2>
								<form id="addToCart" action="${req}/myCart/${pro.id}"
									method="post">
									<select name="productQuantity">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
									</select> <input type="submit" value="Add to cart"
										class="btn btn-primary">
									<button type="button" float: right; class="btn btn-danger"
										style="font-size: 12px">Buy Now</button>
								</form>
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
