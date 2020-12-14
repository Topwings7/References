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
<%--
	서버위치를 기준으로 파일 경로를 찾음
	상대경로, 절대경로
	상대경로 : 현제 파일위치 http://localhost:8080/ex03/06path/path.jsp     
							 /localhost:8080/"프로젝트명"/"WebContent기준폴더명/"파일명"
	상위 : ..
	하위 : 폴더명/폴더명
	절대경로: /를 시작으로 함. /로 시작하면 root로부터 시작한다.
	root -> WebContent가 현재 root
 <jsp:forward page="06_1/06_1_1/a.jsp"/>
 --%>
 <jsp:forward page="/06path/06_1/06_1_1/a.jsp"/> 
</body>
</html>