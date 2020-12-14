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
	int resultx = (Integer)request.getAttribute("result"); //Object가 들어가있어서
	int avg = (Integer)request.getAttribute("avg");
%>

총점은 :<%=resultx %>
평균은 :<%=avg %>
</body>
</html>