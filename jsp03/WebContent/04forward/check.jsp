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
//	숫자가 5보다 작으면 a
//	5보다 크면 b
//	forward를 이용한 페이지 전환

 int num = Integer.parseInt(request.getParameter("number"));
 if(num < 5){
	 request.setAttribute("result", "under");%>
	 <!-- html 부분 -->
	 <jsp:forward page="a.jsp"/>
 <%}else{
	 request.setAttribute("result", "over");%>
	 <!-- html 부분 -->
	 <jsp:forward page="b.jsp"/>
 <%}%>
</body>
</html>