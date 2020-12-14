<%@page import="java.util.Iterator"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.TreeSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%!
 	public int[] lotto(){
 	int num[] = new int[6];
	Random rand = new Random();
 	TreeSet<Integer> lotto = new TreeSet<Integer>();
 	while(lotto.size()<6){
 		lotto.add(rand.nextInt(45)+1);
 	}
 	Iterator<Integer> chancenum = lotto.iterator();
 	int j =0;
 	while(chancenum.hasNext()){
 	num[j] = chancenum.next();
 	j++;
 	}
 	return num;
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
	<table border="1">
	<%
	int[] lotto = lotto();
		for(int i=0; i < lotto.length; i++){%>
		<tr>
			<td><%=i+1 %>번</td>
			<td><%=lotto[i] %></td>
		</tr>			
		<%}%>
	
	</table>
</body>
</html>