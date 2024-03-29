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
<title>전체 게시글 목록</title>
</head>
<style>
	table{
		border-collapse:collapse;
		width: 100%;
	}
	.list-table th,td {
		border:1px solid #cccccc;
		padding: 3px;
	}
	.div1 {
		width: 1000px;
		text-align:center;
		font-size:15pt;
		background-color: #bdbdbd;
	}
	.div2 {
		display:flex;
		width: 100%;
		justify-content: space-between;
	}
	.div3 {
		font-size:8pt;
		align-items:center;
		margin: 0;
		text-align:left;
	}
	.div4 {
		font-size:8pt;
		align-items:center;
		margin: 0;
		text-align: right;
	}
	.div-table {
		width:90%;
	}
	.div-main {
		display: flex;
		width: 1000px;
	}
</style>
<body>
<%@ include file="../include/topmenu.jsp" %>
<!-- <%@ include file="../include/boardmenu.jsp" %> -->
<div class="warp">
<div class="div1">${titlecategory}</div>
<div class="div-main">
<%@ include file="../include/sidebar.jsp" %>
<div class="div-table">
			<div class="div2">
				<div class="div3">Total : ${total}</div>
				<div class="div4">
					<form id="searchFrm" method="post" action="boardList.do">
						<select name="searchGubun" id="searchGubun">
							<option value="title">제목</option>
							<option value="name">글쓴이</option>
							<option value="content">내용</option>
						</select>
						<c:if test="${not empty searchCategory}">
							<input type="hidden" name="category" id="category" value="${searchCategory}">
						</c:if>						
						<input type="text" name="searchText" id="searchText">
						<button type="submit">검색</button>
					</form>
				</div>
			</div>
	<table class="list-table">
		<tr>
			<th width="10%">번호</th>
			<th width="35%">제목</th>
			<th width="15%">글쓴이</th>
			<th width="15%">등록일</th>
			<th width="15%">조회수</th>
		</tr>
		
		<c:set var="cnt" value="${rowNumber}"/>
		
		<c:forEach var="result" items="${resultList}">
			<tr align="center">
				<td><c:out value="${cnt}"/></td>
				<td align="left">
					<a href="boardDetail.do?unq=${result.unq}&rpboardunq=${result.unq}"><c:out value="${result.title}"/> ( ${result.rcm} )</a>
				</td>
				<td><c:out value="${result.name}"/></td>
				<td><c:out value="${result.rdate}"/></td>
				<td><c:out value="${result.hits}"/></td>
			</tr>		
			<c:set var="cnt" value="${cnt-1}"/>
		</c:forEach>
	</table>
	
	
	<div style="width:90%; margin-top:5px; text-align:center;">
		<c:forEach var="i" begin="1" end="${totalPage}">
			<a href="boardList.do?viewPage=${i} <c:if test="${not empty searchCategory}">&category=${searchCategory}</c:if>">${i}</a>
		</c:forEach>
	</div>
	
	<% if(UserName != null) {%>
	<div style="width:100%; margin-top:5px; text-align:right;">
		<button type="button" onclick="location='boardWrite.do'">글쓰기</button>
	</div>
	<% } %>
</div>
</div>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>