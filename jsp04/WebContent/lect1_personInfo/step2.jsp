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
<jsp:useBean id="pi" class="beans.PersonInfo" socpe="page"/>
<jsp:setProperty property="name" name="pi" value='<%=request.getParameter("name") %>'/>
<jsp:setProperty property="age" name="pi" value='<%=request.getParameter("age") %>'/>
<jsp:setProperty property="gender" name="pi" value='<%=request.getParameter("gender").charAt(0) %>'/>
<jsp:setProperty property="address" name="pi" value="<%=request.getParameter(\"address\") %>"/>
<h2>입력된 개인정보</h2>
<p>이름 : <%=pi.getName() %></p>
<p>나이 : <%=pi.getAge() %></p>
<p>성별 : <%=pi.getGender() %></p>
<p>주소 : <%=pi.getAddress() %></p>
</body>
</html>