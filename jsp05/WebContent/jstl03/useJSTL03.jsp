<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<%-- 반복문 1-5 --%>
<%
	for(int i= 1 ; i <=5 ; i++){
		out.print(i+" ");
	}
%>
<hr>
<c:forEach var="i" begin="1" end="5" > <%-- request.setAttribute() 이기때문에 el쓸수있다--%>
 	${i}
</c:forEach>
<hr>
<c:forEach var="i" begin="1" end="10" >
	<c:if test="${i%2 eq 0}">
		${i }
	</c:if>
</c:forEach>

<c:forEach var="i" begin="1" end="10" step="2" >
	${i}
</c:forEach>
<hr>
<%
	ArrayList<String> namelist = new ArrayList<String>();
	namelist.add("박하나");
	namelist.add("이하나");
	namelist.add("오하나");
	namelist.add("정하나");
	namelist.add("김하나");
	request.setAttribute("namelist", namelist);
%>
<c:forEach items="${namelist }" var="n">
	${n}
</c:forEach>
</body>
</html>