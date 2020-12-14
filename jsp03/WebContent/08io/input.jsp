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
	//사용자 숫자 5개 입력 세이브버튼
	//sava.jsp
	//save.jsp num.text기록 후
	//저장완료
%>
	<form action="save.jsp" >
		<input type="text" name="su1"><br>
		<input type="text" name="su2"><br>
		<input type="text" name="su3"><br>
		<input type="text" name="su4"><br>
		<input type="text" name="su5"><br>
		<input type="submit" value="저장">
	</form>
</body>
</html>