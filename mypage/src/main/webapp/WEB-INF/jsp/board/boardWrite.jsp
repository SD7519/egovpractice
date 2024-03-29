<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 등록 화면</title>
<script src="../script/jquery-3.7.1.min.js"></script>
<script src="../script/jquery-3.7.1.min.js"></script>
</head>
<style>
	* {
		margin: 0 auto;
	}
	table{
		width:1000px;
		border-collapse:collapse;
	}
	th,td {
		border:1px solid #cccccc;
		padding: 3px;
	}
	.input1 {
		width:98%;
	}
	.textarea {
		width:98%;
		height:300px;
	}
</style>

<script>
function fn_save() {	
	//trim() -> 앞뒤 공백 제거, java, jsp 	
	if( $.trim( $("#title").val() ) == "") {
		alert("제목을 입력해주세요.");
		$("#title").focus();
		return false;
	}
	$("#title").val( $.trim($("#title").val()) );
	
	if( $.trim( $("#pass").val() ) == "") {
		alert("암호를 입력해주세요.");
		$("#pass").focus();
		return false;
	}
	$("#pass").val( $.trim($("#pass").val()) );
	
	var caterory = $("#category").val();
	
//	var formData = $("#frm").serialize();
	
	var formData = new FormData($("#frm")[0]);
	  
	$.ajax({
		type:"POST",
		data:formData,
		url:"boardWriteSave.do",
		contentType : false,
		processData : false,
		cache: false,
		dataType:"text",
		enctype: "multipart/form-data",
		success: function (data) {
			if(data != null) {
				alert("저장완료");
				location = "boardList.do?category="+ data;
			} else {
				alert("저장실패");
			}
		},
		error:function(data) {
				alert(data);			
		}
	});
		
}
</script>

<body>
<%@ include file="../include/topmenu.jsp" %>
<%@ include file="../include/boardmenu.jsp" %>
<div class="warp">
	<form id="frm" enctype="multipart/form-data">
		<table>
			<caption>게시글 등록</caption>
			<tr>
				<th width="20%"><label for="title">제목</label></th>
				<td width="80%"><input type="text" name="title" id="title" class="input1"></td>
			</tr>
			<tr>
				<th>카테고리</th>
				<td>
				<%if(UserName.equals("관리자")){ %>
					<select name="category">
						<option value="b">일반</option>
						<option value="g">고민</option>
						<option value="h">취미</option>
						<option value="n">공지</option>
					</select>
					<%} else {%>
					<select name="category">
						<option value="b">일반</option>
						<option value="g">고민</option>
						<option value="h">취미</option>
					</select>
					<%} %>
				</td>
			</tr>
			<tr>
				<th><label for="pass">암호</label></th>
				<td><input type="password" name="pass" id="pass"></td>
			</tr>
			<tr>
				<th>글쓴이</th>
				<td><input type="text" name="name" id="name" value="<%out.print(UserName);%>" readonly></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="content" id="content" class="textarea"></textarea></td>
			</tr>
			<tr>
				<th>첨부파일</th>
				<td><input type="file" name="file" id="file"></td>
			</tr>
			<tr>
				<th colspan="2">
					<button type="button" onclick="fn_save(); return false;">저장</button>
					<button type="reset">취소</button>
				</th>
			</tr>
		</table>
	</form>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>