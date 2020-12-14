<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	pageContext.setAttribute("이름","페이지콘텍스트");
	request.setAttribute("이름", "리퀘스트");
	session.setAttribute("이름", "세션");
	application.setAttribute("이름", "어플리케이션");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<pre>
	pageContext : <%=(String)pageContext.getAttribute("이름") %> <!-- 반환타입이 오브젝트여서 형변환해줘야한다 -->
	request : <%=(String)request.getAttribute("이름") %>
	session : <%=(String)session.getAttribute("이름") %>
	application : <%=(String)application.getAttribute("이름") %>
	</pre>
	<a href="useData.jsp">값을 줬드나?</a>
</body>
</html>