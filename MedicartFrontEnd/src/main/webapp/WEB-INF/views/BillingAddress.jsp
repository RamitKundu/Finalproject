<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="req" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${req}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${req}/resources/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<%@ include file="Landingpage.jsp" %>
<title>BillingAddress</title>
</head>
<body>
          <!-- Form Name -->
          <center><var><h1><b>Billing Details</b></h1></var></center>
          <hr>
<div class="row">
    <div class="col-md-4 col-md-offset-4">
      <form class="form-horizontal" role="form" action="${req}/shippingpage">
  
          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Name</label>
            <div class="col-sm-10">
              <input type="text" placeholder="name" class="form-control" name="userName" value="${user.userName }" disabled>
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Email</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Email" class="form-control" name="email" value="${user.email}" disabled>
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Contact</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Contact" class="form-control" name="contact" value="${user.contact}" disabled>
            </div>
          </div>
          
          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Address</label>
            <div class="col-sm-10">
              <input type="text" placeholder="Address" class="form-control" name="address" value="${user.address}" disabled>
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">State</label>
            <div class="col-sm-4">
              <input type="text" placeholder="State" class="form-control" name="state"  value="${user.state}" disabled>
            </div>

            <label class="col-sm-2 control-label" for="textinput">Pincode</label>
            <div class="col-sm-4">
              <input type="text" placeholder="Post Code" class="form-control" name="pin" value="${user.pin}" disabled>
            </div>
          </div>




          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
                
                <button type="submit" class="btn btn-primary">Next</button>
              </div>
            </div>
          </div>

       
      </form>
      </div>
      </div>
   
  <%@ include file="Footer.jsp" %> 
</body>

</html>