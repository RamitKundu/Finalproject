<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="req" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Landingpage</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-88591">
 <link href="${req}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${req}/resources/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  /* Fixed navbar */
body {
    padding-top: 90px;
}
/* General sizing */
ul.dropdown-lr {
  width: 300px;
}

/* mobile fix */
@media (max-width: 768px) {
	.dropdown-lr h3 {
		color: #eee;
	}
	.dropdown-lr label {
		color: #eee;
	}
	#footer{
	padding-left:50px;
	text-align:center;
	font-size:90%;
	height:20px;
	}
	
  </style>

</head>
<body background="${req}/resources/img/images.png">
<header>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
 <div class="container-fluid">
<div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a class="navbar-brand" href="${req}/">MedICArt</a>
</div>
<div id="navbar" class="collapse navbar-collapse">
<ul class="nav navbar-nav">
<li ><a href="${req}/about">ABOUT</a></li>


 <li class=" dropdown"> 
<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-hashpopup="true" aria-expanded="false">PRODUCTS AVAILABLE<span class="caret"></span></a> 
<ul class="dropdown-menu">
 <li class=" dropdown">
<a href="${req}/viewall">All Products</a>
</li>

<li><a href="${req}/viewall/firstaid">First Aid</a></li>
<li><a href="${req}/viewall/menscare">Mens Care</a></li>
<li><a href="${req}/viewall/womenscare">Womens Care</a></li>
<li><a href="${req}/viewall/prescriptiondrugs">Prescription Drugs</a></li>
<li><a href="${req}/viewall/fitness">Fitness</a></li>
<li><a href="${req}/viewall/suppliments">Suppliments</a></li>
<li><a href="${req}/viewall/mothercare">Mother Care</a></li>
<li><a href="${req}/viewall/baby">Baby & Infants</a></li>
<li><a href="${req}/viewall/seniorcare">Senior Care</a></li>
 </ul>
  </li> 
   </ul>
 </li> 
</ul>


<ul class="nav navbar-nav navbar-right">

                                       <!-- CART -->
 <li ><a href="${req}/contact">Contact Us</a></li>
                                       
<li><a href="${req}/cart" class="btn btn-default"><span class="glyphicon glyphicon-shopping-cart">Cart</span></a></li>

<c:if test="${(not empty successmsg) || (not empty usermsg) || (not empty registermsg)}">

<li><a href="${req}/logout" >Logout</a></li>    <!--Using session  -->

</c:if>

<li class="dropdown">

<c:if test="${(empty successmsg) && (empty usermsg) && (empty registermsg)}">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Sign Up <span class="caret"></span></a> </c:if>

<ul class="dropdown-menu dropdown-lr animated flipInX" role="menu">
<div class="col-lg-12">
<div class="text-center"><h3><b>New User Register Here</b></h3></div>


<form id="ajax-register-form" action="register" method=POST  modelAttribute="user" autocomplete="off" >


<div class="form-group">
<input type="text" name="userName"  tabindex="1" class="form-control" placeholder="Username" >
</div>
<div class="form-group">
<input type="email" name="email"  tabindex="1" class="form-control" placeholder="Email" >
</div>
<div class="form-group">
<input type="password" name="password"  tabindex="2" class="form-control" placeholder="Password">
</div>

<div class="form-group">
<input type="contact" name="contact"  tabindex="2" class="form-control" placeholder="Contact">
</div>
<div class="form-group">
<input type="hidden" name="role"  tabindex="2" class="form-control" placeholder="Contact" value="user">
</div>


<div class="form-group">
<div class="row">
<div class="col-xs-6 col-xs-offset-3">
<input type="submit"  tabindex="4" class="form-control btn btn-info" value=" Register Now">
</div>
</div>
</div>
</form>
 </div>
  </ul>
   </li>
   <li class="dropdown">
 
 <c:if test="${(empty successmsg) && (empty usermsg) &&(empty registermsg)}">  
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Sign In <span class="caret"></span></a>
  <ul class="dropdown-menu dropdown-lr animated slideInRight" role="menu">
      <div class="col-lg-12">
        <div class="text-center"><h3><b>Log In</b></h3></div>
        
         
      <form id="ajax-login-form" action="validate"  method=POST >
     <div class="form-group">
     <label for="id">Email</label>
      <input type="email" name="email"  tabindex="1" class="form-control" placeholder="Email" >
     </div>
     
     

<div class="form-group">
<label for="password">Password</label>
  <input type="password" name="password" tabindex="2" class="form-control" placeholder="Password">
     </div>
     
    <!--   <div class="form-group">
<label for="contact">Contact</label>
  <input type="hidden" name="contact" tabindex="2" class="form-control" placeholder="Contact">
     </div>
     
     <div class="form-group">
<label for="role">Role</label>
  <input type="hidden" name="role" tabindex="2" class="form-control" placeholder="Role">
     </div>
     <div class="form-group">
<label for="userName">Username</label>
  <input type="hidden" name="userName" tabindex="2" class="form-control" placeholder="Username">
     </div>-->
     
                                              <!--Using Session  -->
    
    
     <div class="col-xs-5 pull-right">
      <input type="submit"     tabindex="4" class="form-control btn btn-success" value="Log In">
  </div>
 
  </form>
  
  </c:if>
  
  </form>
</div>

</div>
 </div> 
 
 </div>
 </ul>
 </li>
 </ul>
</div>
</div>
</nav>
</body>
</html>