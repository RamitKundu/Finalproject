<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <c:set var="req" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="${req}/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${req}/resources/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>About</title>
<%@ include file="Landingpage.jsp" %>
</head>
<body>
<center>

<h2>About Us</h2>
<hr>
<h1><i><b>Who we are?</i></h1></b>
<br>
<p><strong>MedICArt</strong>,  one of India's most trusted online pharmacy, with over 2 years experience in dispensing quality medicines. At <strong>MediCart.com</strong>, we help you look after your own health effortlessly as well as take care of loved ones wherever they may reside in India. You can buy and send medicines from any corner of the country - with just a few clicks of the mouse.</p> 
<br>
<h1><i><b>What we do?</i></h1></b>
<br>
<p>At <strong>MedICArt.com</strong>, we make a wide range of prescription medicines and other health products conveniently available all across India. Even second and third tier cities and rural villages can now have access to the latest medicines. Since we also offer generic alternatives to most medicines, online buyers can expect significant savings.</p>
</center>
<%@ include file="Footer.jsp" %>
</body>
</html>