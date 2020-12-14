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
		String sId = (String)session.getAttribute("sessionId");
		String sPw = (String)session.getAttribute("sessionPw");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pass");
		
		
		if(sId.equals(id) && sPw.equals(pw)){
			response.sendRedirect("success.jsp");
		}else{
			response.sendRedirect("mylogin.jsp");
		}
	%>
</body>
</html>