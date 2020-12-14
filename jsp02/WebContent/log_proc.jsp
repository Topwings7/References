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
		request.setCharacterEncoding("utf-8");
	//아이디 와 패스워드받음
	String dbUserId = "groot";
	String dbPassword = "text";
	
	//파라미터로 받는 아이디, 비밀번호가 디비의 아이디 비밀번호와 같다면
	//로그인 성공 페이지로, 같지 않다면 로그인 실패 페이지로 이동.
	String userId = request.getParameter("userId");
	String password = request.getParameter("password");
	
	if(dbUserId.equals(userId) && dbPassword.equals(password)){
		//로그인 성공
		response.sendRedirect("success.jsp");
	}else{
		//로그인 실패
		response.sendRedirect("fail.jsp");
	}
	%>
</body>
</html>