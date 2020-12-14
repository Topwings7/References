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
<form action="checkboxRs.jsp">
	빨강<input type="checkbox" name="color" value="red"><br>
	노랑<input type="checkbox" name="color" value="yellow"><br> 
	파랑<input type="checkbox" name="color" value="blue"> <br>
	보라<input type="checkbox" name="color" value="puple"><br>
	날짜<input type="date" name="date"><br>
	수1:<input type="text" name="su1"><br> 
	수2:<input type="text" name="su2"> <br>
	<input type="submit" value="전송">

</form>
</body>
</html>