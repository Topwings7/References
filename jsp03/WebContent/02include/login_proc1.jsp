<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
String userId = request.getParameter("userId");
String password = request.getParameter("password"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login_proc.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<h3>로그인 완료</h3>
<%-- 디렉티브 방식   //페이지정보나 설정 
	<%@include file="파일"        --인클루드가가능하다
	파일은 먼저 합치고 컴파일함.
	에러남  확장자를 jspf로 하면됨
	
	액션태그 구조 모양을 분할
	
	공통적으로 쓰는 변수를 공유해서 쓰기위함
--%>
<%@ include file="show.jspf" %>
</body>
</html>