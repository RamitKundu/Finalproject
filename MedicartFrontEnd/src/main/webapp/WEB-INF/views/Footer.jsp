<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <c:set var="req" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminPage</title>
 <link href="${req}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${req}/resources/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title></title>
<style>
  .footer{
  color:white;
  background-color:black;
  hight:120px;
  }
  .social li {
	
	float: left;
	height: 36px;
	line-height: 36px;
	
	padding: 0;
	text-align: center;
	width: 36px;
	
}

.icon {
width:25px;
height:25px;
display:block;
text-indent:-9999px;
background-image:url(http://tridentdesign.com/wp-content/uploads/2012/12/gemicon.jpg);
background-repeat:no-repeat;
}

.facebook {
background-position:-140px -115px;
}
.twitter {
background-position:-185px -115px;
}
.googleplus {
background-position:-140px -265px;
}
  </style>
</head>

<body>

 <div class="footer" data-animate="fadeInUp" >

            <div class="container">
                <div class="row">
                <div class="pull-left">
                        <h4>Links</h4>

                        <ul>
                            <li><a href="${req}/gotoabout">About us</a>
                            </li>
                            
                            
							<li><a href="${req}/gotocontact">Contact us</a>
                            </li>
                        </ul>
                        </div>
                        <div class="pull-right">
                        <h4>Social Links</h4>

                        <ul class="social">
                        <li> <a href="https://www.facebook.com/"> <i class="icon facebook">   </i> </a> </li>
                        <li> <a href="https://twitter.com/"> <i class="icon twitter">   </i> </a> </li> 
                        <li> <a href="https://plus.google.com/"> <i class="icon googleplus">   </i> </a> </li>
                    </ul>
                        </div>
                     

            
            <!-- /.container -->
        </div>
          <div id="copyright">
            <div class="container">
              
                    <p class="pull-right">© 2017 MedICArt.</p>
                <div class="col-md-6">
                    <p class="pull-right"> <a href="https://bootstrapious.com/e-commerce-templates"></a>
                        <!-- Not removing these links is part of the license conditions of the template. Thanks for understanding :) If you want to use the template without the attribution links, you can do so after supporting further themes development at https://bootstrapious.com/donate  -->
                    </p>
                </div>
            </div>
        </div>
        </div>
        </div>
      
        <!-- *** COPYRIGHT END *** -->


    
</body>
</html>