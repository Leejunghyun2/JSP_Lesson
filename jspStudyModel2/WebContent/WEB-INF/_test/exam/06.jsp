<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../../_include/inc_header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file = "../../_include/inc_menu.jsp" %>
<h2>06</h2>
<form name="DirForm">
<table border="1">
	<tr>
		<td>아이디</td>
		<td><input type="text" name="id"></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="passwd"></td>
	</tr>
		<tr>
		<td colspan="2">
			<button type="button" onclick="save();">로그인</button>
		</td>
	</tr>
</table>
</form>
<script>
	function save(){
		var f = document.DirForm;
		if(confirm('등록하시겠습니까?')){
			f.action = "/jspStudyModel2/exam_servlet/06Proc.do";
			f.method = "post";
			f.submit();
		}
	}
</script>
</body>
</html>