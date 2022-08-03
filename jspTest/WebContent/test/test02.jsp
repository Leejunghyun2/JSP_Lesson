<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
 String name = "홍길동";
 int kor = 90;
 int eng = 90;
 int mat = 90;
 int tot = kor + eng + mat;
 double avg = tot/3;
 String grade = "가";
 if(avg >= 90){
	 grade = "수";
 } else if(avg >= 80){
	 grade = "우";
 } else if(avg >= 70){
	 grade = "미";
 } else if(avg >= 60){
	 grade = "양";
 } 
 String gradeDisplayText01 = "";
 String gradeDisplayText02 = "";
  if(grade.equals("수")||grade.equals("우"))  {
		 gradeDisplayText01 =  "<font style=\"color : red; font-weight: bold\">";
		 gradeDisplayText02 =  "</font>";
  } else if(grade.equals("미")||grade.equals("양")){
		 gradeDisplayText01 =  "<font style=\"color : blue; font-weight: bold\">";
		 gradeDisplayText02 =  "</font>";
	  
  }
  String gradeDisplayText = gradeDisplayText01 + grade+ gradeDisplayText02;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>test02.jsp</h2>


이름 : <%=name %> <br>
국어 : <%=kor %> <br>
영어 : <%=eng %> <br>
수학 : <%=mat %> <hr>
<table border="1">
	<tr>
		<th width="80px">이름 : </th>
		<td width="150px"><%=name %></td>
	</tr>
	<% if(kor >= 60) { %>
	<tr>
		<th>국어 : </th>
		<td><%=kor %></td>
	</tr>
	<% } %>
	<tr>
		<th>영어 : </th>
		<td><%=eng %></td>
	</tr>
	<tr>
		<th>수학 : </th>
		<td><%=mat %></td>
	</tr>
	<tr>
		<th>평균 : </th>
		<td><%=avg %>  
		&nbsp;
		<%=gradeDisplayText %>
	</tr>
	 
		
	
</table>

</body>
</html>