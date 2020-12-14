<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<%
		String[] color = request.getParameterValues("color");
		String dateStr = request.getParameter("date");
		LocalDate date = LocalDate.parse(dateStr);
		int su1 = Integer.parseInt(request.getParameter("su1"));
		int su2 = Integer.parseInt(request.getParameter("su2"));
		LocalDate tenAgo = date.plusDays(10);
	%>
	10일후 : <%=tenAgo %>일<br>
	<%
	String outcolor = "";
	for(String c : color){
			outcolor += c+" ";
	}
	%>
	선택한 컬러는 : <%=outcolor %>
</body>
</html>