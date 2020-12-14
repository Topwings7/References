<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	//선언부
	//메서드를 정의하거나, 전역변수(멤버변수)를 만들때씀
	public int sum(int num1,int num2){
	return num1+num2;
	}
	//변수 선언
	int test;
	
	//2의배수
	public int[] getBinArr(){
		int[] numbers = new int[10];
		for(int i =0 ; i< numbers.length; i++){
			numbers[i] = (i+1)*2;
		}
		return numbers;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메서드 정의</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<style>
	table{
		width:500px; margin:0 auto; text-align: center;
	}
	</style>
</head>
<body>
두수의 합 : <%=sum(10,5)%>
test : <%=test %>
<table border="1">
	<%
		int[] numArr = getBinArr();
	for(int i = 0; i<numArr.length; i++){%>
		<tr>
			<td>2의 <%=i %>제곱</td>
			<td><%=numArr[i] %></td>
		</tr>
	<%}%>
</table>
</body>
</html>