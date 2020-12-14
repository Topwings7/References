<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<style>
*{
padding:0;
margin: 0;
}
	#main{
			width: 1000px;
			margin: 0 auto;
			height: 900px;
			overflow: hidden;
	}
	#main .content{
	width: 800px;
	height: 600px;
	float: left;
	}
	#main .both {
	clear: both;
	}
</style>
<body>
<div id="main">
	<jsp:include page="header.jsp"/>
	<jsp:include page="nav.jsp"/>
	<div class="content">
	<img src="https://post-phinf.pstatic.net/MjAyMDA0MjdfMTg0/MDAxNTg3OTY2MzMwODU2.XYekMDY5jX3gwI359awqCfjw7Q1XMRvxLP4b2pNJM6kg.fzIkNDNFueFcm-kbXTcXgkTY4cLs9njaN5HMSvkQly4g.JPEG/p1_gtr_thermal-30.jpg?type=w1200" width="800px" height="600px">
	</div>
	<div class="both">
	</div>
	<jsp:include page="footer.jsp"/>
</div>
</body>
</html>