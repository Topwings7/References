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
	<h3>출력</h3>
	이름 : ${person.name } <br>
	생일 : ${person.birth }<br>
	이메일 : ${person.email }<br>
	차번호 : ${person.car.carnumber }<br>
	주행거리 : ${person.car.mileage }<br>
	차종 : ${person.car.carbrand }<br>
	폰종류 : ${person.phone.model }<br>
	폰색상 : ${person.phone.color }<br>
	브랜드 : ${person.phone.brand }<br>
	제조일 : ${person.phone.createDate }<br>
</body>
</html>