<%@page import="java.time.LocalDate"%>
<%@page import="ex05.el.Score"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="st" class="ex05.el.Student" scope="request"/>
    <jsp:setProperty property="name" name="st" param="name"/>
	<%
	int kor = (request.getParameter("kor").equals(""))? 0 : Integer.parseInt(request.getParameter("kor"));
	int eng = (request.getParameter("eng").equals(""))? 0 : Integer.parseInt(request.getParameter("eng"));
	int math = (request.getParameter("math").equals(""))? 0 : Integer.parseInt(request.getParameter("math"));
	
	Score sc = new Score(kor, eng, math);
	st.setScore(sc);
	st.setBirth(LocalDate.parse(request.getParameter("birth")));
	request.getRequestDispatcher("view.jsp").forward(request, response);
	%>

