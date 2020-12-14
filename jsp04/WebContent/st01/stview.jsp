<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<h2>입력값</h2>
	<p>이름: <jsp:getProperty property="name" name="st"/></p>
	<p>생일: <jsp:getProperty property="birthDate" name="st"/></p>
	<p>국어: <jsp:getProperty property="kor" name="st"/></p>
	<p>영어: <jsp:getProperty property="eng" name="st"/></p>
	<p>수학: <jsp:getProperty property="math" name="st"/></p>
</body>
</html>