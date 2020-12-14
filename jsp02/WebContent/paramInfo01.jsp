<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //파라미터를 받자
    //숫자, 날짜, 언어체크박스
    String num1Str = request.getParameter("num1");
    String num2Str = request.getParameter("num2");
    //형변환
    int num1 = 0;
    if(!num1Str.equals("")){
    	num1 = Integer.parseInt(num1Str);
    }
    int num2 = 0;
    if(!num2Str.equals("")){
    	num2 = Integer.parseInt(num2Str);
    }
    
    //날짜
    String dateStr = request.getParameter("date");
    LocalDate localDate = LocalDate.parse(dateStr);
    
    //name이 같은 값이 여러개
    String[] language = request.getParameterValues("language");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	두수의 합 = <%=(num1+num2) %><br>
	날짜 = <%=localDate.getYear() %>년 <%=localDate.getMonthValue() %>월 <%=localDate.getDayOfMonth() %>일 <br>
	
	<%
	String lang = "";
	for(String s : language){
		lang += s+" ";
	}
	
	%>
	선택한 언어 : <%=lang %>
</body>
</html>