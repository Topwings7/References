<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
	태그라이브러리 사용하기 위해서는 디렉티브 taglib를 선언해야하고
	core는 jstl에서 기본 기능들을 제공함, 반복, 변수 생성등등
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<%-- 변수선언 --%>
<c:set var="name" value="ironman" scope="request"/>
<%--request.setAttribute("name","ironman") --%>
이름 : ${name}<br>
이름 : <%=request.getAttribute("name") %><br>

<c:set var="numArr" scope="page" value="<%=new int[5] %>"/>
${numArr[0]}

객체를 이용<Br>

<jsp:useBean id="user" class="ex05.el.User" scope="page"/>
${user}<br>
<%=user %><br>
<c:set target="${user}" property="name" value="ironman"/>
<c:set target="<%=user %>" property="age">10</c:set>
${user.name }<br>
${user.age}<Br>

<%-- 스코프 지정해서 원하는것 삭제 --%>
<c:set var="test" scope="request">100</c:set>
test : ${test} <br>
<c:remove var="test" scope="request"/>
test: ${test }<br>
<%-- map 객체도 추가 가능 --%>
<jsp:useBean id="myMap" class="java.util.HashMap" scope="request"/>
<%--
	HashMap myMap = new HashMap();
	request.setAttribute("myMap",myMap);
 --%>
<c:set target="${myMap}" property="key1" value="mapValue"/>
${myMap.key1}
<%-- myMap.get("key1"); --%> 
</body>
</html>