<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/inc_header.jsp" %> <%-- JSTL을 사용하기위해 사용 --%>    
<form name="loginForm">
<c:if test="${sessionScope.sessionNo == null || sessionScope.sessionNo == '' || sessionScope.sessionNo == 0 }">
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
		<td colspan="2"><button type="button" onclick="login();">로그인</button></td>
		
	</tr>
</table>
</c:if>
</form>
<script>
	function login(){
		var f = document.loginForm;
		f.action = "${path}/noLogin_servlet/noLogin_loginProc.do";
		f.method = "post";
		f.submit();
	}
</script>