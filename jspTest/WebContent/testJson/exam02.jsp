<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>

</head>
<body>
	아이디 : <input type="text" name="id" id="id"><br>
	비밀번호 : <input type="password" name="passwd" id="passwd"><br>
	이름 : <input type="text" name="name" id="name"><br>
	나이 : <input type="text" name="age" id="age"><br>
	<button type="button" id="btnSave">확인</button>
	
	id : <span id="span_id"></span><br>
	passwd : <span id="span_passwd"></span><br>
	name : <span id="span_name"></span><br>
	age : <span id="span_age"></span><br>

<script>
	$(function(){
		$("#btnSave").click(function(){
			examProc();
			
		});
	});
	function examProc(){
		var param = {
				"id" : $("#id").val(),
				"passwd" : $("#passwd").val(),
				"name" : $("#name").val(),
				"age" : $("#age").val()
		}
		$.ajax({
			type : "post",
			data : param,
			datatype : "JSON",
			url : "exam02Proc.jsp",
			success : function(data){
				json_member = JSON.parse(data);
				$("#span_id").text(json_member.id);
				$("#span_passwd").text(json_member.passwd);
				$("#span_name").text(json_member.name);
				$("#span_age").text(json_member.age);
			}
			
		});
	}
	
</script>	
</body>
</html>