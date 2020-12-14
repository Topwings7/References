<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//request로 직접 파라미터를 받아야함
	String userId = request.getParameter("userId");
	String password = request.getParameter("password"); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<div>
		환영합니다.<%=userId %>
		비번: <%=password %>
	</div>
</body>
</html>