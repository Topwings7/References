<%@page import="java.io.FileWriter"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.File"%>
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
 String su1 = request.getParameter("su1");
 String su2 = request.getParameter("su2");
 String su3 = request.getParameter("su3");
 String su4 = request.getParameter("su4");
 String su5 = request.getParameter("su5");

 String path = "C:/Users/TOP/Desktop/jsp/ex03/WebContent/08io";
 File file = new File(path+"/nansu.text");
 	
 try(BufferedWriter br = new BufferedWriter(new FileWriter(file))){
	 br.write(su1);
	 br.write(su2);
	 br.write(su3);
	 br.write(su4);
	 br.write(su5);
	 br.flush();
 }catch(FileNotFoundException e){
	 e.getStackTrace();
 }catch(IOException e){
	 e.printStackTrace();
 }
 out.print("<h1>잘된게마자</h1>");
%>
</body>
</html>