<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style><%@include file="/WEB-INF/resources/css/templatemo_style.css"%></style>
</head>
<body>
	<h3>Book List</h3>
	<table style=" margin: auto;">
		<c:forEach var="b" items="${requestScope.book_list}">

			<tr>
				<td>${b.bookName}</td>
				<td>${b.bookDescription}</td>
				<td>${b.bookPublication}</td>
				<td>${b.bookCondition}</td>
				<td>${b.bookPrice}</td>
				<td>${b.bookInStock}</td>

				<td><a href="<spring:url value='/admin/update?bookId=${b.bookId}'/>">Update</a></td>
				<td><a href="<spring:url value='/admin/delete?bookId=${b.bookId}'/>">Delete</a></td>

			</tr>
		</c:forEach>
	</table>
	<h5>
		<a href="<spring:url value='/admin/AddBook'/>">Add a New Book</a>
	</h5>

</body>
</html>