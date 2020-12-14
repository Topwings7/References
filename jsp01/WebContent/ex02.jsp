<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script >
window.addEventListener("DOMContentLoaded",function(){
	timer = setInterval(() => {
	var span = document.querySelector("span");
	var time = new Date();
	var sec = time.getSeconds();
	span.innerHTML = sec;
	}, 1000);
});
</script>

</head>
<body>
<%
	LocalDate today = LocalDate.now();
	LocalTime now = LocalTime.now();
	int su1 = 20;
	int su2 = 10;
	int rs1 = su1-su2;
	int rs2 = su1*su2;
%>
	올해는   : <%=today.getYear() %>년<br>
	이번달은 : <%=today.getMonthValue() %>월<br>
	지금은 : 	<%=now.getHour() %>시 <%=now.getMinute() %>분 <span></span>초<br>
	두수의차 :<%=rs1 %><br>
	두수의곱 :<%=rs2 %><br>
	
</body>
</html>