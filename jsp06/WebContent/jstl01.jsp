<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	$("#sp").css('color','red');
	console.dir($("#sp"));
});
</script>
</head>
<body>
foreach태그에는 varStatus라는 속성이 있음<br>
반복되는 정보를 받는 변수<br>
index : 현재 루프의 인덱스<br>
count : 루프의 실행 횟수<br>
first : 첫번째 실행일 때 true<br>
last : 마지막 실행일 때 true<br>
<%
	HashSet<String> testSet = new HashSet<String>();
	testSet.add("짜장면");
	testSet.add("짬뽕");
	testSet.add("볶음밥");
	testSet.add("탕수육");
	testSet.add("유산슬");
	for(String s : testSet){
		out.print(s+"<br>");
	}
	request.setAttribute("testSet", testSet);
%>
	<c:forEach var="item" items="${testSet }" varStatus="status" begin="2" end="4">
	<c:choose  >
		<c:when test="${status.first }">
			<i>첫번째에 할일</i> 
		</c:when>
		<c:when test="${status.last }">
			<span id="sp">마지막에 할일</span>
		</c:when>
	</c:choose>
	인덱스 : ${status.index} , 
	반복회수: ${status.count} , 
	내용  : ${item }
	<br>
	</c:forEach>
</body>
</html>