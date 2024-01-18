<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<style>
	* {
		margin:0 auto;
	}
	div {
		width: 80%
	}
	.div-banner {
		text-align: center;
		border: 1px solid #000000;
		height: 100px;
	}
	.div-main{
		display: flex;
		border: 1px solid #000000;
		margin-top: 10px;
	}
	.main1 {
		background-color: yellow;
		width: 50%;
		height: 200px;
	}
	.main2 {
		background-color: green;
		width: 50%;
		height: 200px;
	}
</style>
<body>
<%@ include file="../jsp/include/topmenu.jsp" %>
<%@ include file="../jsp/include/boardmenu.jsp" %>

<div class="div-banner">
	
</div>
<div class="div-main">
	<div class="main1">
		
	</div>
	<div class="main2">
		
	</div>
</div>
</body>
</html>