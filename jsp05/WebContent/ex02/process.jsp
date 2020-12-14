<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="car" class="ex05.el.Car" scope="request"/>
<jsp:setProperty property="*" name="car"/>

<jsp:useBean id="phone" class="ex05.el.Phone"/>
<jsp:setProperty property="*" name="phone"/>

<jsp:useBean id="person" class="ex05.el.Person" scope="request"/>
<jsp:setProperty property="*" name="person"/>
<% 
	LocalDate birth = LocalDate.parse(request.getParameter("bir"));
	LocalDate createDate = LocalDate.parse(request.getParameter("create"));
	person.setBirth(birth);
	phone.setCreateDate(createDate);
	person.setCar(car);
	person.setPhone(phone);
System.out.print(person); %>

<jsp:forward page="view.jsp"/>

