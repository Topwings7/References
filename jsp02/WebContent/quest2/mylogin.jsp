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
<%
	session.setAttribute("sessionId", "top");
	session.setAttribute("sessionPw", "123");
%>
<form action="logincheck.jsp" method="get">
	<input type="text" name="id">
	<input type="password" name="pass">
	<input type="submit" value="전송">
</form>
</body>
</html>