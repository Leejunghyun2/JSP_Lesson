<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String nicName = request.getParameter("nicName");
	String num = request.getParameter("num");
	String phoneNum = request.getParameter("phoneNum");
	String email = request.getParameter("email");
	String addr = request.getParameter("address");
	
	
	
%>
 <input type=text hidden="hidden" name="id">
 <input type=text hidden="hidden" name="nicName">

 
 <script>
 function move(){
	 location.href = "exam04Result.jsp?&id=<%=id%>&name=<%=name%>";
 }
 
 move();
 </script>