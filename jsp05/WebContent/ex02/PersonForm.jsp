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
		<input type="text" name="name" placeholder="이름" value="박하나">
		<input type="date" name="bir" placeholder="생일" value="2000-01-01">
		<input type="text" name="email" placeholder="이메일" value="a@.com">
		<input type="number" name="carnumber" placeholder="차남바" value="4885">
		<input type="number" name="mileage" placeholder="주행거리" value="70000">
		<input type="text" name="carname" placeholder="차이름" value="K5">
		<input type="text" name="carbrand" placeholder="차브랜드" value="KIA">
		<input type="text" name="model" placeholder="폰모델" value="NOTE9">
		<input type="text" name="color" placeholder="폰색상" value="silver">
		<input type="text" name="brand" placeholder="폰브랜드" value="SAMSUNG">
		<input type="date" name="create" placeholder="폰제조일" value="2020-10-10">
		<button>전송</button>
	</form>
</body>
</html>