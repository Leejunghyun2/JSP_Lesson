
<%@page import="java.sql.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../include/inc_dbInfo.jsp" %>
<%
  	request.setCharacterEncoding("UTF-8");
	
	String arg1 = request.getParameter("id");
 	if(arg1 == null || arg1.trim().equals("")){
 		response.sendRedirect("list.jsp");
 	} 
	//response.sendRedirect("list.jsp");//jsp로 바로 넘길때
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String msg ="";
	
	try{
		
		Class.forName(dbDriver);
		conn = DriverManager.getConnection(dbUrl,dbId,dbPw);
		System.out.print("\n db 접속성공");
		//---------------------------------------
		String sql = "select * from member where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, arg1);
		rs = pstmt.executeQuery();
		if(rs.next()){
			String id = rs.getString("id");
			String passwd = rs.getString("passwd");
			String name = rs.getString("name");
			String phone = rs.getString("phone");
			String email = rs.getString("email");
			String addr = rs.getString("address");
			Date date = rs.getDate("regidate");
			msg = id +"/"+ name +"/"+ phone +"/"+ email +"/"+ addr +"/"+ date;
		}
		
		//---------------------------------------
	}catch(Exception e){
		System.out.print("db 접속실패");
	}finally{
	   if(rs !=null){rs.close();}
	   if(pstmt !=null){pstmt.close();}
	   if(conn !=null){conn.close();}
	   System.out.print("db 접속해제");
	}
	out.print("end");
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원등록</title>
</head>
<body>
	<table border="1" width="80%" align="center">
		<tr>
			<!-- header 시작 -->
			<td height="100px" align="center">
		<%@ include file = "../include/inc_menu.jsp" %> <!-- 다른폴더에 있는걸 끌어와서 표시 -->
			</td>
		</tr>
		<!-- main 시작 -->
		<tr>
			<td height="300px" align="center">
				<h2>상세보기</h2>
				<form name=chugaForm>
					<%String[] tmp = msg.split("/"); %>
					<table border="1">
						<tr>
							<td>아이디 :</td>
							<td><%=tmp[0] %></td>
						</tr>
						<tr>
							<td>이름 :</td>
							<td><%=tmp[1] %></td>
						</tr>
						<tr>
							<td>전화번호 :</td>
							<td><%=tmp[2] %></td>
						</tr>
						<tr>
							<td>이메일 :</td>
							<td><%=tmp[3] %></td>
						</tr>
						<tr>
							<td>주소 :</td>
							<td><%=tmp[4] %></td>
						</tr>
						<tr>
							<td>등록일 :</td>
							<td><%=tmp[5] %></td>
						</tr>
						
					</table>
					<div margin-top :"10px;" align="right">
					 |
					 <a onclick="move('list.jsp');">목록</a>
					 |
					 <a onclick="move('sujung.jsp','<%=arg1%>');">수정</a>
					 |
					 <a onclick="move('sakje.jsp','<%=arg1%>');">삭제</a>
					 |
					 
					</div>
				</form>
			</td>
		</tr>
		<!-- footer 시작 -->
		<tr>
			<td height="100px" align="center">
			<!-- include file="../include/inc_bottom.jsp" -->
			<%@ include file ="../include/inc_bottom.jsp" %>
			</td>
		</tr>

	</table>
  <script>
    function move(value1, value2){
    	location.href = value1 + "?arg1=" + value2;
    }
  </script>

</body>
</html>