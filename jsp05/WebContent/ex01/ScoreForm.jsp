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
	<form action="process.jsp">
		이름 : <input type="text" name="name" placeholder="이름"><br>
		생일 : <input type="date" name="birth" ><br>
		국어 : <input type="number" name="kor" min="0" max="100"><br>
		영어 : <input type="number" name="eng" min="0" max="100"><br>
		수학 : <input type="number" name="math" min="0" max="100"><br>
		<button>전송</button>
	</form>
</body>
</html>