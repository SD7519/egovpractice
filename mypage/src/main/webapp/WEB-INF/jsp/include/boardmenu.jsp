<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>
	#board_btn {
		width:100%;
		padding: 0;
		background-color: silver;
		cursor: pointer;
		margin: 0;
	}
	.boardmenu-table {
		width: 100%;
		padding: 0;
		margin: 0;
		border: none;
	}
</style>
</head>
<body>
<header>
	<table class="boardmenu-table">
		<tr>
			<th width="25%"><button id="board_btn" onclick="location='/boardList.do?category=n'">공지사항</button></th>
			<th width="25%"><button id="board_btn" onclick="location='/boardList.do?category=b'">일반 게시판</button></th>
			<th width="25%"><button id="board_btn" onclick="location='/boardList.do?category=g'">고민 게시판</button></th>
			<th width="25%"><button id="board_btn" onclick="location='/boardList.do?category=h'">취미 게시판</button></th>
		</tr>
	</table>
</header>
</body>
</html>