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
<form action="paramInfoEx.jsp">
	<input type="text" name="name">
	<input type="text" name="age">
	<input type="text" name="address">
	<input type="text" name="email">
	<input type="date" name="birth">
	<input type="radio" name="sex" value="m">남
	<input type="radio" name="sex" value="w">여
	
	<select name="select">
		<option>돈까스</option>
		<option>햄버거</option>
		<option>즂같아</option>
	</select>
	<input type="submit" value="전송">
</form>
</body>
</html>