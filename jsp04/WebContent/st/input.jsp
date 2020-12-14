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
	<form action="View.jsp" method="post">
	 <p><input type="text" name="name" placeholder="이름"></p>
	 <p><input type="date" name="birthDate" placeholder="생일"> </p>
	 <p><input type="number" name="kor" placeholder="국어"> </p>
	 <p><input type="number" name="eng" placeholder="영어"> </p>
	 <p><input type="number" name="math" placeholder="수학"> </p>
	 <p><button>전송</button></p>
	</form>
</body>
</html>