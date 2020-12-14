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
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		String date = request.getParameter("birth");
		String sex = request.getParameter("sex");
		String select = request.getParameter("select");
	%>
	이름 :<%=name %><br>
	나이 :<%=age %><br>
	주소 :<%=address %><br>
	이메일:<%=email %><br>
	생일 :<%=date %><br>
	성별 :<%=sex %><br>
	점심 :<%=select %><br>
</body>
</html>