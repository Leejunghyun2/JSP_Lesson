<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
   String[] gmoks  = new String[5];
   gmoks[0] = "국어";
   gmoks[1] = "영어";
   gmoks[2] = "수학";
   gmoks[3] = "사회";
   gmoks[4] = "과학";
   
   
	int[] kors = new int[5];
	kors[0] = 90;
	kors[1] = 80;
	kors[2] = 70;
	kors[3] = 60;
	kors[4] = 50;
  
  %>  
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
	 <tr> 
	    <td>과목</td>
	    <td>점수</td>
	 </tr>
	<%for(int i=0; i <gmoks.length; i++){%>
	 <tr> 
	    <td><%= gmoks[i] %></td>
	    <td><%= kors[i] %></td>
	 </tr>
	 <% } %>    
	</table>
	
	
	
	
</body>
</html>