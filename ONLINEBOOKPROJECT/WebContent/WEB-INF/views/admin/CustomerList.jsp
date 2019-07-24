<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h4>Last Action Status : ${requestScope.status}</h4>
	<h3>Customer List</h3>
	<table style="background-color: cyan; margin: auto;">
		<c:forEach var="c" items="${requestScope.customer_list}">

			<tr>
				<td>${c.customeName}</td>
				<td>${c.customerEmail}</td>
				<td>${c.customerPhone}</td>
				<td>${c.userName}</td>
				<td>${c.address}</td>
				<td><a href="<spring:url value='/admin/update?customer_id=${c.customer_id}'/>">Update</a></td>
				<td><a href="<spring:url value='/admin/delete?customer_id=${c.customer_id}'/>">Delete</a></td>

			</tr>
		</c:forEach>
	</table>
	<h5>
		<a href="<spring:url value='/admin/BookList'/>">CLICK TO SEE BOOK LIST</a>
	</h5>

</body>
</html>