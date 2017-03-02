<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="req" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Landingpage</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-88591">
 <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script> 
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
<body>
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
<a class="navbar-brand" href="">MedICArt</a>
</div>
<div id="navbar" class="collapse navbar-collapse">
<ul class="nav navbar-nav">
<li ><a href="about">ABOUT</a></li>

<li><a href="admin">Admin</a></li> 

 <li class=" dropdown"> 
<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-hashpopup="true" aria-expanded="false">PRODUCTS AVAILABLE<span class="caret"></span></a> 
<ul class="dropdown-menu">
 <li class=" dropdown">
<a href="${req}/viewall" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">All Products</a>
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
<li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Register <span class="caret"></span></a>
<ul class="dropdown-menu dropdown-lr animated flipInX" role="menu">
<div class="col-lg-12">
<div class="text-center"><h3><b>Register</b></h3></div>
<form id="ajax-register-form" action="register" method=POST role="form"  autocomplete="off" >
<div class="form-group">
<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
</div>
<div class="form-group">
<input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email" value="">
</div>
<div class="form-group">
<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
</div>

<div class="form-group">
<div class="row">
<div class="col-xs-6 col-xs-offset-3">
<input type="submit" name="registersubmit" id="register-submit" tabindex="4" class="form-control btn btn-info" value="Register Now">
</div>
</div>
</div>
<input type="hidden" class="hide" name="token" id="token" value="7c6f19960d63f53fcd05c3e0cbc434c0">
</form>
 </div>
  </ul>
   </li>
   <li class="dropdown">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">Log In <span class="caret"></span></a>
  <ul class="dropdown-menu dropdown-lr animated slideInRight" role="menu">
      <div class="col-lg-12">
        <div class="text-center"><h3><b>Log In</b></h3></div>
         
      <form id="ajax-login-form" action="login" method=POST role="form"  autocomplete="off">
     <div class="form-group">
     <label for="id">Email</label>
      <input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email" value="" autocomplete="off">
     </div>

<div class="form-group">
<label for="password">Password</label>
  <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password" autocomplete="off">
     </div>
    
     <div class="col-xs-5 pull-right">
      <input type="submit" name="loginsubmit" id="login-submit" tabindex="4" class="form-control btn btn-success" value="Log Out">
  </div>
   <div class="col-xs-5 pull-left">
      <input type="submit" name="logoutsubmit" id="logout-submit" tabindex="4" class="form-control btn btn-success" value="Log In">
  </div>
    </div>
   </div>

       </div> 
  </form>
                            </div>
                        </ul>
                    </li>
                </ul>
			</div>
		</div>
	</nav>

</body>
</html>