<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useList</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<%
	ArrayList<String> color = new ArrayList<String>();
	color.add("red");
	color.add("orange");
	color.add("yellow");
	color.add("green");
	request.setAttribute("colorList", color);
	
%>
	${colorList.get(0)}<br>
	${colorList[1]}<br> 
	
	<%
	request.setAttribute("i", 0);
	for(int i = 0 ; i < color.size(); i++){
	%>
			${colorList.get(i) }
			
	<%
	request.setAttribute("i", (Integer)request.getAttribute("i")+1);
	}%>
</body>
</html>