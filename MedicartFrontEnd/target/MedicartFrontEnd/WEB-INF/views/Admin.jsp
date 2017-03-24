<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <c:set var="req" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminPage</title>
 <link href="${req}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${req}/resources/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

#playground-container {
    height: 500px;
    overflow: hidden !important;
    -webkit-overflow-scrolling: touch;
}
body, html{
     height: 100%;
 	background-repeat: no-repeat;
 	
 	font-family: 'Oxygen', sans-serif;
	    background-size: cover;
}


.main{

 	margin:50px 15px;
}


hr{
	width: 10%;
	
}

.form-group{
	margin-bottom: 15px;
}

label{
	margin-bottom: 15px;
}

input,
input::-webkit-input-placeholder {
    font-size: 11px;
    padding-top: 3px;
    
}

.form-control {
    height: auto!important;
padding: 8px 12px !important;

}

.main-center{
 	margin-top: 30px;
 	margin: 0 auto;
 	max-width: 400px;
    padding: 10px 40px;
	background:#EAFAF1  ;
	    color: #FFF;
    text-shadow: none;
	-webkit-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
-moz-box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
box-shadow: 0px 3px 5px 0px rgba(0,0,0,0.31);
color: white;
    text-shadow: 1px 1px 2px black, 0 0 25px blue, 0 0 5px darkblue;

}


.login-button{
	margin-top: 5px;
	
}

.login-register{
	font-size: 11px;
	text-align: center;
}


</style>
<%@ include file="Landingpage.jsp" %>
</head>
<body>
<center><h1>Admin Product Details</h1></center>
<div class="container">
			<div class="row main">
				<div class="main-login main-center">
				<center><h5>Insert Product Details</h5></center>
				
					<form action="adminproduct"  method="post" modelAttribute="pro" enctype="multipart/form-data" >
						
						<div class="form-group">
							<label  class="cols-sm-2 control-label">Product Name</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<input type="text" class="form-control" name="productName"  placeholder="Enter Product Name"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label  class="cols-sm-2 control-label">Product Price</label>
							<div class="cols-sm-10">
								<div class="input-group">
									
									<input type="text" class="form-control" name="productPrice"   placeholder="Enter Product Price"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label  class="cols-sm-2 control-label">Product Description</label>
							<div class="cols-sm-10">
								<div class="input-group">
									
									<input type="text" class="form-control" name="productDescription"   placeholder="Enter Product Description"/>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label  class="cols-sm-2 control-label">Product Category</label>
							<div class="cols-sm-10">
								<div class="input-group">
							
									<input type="radio" name="productCategory" value="firstaid"> FirstAid<br>
                                     <input type="radio" name="productCategory" value="menscare"">MensCare<br>
                                     <input type="radio" name="productCategory" value="womenscare">WomensCare<br>
                                     <input type="radio" name="productCategory" value="prescriptiondrugs">PrescriptionDrugs<br>
                                     <input type="radio" name="productCategory" value="fitness">Fitness<br>
                                     <input type="radio" name="productCategory" value="suppliments">Suppliments<br>
                                     <input type="radio" name="productCategory" value="mothercare">MotherCare<br>
                                     <input type="radio" name="productCategory" value="baby">Baby<br>
                                     <input type="radio" name="productCategory" value="seniorcare">SeniorCare<br>
								</div>
							</div>
						</div>
						
						<div class="form-group">
							<label  class="cols-sm-2 control-label">Upload File</label>
							<div class="cols-sm-10">
								<div class="input-group">
									
									<input type="file" class="form-control" name="file"  placeholder="Upload"/>
								</div>
							</div>
						</div>

						<div class="form-group ">
							<input type="submit"   class="btn btn-primary" value="Submit" />
						</div>
						
					</form>
				</div>
			</div>
		</div>
		<%@ include file="Footer.jsp" %>

</body>
</html>