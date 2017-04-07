<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <c:set var="req" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Medicart</title>
 <link href="${req}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${req}/resources/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>


.container {
    margin-top: 20px;
}

/* Carousel Styles */
.carousel-indicators .active {
    background-color: #2980b9;
}

.carousel-inner img {
    width: 100%;
    max-height: 460px
}

.carousel-control {
    width: 0;
}
.carousel-control.left,
.carousel-control.right {
	opacity: 1;
	filter: alpha(opacity=100);
	background-image: none;
	background-repeat: no-repeat;
	text-shadow: none;
}
.carousel-control.left span {
	padding: 15px;
}

.carousel-control.right span {
	padding: 15px;
}

.carousel-control .glyphicon-chevron-left, 
.carousel-control .glyphicon-chevron-right, 
.carousel-control .icon-prev, 
.carousel-control .icon-next {
	position: absolute;
	top: 45%;
	z-index: 5;
	display: inline-block;
}
.carousel-control .glyphicon-chevron-left,
.carousel-control .icon-prev {
	left: 0;
}
.carousel-control .glyphicon-chevron-right,
.carousel-control .icon-next {
	right: 0;
}
/* Carousel Header Styles */
.header-text {
    position: absolute;
    top: 20%;
    left: 1.8%;
    right: auto;
    width: 96.66666666666666%;
    color: #fff;
}
.header-text h2 {
    font-size: 40px;
}
.header-text h2 span {
    background-color: #2980b9;
	padding: 10px;
}
.header-text h3 span {
	background-color: #000;
	padding: 15px;
}
.btn-min-block {
    min-width: 170px;
    line-height: 26px;
}
.btn-theme {
    color: #fff;
    background-color: transparent;
    border: 2px solid #fff;
    margin-right: 15px;
}
.btn-theme:hover {
    color: #000;
    background-color: #fff;
    border-color: #fff;
}
.header-text h2 span{
background-color: rgba(0,0,0,0);
}
.header-text h3 span{
background-color: rgba(0,0,0,0);
}

</style>
<%@ include file="Landingpage.jsp" %>
</head>

<body>

<div class="container">
    <div class="row">
        <div class="col-xs-12 text-center"> <b>M &nbsp e &nbsp d &nbsp I &nbsp C &nbsp A &nbsp r &nbsp t</b></h2>
        
        <!-- Show user after validation -->

</div>
    </div>
</div>
   </header>  
 <div class="container">
	<div class="row">
		<!-- Carousel -->
    	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
			  	<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
			    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
			</ol>
			<!-- Wrapper for slides -->
			<div class="carousel-inner">
			    <div class="item active">
			    	<img src="resources/img/1.png" alt="First slide">
                    <!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                            	<span>Welcome to MedICArt</span>
                            </h2>
                            <br>
                            <h3>
                            	<span>Get great offers and discounts..</span>
                            </h3>
                            <br>
                            
                        </div>
                    </div><!-- /header-text -->
			    </div>
			    <div class="item">
			    	<img src="resources/img/10.png" alt="Second slide">
			    	<!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                                <span>Welcome to MedICArt</span>
                            </h2>
                            <br>
                            <h3>
                            	<span>Get great offers and discounts..</span>
                            </h3>
                            <br>
                            
                        </div>
                    </div><!-- /header-text -->
			    </div>
			    <div class="item">
			    	<img src="resources/img/8.png" alt="Third slide">
			    	<!-- Static Header -->
                    <div class="header-text hidden-xs">
                        <div class="col-md-12 text-center">
                            <h2>
                                <span>Welcome to MedICArt</span>
                               </h2>
                            <br>
                            <h3>
                            	<span>Get great offers and discounts..</span>
                            </h3>
                            <br>
                            
                        </div>
                    </div><!-- /header-text -->
			    </div>
			</div>
			<!-- Controls -->
			
		</div><!-- /carousel -->
	</div>
</div> 

<div class="container">
  
  <div class="row">
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="${req}/abc/1298" target="_parent">
          <img src="resources/img/nutrigen.png" alt="Nutrigen" style="width:100%">
          <div class="caption">
            <p><b>Discount offers on display</b></p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="${req}/abc/1299" target="_parent">
          <img src="resources/img/vitaminD3.png" alt="Vitamin" style="width:100%">
          <div class="caption">
            <p><b>Discount offers on display</b></p>
          </div>
        </a>
      </div>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="${req}/abc/1301" target="_parent">
          <img src="resources/img/slim.png" alt="SlimMom" style="width:100%">
          <div class="caption">
            <p><b>Discount offers on display</b></p>
          </div>
        </a>
      </div>
    </div>
  </div>
</div>
&nbsp
&nbsp 
<%@ include file="Footer.jsp" %>
</div>
</body>
</html>
