<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	public int[] three(){
	int[] nums = new int[10];
	for(int i = 0; i < nums.length; i++){
		nums[i] = (i+1)*3;
	}
	return nums;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
	<ul>
		<%
			int[] nums = three();
		for(int i=0; i<10; i++){%>
			<li><%=nums[i] %></li>
		<%}%>
	</ul>
	
</body>
</html>