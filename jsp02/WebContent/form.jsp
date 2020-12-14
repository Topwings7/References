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
	<form action="paramInfo.jsp" method="get">
		<input type="text" name="name" placeholder="이름을 입력"><br>
		<input type="text" name="name" placeholder="주소를 입력"><br>
		<fieldset>
			<legend>성별</legend>
			<label>남 : <input type="radio" name="sex" value="m"> </label>
			<label>여 : <input type="radio" name="sex" value="w"> </label>
		</fieldset>
		<input type="submit" value="전송">
	</form>
</body>
</html>