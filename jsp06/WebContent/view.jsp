<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<p>이름 :${person.name}
	<p>생일 :${person.birth }
	<p>차번호:${person.car.carnumber }
	<p>주행거리:${person.car.mileage }
	<p>차이름:${person.car.carname }
	<p>차회사:${person.car.carbrand }
	<p>
	<c:forEach items="${person.phonelist }" var="i" >
	폰번호:${i.model }<br>
	폰색상:${i.color }<br>
	폰브랜드:${i.brand }<br>
	폰제조일:${i.createDate }<br>
	<br>
	</c:forEach>
</body>
</html>