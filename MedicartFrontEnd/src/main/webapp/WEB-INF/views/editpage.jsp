<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>
      
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="req" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit</title>
</head>
<body>
<%@ include file="Landingpage.jsp" %>
<form:form action="${req}/update" method="post" modelAttribute="pro" enctype="multipart/form-data">

<center>
<h2>Admin</h2>
<hr>
<br>
<br> 
</center>
<table>

<tr><td><input  type="hidden" name="id" value="${pro.id}"/></td>
<tr><td>ProductName:<input type="text" name="productName" value="${pro.productName}"/></td>
<td>ProductPrice:<input type="text" name="productPrice" value="${pro.productPrice}"/></td>
<td>ProductDescription:<input type="text" name="productDescription" value="${pro.productDescription}"/></td>
<td>ProductCategory:<input type="text" name="productCategory" value="${pro.productCategory}"/></td>
<td>FileUpload<input type="file" name="file"  /></td>
<td><input type="submit" value="Submit" /></td></tr>

</table>
</form:form>
</body>
</html>