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
	<form action="paramInfo01.jsp">
	숫자 : 
	<input type="number" name="num1" placeholder="숫자1">
	<input type="number" name="num2" placeholder="숫자2">
	<hr>
	날짜 : <input type="date" name="date"><br>
	<fieldset>
		<legend>체크박스</legend>
		<label>자바 <input type="checkbox" name="language" value="java"> </label>
		<label>html <input type="checkbox" name="language" value="html"> </label>
		<label>python <input type="checkbox" name="language" value="python"> </label>
	</fieldset>
	<input type="submit" value="전송">
	</form>
</body>
</html>