
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
	
	String arg1 = request.getParameter("arg1");
 	if(arg1 == null || arg1.trim().equals("")){
 		response.sendRedirect("list.jsp");
 	} 
	//response.sendRedirect("list.jsp");//jsp로 바로 넘길때
	String passwd = request.getParameter("passwd");
	
	
	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	int result = 0;
	String msg ="";
	try{
	
		Class.forName(dbDriver);
		conn = DriverManager.getConnection(dbUrl,dbId,dbPw);
		System.out.print("\n db 접속성공");
		//---------------------------------------
		//---------------------------------------
		String sql = "delete from member where id = ? and passwd =?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, arg1);
		pstmt.setString(2, passwd);
		result = pstmt.executeUpdate();
		if(result > 0){
			out.print("<script>");
			out.print("alert('성공');");
			out.print("location.href = 'list.jsp';");
			out.print("</script>");
		}else{
			out.print("<script>");
			out.print("alert('실패:존재하지않거나 비밀번호가 틀립니다.');");
			out.print("history.back();");
			out.print("</script>");
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

%>
    
    
    
    
    