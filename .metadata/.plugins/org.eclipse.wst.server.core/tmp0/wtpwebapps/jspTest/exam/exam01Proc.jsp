<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  	request.setCharacterEncoding("UTF-8"); //post방식으로 넘어오는 인코딩방식
  	
    String name = request.getParameter("name"); //숫자로 넘어와도 무조건 문자
    String age_ = request.getParameter("age");
    String gender = request.getParameter("gender");
/*    out.println("당신의 이름은"+ name +"입니다.<br>");
    out.println("당신의 나이는"+ age_ +"입니다.<br>");
    out.println("당신의 성별은"+ gender +"입니다.");*/
  %>
 당신의 이름은 <%=name %>입니다. <br>
 당신의 나이는 <%=age_ %>입니다. <br>
 당신의 나이는 <%=gender %>입니다. <br>
 <hr>
 
 <table border="1">
 	<tr>
 	   <td>당신의 이름은 <%=name %>입니다.</td>
 	</tr>
 	<tr>
 	   <td>당신의 나이는 <%=age_ %>입니다.</td>
 	</tr>
 	<tr>
 	   <td>당신의 나이는 <%=gender %>입니다.</td>
 	</tr>
 	
 </table>