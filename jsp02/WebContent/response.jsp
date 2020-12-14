<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<h3>response 객체</h3>
	jsp에서 사용하는 기본객체
	웹브라우저에 응답 정보를 담아서 보내는 역할
	<hr>
	response는 헤더에 쿠키관련된 정보를 설정할 수 있음.<br>
	response.setHeader("Cache-Controller", "no_cache");
	<hr>
	
	리다이렉트(브라우저에게 해당 페이지를 다시 요청해라!)<br>
	response.sedRedirect("요청할 페이지 주소");
</body>
</html>