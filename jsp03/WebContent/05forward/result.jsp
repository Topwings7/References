<%@page import="java.util.Arrays"%>
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
<%
	String name = request.getParameter("name");
	String[] temp = request.getParameterValues("point");
	int[] point = Arrays.stream(temp).mapToInt(Integer::parseInt).toArray();
	
	int result = 0;
	for(int i = 0 ; i < point.length; i++){
		result += point[i];
	}
	int avg = result/point.length;
	request.setAttribute("result", result); //객체가들어간다 캐스팅주의 int >> Integer
	request.setAttribute("avg", avg);
%>
<jsp:forward page="show.jsp"/>
</body>
</html>