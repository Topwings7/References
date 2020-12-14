<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	//name, address, sex
    	//리퀘스트 요청파라미터를 받아보자
    	String name = request.getParameter("name");
    	String address = request.getParameter("address");
    	String sex = request.getParameter("sex");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	파라미터로 전달받은 값!!<br>
	이름은 : <%=name %><br>
	주소는 : <%=address %><br>
	성별 : <%=sex %>
</body>
</html>