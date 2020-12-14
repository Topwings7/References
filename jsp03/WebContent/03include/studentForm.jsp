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
	<form action="data.jsp" method="post">
		이름  : <input type="text" name="name"><br>
		국어점수 : <input type="text" name="kor"> <br>
		영어점수 :<input type="text" name="eng"><br>
		수학점수 :<input type="text" name="math"><br>
		사회점수 :<input type="text" name="soc"><br>
		과학점수 :<input type="text" name="sci"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>