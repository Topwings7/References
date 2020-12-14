<%@page import="java.time.LocalDate"%>
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
<%-- jsp 주석  
html주석도 jsp파일에서 java파일로 변하기 때문에 실제로 자바코드에 적용이 된다
따라서 주석으로 자바가 컴파일 하지 않도록 하려면 jsp주석을 써야한다.
--%>
<!-- 자바소스로 변하는 html 주석 -->
<%-- 자바 문법을 쓰기위한 스크립트릿 --%>
<% 
	//자바문법을 사용가능
	LocalDate today = LocalDate.now();
	System.out.println("콘솔에 출력.");
%>
	<%-- 표현식 <%=값 %> --%>
	오늘은 <%=today.getDayOfMonth() %>일<br>
	<%	
		int num1 = 10;
		int num2 = 20;
		out.print("두 수의 합: "+(num1+num2));
	%>
	두 수의 합 :<%=num1+num2 %>
	
</body>
</html>