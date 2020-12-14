<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<form action="${conPath }/process" method="post">
		<input type="text" name="name" placeholder="이름" value="박하나"><br>
		<input type="date" name="birth" placeholder="생일" value="2000-01-01"><br>
		<input type="text" name="email" placeholder="이메일" value="a@.com"><br>
		<input type="number" name="carnumber" placeholder="차남바" value="4885"><br>
		<input type="number" name="mileage" placeholder="주행거리" value="70000"><br>
		<input type="text" name="carname" placeholder="차이름" value="K5"><br>
		<input type="text" name="carbrand" placeholder="차브랜드" value="KIA"><br>
		<input type="text" name="model" placeholder="폰모델" value="NOTE9"><br>
		<input type="text" name="model" placeholder="폰모델" value="V40"><br>
		<input type="text" name="model" placeholder="폰모델" value="GALAXY"><br>
		<input type="text" name="color" placeholder="폰색상" value="red"><br>
		<input type="text" name="color" placeholder="폰색상" value="blue"><br>
		<input type="text" name="color" placeholder="폰색상" value="black"><br>
		<input type="text" name="brand" placeholder="폰브랜드" value="SAMSUNG"><br>
		<input type="text" name="brand" placeholder="폰브랜드" value="LG"><br>
		<input type="text" name="brand" placeholder="폰브랜드" value="ANICALL"><br>
		<input type="date" name="create" placeholder="폰제조일" value="2020-10-10"><br>
		<input type="date" name="create" placeholder="폰제조일" value="2020-10-11"><br>
		<input type="date" name="create" placeholder="폰제조일" value="2020-10-12"><br>
		<button>전송</button>
	</form>
</body>
</html>