<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("utf-8");
    String birth = request.getParameter("birthDate");
    LocalDate param = LocalDate.parse(birth);
    LocalDate now = LocalDate.now();
    int age =  now.getYear()-param.getYear() +1;
    %>
    <jsp:useBean id="st" class="beans.ST" scope="request"/>
    <jsp:setProperty name="st" property="name" param="name"/>
    <jsp:setProperty name="st" property="kor" param="kor"/>
    <jsp:setProperty name="st" property="eng" param="eng"/>
    <jsp:setProperty name="st" property="math" param="math"/>
    <jsp:setProperty name="st" property="birthDate" value="<%=param %>"/>
    <%
    int kor = st.getKor();
    int eng = st.getEng();
    int math = st.getMath();
    int tot = kor+eng+math;
    int avg = tot/3;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>

<body>	
	<h2>입력값</h2>
	<p>이름: <jsp:getProperty property="name" name="st"/></p>
	<p>나이: <%=age %></p>
	<p>생일: <jsp:getProperty property="birthDate" name="st"/></p>
	<p>국어: <jsp:getProperty property="kor" name="st"/></p>
	<p>영어: <jsp:getProperty property="eng" name="st"/></p>
	<p>수학: <jsp:getProperty property="math" name="st"/></p>
	<p>총점: <%=tot %></p>
	<p>평균: <%=avg %></p>
	
</body>
</html>