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
<form action="process.jsp" method="post">
	<input type="text" name="name" value="오하나">
	<input type="text" name="title" value="이것이자바다">
	<input type="text" name="publisher" value="남궁"> 
	<input type="number" name="price" value="26000">
	<input type="text" name="title" value="실전SQL">
	<input type="text" name="publisher" value="디비"> 
	<input type="number" name="price" value="35000">
	<input type="text" name="title" value="JSP">
	<input type="text" name="publisher" value="내가">
	<input type="number" name="price" value="45000">
	<input type="text" name="title" value="제목">
	<input type="text" name="publisher" value="니가">
	<input type="number" name="price" value="60000000">
	<button>전송</button>
</form>
</body>
</html>