<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<form action="${conPath }/add.do">
	<input type="text" name="productId" value="c001" placeholder="상품아이디"><br>
	<input type="text" name="productName" value="콤퓨타" placeholder="상품이름"><br>
	<input type="text" name="price" value="100" placeholder="가격"><br>
	<button>추가</button>
	</form>
	<button onclick="location.href='${conPath}/view.do'">목록보기</button>
</body>
</html>