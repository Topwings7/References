<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    String birth = request.getParameter("birth");
    LocalDate val = LocalDate.parse(birth);
    %>
    <jsp:useBean id="st" class="beans.ST" scope="request"/>
    <jsp:setProperty property="*" name="st"/>
    <jsp:setProperty property="brithDate" name="st" value='<%=val %>'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>	
	
	<%  //<jsp:forward page="stview.jsp"/>
		request.getRequestDispatcher("stview.jsp").forward(request, response);
	%>
</body>
</html>