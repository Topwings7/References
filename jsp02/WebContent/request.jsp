<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<h3>request 객체</h3>
	request: 요청<br>
	<ol>
		<li>클라이언트와 관련된 정보를 읽음</li>
		<li>서버와 관련된 정보를 읽음</li>
		<li>클라이언트의 요청 파라미터를 읽음</li>
		<li>요청 헤더, 쿠키를 갖음</li>
	</ol>
	<ul>
		<li>클라이언트 IP = <%=request.getRemoteAddr() %></li>
		<li>요청 인코딩 = <%=request.getCharacterEncoding() %></li>
		<li>요청 파라미터 = <%=request.getParameterNames() %></li>
		<li>서버 이름 : <%=request.getServerName() %></li>
		<li>서버 포트 = <%=request.getServerPort() %></li>
	</ul>	
</body>
</html>