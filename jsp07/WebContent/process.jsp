<%@page import="java.util.ArrayList"%>
<%@page import="ex07.Book"%>
<%@page import="ex07.Person"%>
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
//process.jsp
//파라미터의 내용을 받아 객체에 저장
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter(" ");
	String[] titleArr = request.getParameterValues("title");
	String[] publisherArr = request.getParameterValues("publisher");
	String[] priceArr = request.getParameterValues("price");
	//객체에 담기
	Person person = new Person();
	ArrayList<Book> booklist = new ArrayList<Book>();
	for(int i = 0 ; i <titleArr.length; i++){
		Book book = new Book();
		book.setTitle(titleArr[i]);
		book.setPublisher(publisherArr[i]);
		book.setPrice(Integer.parseInt(priceArr[i]));
		booklist.add(book);
	}
	person.setBooklist(booklist);
	request.setAttribute("person", person);
	request.getRequestDispatcher("view.jsp").forward(request, response);
%>
</body>
</html>