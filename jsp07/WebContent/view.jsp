<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결과 화면</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	이름 : ${person.name }
	<c:forEach var="book" items="${person.booklist }">
		책이름 : ${book.title }
		저자	 : ${book.publisher }
		가격	 : ${book.price }
		<fmt:formatNumber value="${book.price}" pattern="#,###"/>
		<hr>
	</c:forEach>
</body>
</html>