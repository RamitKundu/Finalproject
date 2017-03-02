<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AdminPage</title>
 <link href="resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body {
   background-color:#D5F5E3  ;
}

</style>
<%@ include file="Landingpage.jsp" %>
</head>
<body>
<center>
<h2>Admin</h2>
</center>
<hr>
<form:form action="adminproduct" method="post" modelAttribute="pro" enctype="multipart/form-data">

<table>

<tr><td>ProductName:<input type="text" name="productName"/></td>
<td>ProductPrice:<input type="text" name="productPrice"/></td>
<td>ProductDescription:<input type="text" name="productDescription"/></td>
<td>ProductCategory:<input type="text" name="productCategory"/></td>
<td>FileUpload<input type="file" name="file" /></td>
<td><input type="submit" value="Submit" /></td></tr>

</table>
</form:form>

</body>
</html>