<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원등록</h2>
				<form name=chugaForm>
					<table border="1">
						<tr>
							<td>아이디 :</td>
							<td><input type="text" name="id"></td>
						</tr>
						<tr>
							<td>비밀번호 :</td>
							<td><input type="password" name="pw"></td>
						</tr>
						<tr>
							<td>비밀번호확인 :</td>
							<td><input type="password" name="pw2"></td>
						</tr>			
			
						<tr>
							<td>이름 :</td>
							<td><input type="text" name="name"></td>
						</tr>
						<tr>
							<td>전화번호 :</td>
							<td><input type="tel" name="tel"></td>
						</tr>
						<tr>
							<td>이메일s :</td>
							<td><input type="email" name="email"></td>
						</tr>
						<tr>
							<td>주소 :</td>
							<td><input type="text" name="address"></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center"><button
									type="button" onclick="join();">가입하기</button></td>
						</tr>
					</table>
				</form>
				
	<script>
    function join(){
    	var chuga = document.chugaForm;
    	chuga.action = "chugaProc.jsp"
    	chuga.method = "post";
    	chuga.submit();
    }
    </script>
</body>
</html>