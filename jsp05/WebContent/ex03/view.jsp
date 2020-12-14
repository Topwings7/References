<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<c:choose>
		<c:when test="${sc.kor >= 100}">A</c:when>
		<c:when test="${sc.kor >= 90}">B</c:when>
		<c:when test="${sc.kor >= 80}">C</c:when>
		<c:when test="${sc.kor >=70}">D</c:when>
		<c:when test="${sc.kor >=60}">F</c:when>
	</c:choose>
</body>
</html>