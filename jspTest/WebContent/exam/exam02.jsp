<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>exam02.jsp</h2>
	<form action="exam02Proc.jsp" method="post" name="testForm2">
		<table border="0">
		   <tr>
		   	  <td>아이디 : </td>
		   	  <td><input type="text" name="id"></td>
		   </tr>
		   <tr>
		   	  <td>비밀번호 : </td>
		   	  <td><input type="password" name="passwd"></td>
		   </tr>
		   <tr>
		      <td colspan="2"><button type="submit">로그인</button></td>
		   </tr>
		
		
		</table>
	
	</form>
</body>
</html>