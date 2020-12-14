<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
	public int tot(int kor, int eng, int math, int soc, int sci){
	int result =kor+eng+math+soc+sci; 
	return result;
}
	public int avg(int kor, int eng, int math, int soc, int sci){
		int result = tot(kor, eng, math, soc, sci);
		return result/5;
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<%	
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	int kor =  Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	int soc = Integer.parseInt(request.getParameter("soc"));
	int sci = Integer.parseInt(request.getParameter("sci"));
%>

<%@ include file="result.jspf" %>
</body>
</html>