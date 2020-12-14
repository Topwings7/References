<%@page import="ex05.el.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--<jsp:useBean id="st" class="ex05.el.Student" scope="request"/>
	Student st1 = (Student)request.getAttribute("st");
<jsp:getProperty property="name" name="st"/>
--%>
<%
pageContext.setAttribute("student", new Student());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<%--
el표현방식은 기본객체를 그대로 사용할 수있음.
기본객체 속에 들어있는 속성(attribute)을 바로 사용할수 있다.
page > request > session > application 순으로 조회해서 가져옴.	
 --%>
	<h1>학생정보출력</h1>
	이름:${requestScope.st.name }<br>
	<%-- request.getAttribute("st").getName();
		자바는 st.name 멤버변수 접근인데  el방식은 메서드를 호출한다
	--%>
	생일:${st.birth}<br>
	국어:${st.score.getKor() }<br> <%--메서드 호출도 가능하다 --%>
	영어:${st.score.eng }<br>
	수학:${st.score.math }<br>
	총점:${st.score.tot }<br>
	평균:${st.score.avg }<br>
</body>
</html>