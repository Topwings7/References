<%@page import="java.io.IOException"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
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
	//파일에접근하기위해서는
	//시스템 경로가 필요하다
	//에플리케이션 기준 경로
 String resourcePath = "/07filepath/Helloworld.text";
 //자원의 실제 경로
 System.out.println(application.getRealPath(resourcePath));
 
 //파일을 읽어서
 //문자열로 가져오고
 //html로 결과를 출력
  String file = application.getRealPath(resourcePath);
  String rs = "";
 	try(BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file)))){
 			rs += br.readLine()+"<br>";
 			rs += br.readLine();
 	}catch(IOException e){
 		e.printStackTrace();
 	}
 	
%>
<%=application.getRealPath(resourcePath) %>
내용 : <%=rs %>
</body>
</html>