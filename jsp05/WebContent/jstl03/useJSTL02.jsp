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
<%-- c:if test="${조건절}" --%>
	<c:if test="true">
	<%--참일때 실행 --%>
	무조건 실행<br>
	</c:if>
	<c:if test="false">
	실행안함
	</c:if>
	<c:if test="${20 < param.age }">
	<br>나이가 20보다큽니다
	</c:if>
	<%--if에서 var는 조건식의 결과값을 저장하는 변수 --%>
	<c:if test="${20 <param.age}"  var="result" scope="request">
	결과는 : ${result}
	</c:if>
	
	
	<%-- if-else대신 choose when, otherwise  switch문과 같음--%>
	<c:choose>
		<c:when test="${param.age > 30 }">30보다크다</c:when>
		<c:when test="${param.age > 20 }">20보다크다</c:when>
		<c:otherwise>작다	</c:otherwise>
	</c:choose>
</body>
</html>