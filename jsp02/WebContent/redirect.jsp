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
<h3>로그인</h3>
<form action="log_proc.jsp" method="post">
	<input type="text" name="userId" placeholder="아이디">
	<input type="password" name="password"><br>
	<input type="submit" value="로그인">
</form>
</body>
</html>