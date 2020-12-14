<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	$(".multiple").css("color","red");
});
</script>
</head>
<body>
<%
	HashSet<String> hobbySet = new HashSet<String>();
	hobbySet.add("피아노치기");
	hobbySet.add("음주");
	hobbySet.add("흡연");
	hobbySet.add("폭주");
	hobbySet.add("공부");
	hobbySet.add("박하나");
	hobbySet.add("이하나");
	hobbySet.add("오하나");
	hobbySet.add("김하나");
	
	String[] hobbyArr = new String[hobbySet.size()];
	Iterator<String> hobby = hobbySet.iterator();
	int j = 0;
	while(hobby.hasNext()){
		hobbyArr[j] = hobby.next();
		j++;
	}
	out.print("<table>");
	out.print("<tr>");
	for(int i=0; i<hobbyArr.length; i++){
		if(i%2 == 0 ){
			out.print("<td class='multiple'>"+hobbyArr[i]+"</td>");
		}else{
			out.print("<td>"+hobbyArr[i]+"</td>");
		}
	}
%>	
<c:choose>
<c:when test="${status.first}"><strong>${food}</strong></c:when>
<c:when test="${status.count%2==0}">
<span style="color:red;">${food}</span>
</c:when>
<c:when test="${true}">${food}</c:when>
</c:choose>
-	
</body>
</html>