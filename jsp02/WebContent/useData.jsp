<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useData.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<%
	//기본객체에 저장한 데이터를 사용
	String name = (String)pageContext.getAttribute("이름");
	out.print("pageContext : "+name+"<br>");
	
	String name01 = (String)request.getAttribute("이름");
	out.print("request : "+name01+"<br>");
	
	String name02 = (String)session.getAttribute("이름");
	out.print("session : "+name02+"<br>");
	
	String name03 = (String)application.getAttribute("이름");
	out.print("pageContext : "+name03+"<br>");
%>
</body>
</html>