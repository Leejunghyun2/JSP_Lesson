<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String name = request.getParameter("name");
	String num = request.getParameter("num");
	String phoneNum = request.getParameter("phoneNum");
	String email = request.getParameter("email");
	String gender = "여자";
	int age = Integer.parseInt(num.substring(0,2));
	if(num.indexOf("-")==6&&num.lastIndexOf("-")==6){
		if(num.substring(7,8).equals("1")||num.substring(7,8).equals("3")){
			gender = "남자";
		}
		if(num.substring(7,8).equals("1")||num.substring(7,8).equals("2")){
			age = 123 - age;
		}
			
		
	}
	
%>
 당신의 이름은 <%=name%>입니다.<br>
 당신의 주민번호는 <%=num%>입니다.<br>
 당신의 전화번호는 <%=phoneNum%>입니다.<br>
 당신의 이메일 <%=email%>입니다.<br>
 당신의 성별은 <%=gender %>입니다.<br>
 당신의 나이는 <%=age  %>살 입니다.