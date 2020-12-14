<%@page import="beans.PersonInfo"%>
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
	PersonInfo pi = new PersonInfo();
	pi.setName(request.getParameter("name"));
	pi.setAge(Integer.parseInt(request.getParameter("age")));
	pi.setGender(request.getParameter("gender").charAt(0));
	pi.setAddress(request.getParameter("address"));
	String chk = request.getParameter("gender");
%>
<script>
  console.dir(chk);
</script>
<p>이름 : <%=pi.getName() %></p>
<p>나이 : <%=pi.getAge() %></p>
<p>성별 : <%=pi.getGender() %></p>
<p>주소 : <%=pi.getAddress() %></p>
</body>
</html>