<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="_inc_top.jsp" %>
<%
	SubBoardDTO arguDto = new SubBoardDTO();
	arguDto.setNo(no);
	arguDto.setTbl(tbl);
	
	SubBoardDAO subBoardeDao = new SubBoardDAO();
	SubBoardDTO returnDto = subBoardeDao.getSelectOne(arguDto);

	if(returnDto.getNo() <= 0){
		out.println("메롱..");
		return;
	}
%>
<h2>게시글삭제</h2>
<form name="sakjeForm">
<input type="hidden" name="tbl" value="<%=tbl %>">
<input type="hidden" name="no" value="<%=no %>">
<input type="hidden" name="searchGubun" value="<%=searchGubun%>">
<input type="hidden" name="searchData" value="<%=searchData%>">
<input type="hidden" name="pageNumber" value="<%=pageNumber%>">
<table border="1" width="80%">
	<tr>
		<td>작성자</td>
		<td><%=returnDto.getWriter() %></td>
	</tr>
	<tr>
		<td>이메일</td>
		<td><%=returnDto.getEmail()%></td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td><input type="password" name="passwd"></td>
	</tr>
	<tr>
		<td>제목</td>
		<td><%=returnDto.getSubject()%></td>
	</tr>
	<tr>
		<td>내용</td>
		<td><%=returnDto.getContent().replace("\n", "<br>") %></td>
	</tr>
	<tr>
			<td>공지글</td> 
			<td>
 		<%if(returnDto.getNoticeNo() > 0){ %>			
				<input type="radio" name="noticeGubun" id="noticeGubun1" value="T" checked>공지글 &nbsp;
				<input type="radio" name="noticeGubun" id="noticeGubun2" value="F">공지글아님 &nbsp;
		<%} else { %>
				<input type="radio" name="noticeGubun" id="noticeGubun1" value="T">공지글 &nbsp;
				<input type="radio" name="noticeGubun" id="noticeGubun2" value="F" checked>공지글아님 &nbsp;
		<%} %>
			</td> 
		</tr>
		<tr>
		<tr>
			<td>비밀글</td>
		<%if(returnDto.getSecretGubun().equals("T") ){ %>		
			<td>
				<input type="radio" name="secretGubun" id="secretGubun1" value="T" checked>비밀글 &nbsp;
				<input type="radio" name="secretGubun" id="secretGubun2" value="F">비밀글아님 &nbsp;
			</td>
		<%} else { %>
			<td>
				<input type="radio" name="secretGubun" id="secretGubun1" value="T">비밀글 &nbsp;
				<input type="radio" name="secretGubun" id="secretGubun2" value="F" checked>비밀글아님 &nbsp;
			</td>
		<%} %>
		</tr>
	<tr>
		<td colspan="2">
			<button type="button" onclick="sakje();">삭제하기</button>
			<button type="button" onclick="location.href = 'main.jsp?menuGubun=subBoard_list';">목록으로</button>
		</td>
	</tr>
</table>
</form>
<script>
	function sakje(){
		if(confirm('삭제할까요?')){
			var f = document.sakjeForm;
			f.action = "mainProc.jsp?menuGubun=subBoard_sakjeProc";
			f.method = "post";
			f.submit();
		}		
	}
</script>