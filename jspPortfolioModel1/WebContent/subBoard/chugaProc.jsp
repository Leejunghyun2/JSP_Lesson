<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="_inc_top.jsp" %>
<%


	
	String writer = request.getParameter("writer");
	String email = request.getParameter("email");
	String passwd = request.getParameter("passwd");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	String noticeGubun = request.getParameter("noticeGubun");
	String secretGubun = request.getParameter("secretGubun");
	
	
	content = util.getCheckString(content);
	
	SubBoardDAO dao = new SubBoardDAO(); 
	int num = dao.getMaxValueNumRefNoNoticeNo("num") + 1; //num필드의 최대값 + 1
	
	
	//새글
	int refNo = dao.getMaxValueNumRefNoNoticeNo("refNo") + 1; //refNo 필드의 최대값 + 1
	int stepNo = 1; //초기값 1
	int levelNo = 1; //초기값 1
	int parentNo = 0; //초기값 0
	int hit = 0;
	//답변글일때
	if(no > 0){
		SubBoardDTO arguDto = new SubBoardDTO();
		arguDto.setNo(no);
		arguDto.setTbl(tbl);
		
		SubBoardDTO returnDto = dao.getSelectOne(arguDto);
		
		refNo = returnDto.getRefNo();
		stepNo = returnDto.getStepNo() + 1;
		
		dao.setUpdateReLevel(returnDto);
		levelNo = returnDto.getLevelNo() + 1;
		parentNo = no;
	}
	
	int memberNo = sessionNo;
	int noticeNo = 0;
	if(noticeGubun.equals("T")){
		noticeNo = dao.getMaxValueNumRefNoNoticeNo("noticeNo") + 1; // noticeGubun 최대값 + 1
	}
	
	String attachInfo = "-"; 
	content = util.getCheckString(content);
	
	SubBoardDTO arguDto = new SubBoardDTO();
	arguDto.setNum(num);
	arguDto.setTbl(tbl);
	arguDto.setWriter(writer);
	arguDto.setEmail(email);
	arguDto.setPasswd(passwd);
	arguDto.setSubject(subject);
	arguDto.setContent(content);
	arguDto.setRefNo(refNo);
	arguDto.setStepNo(stepNo);
	arguDto.setLevelNo(levelNo);
	arguDto.setParentNo(parentNo);
	arguDto.setHit(hit);
	arguDto.setIp(ip);
	arguDto.setNoticeNo(noticeNo);
	arguDto.setSecretGubun(secretGubun);
	arguDto.setMemberNo(memberNo);
	arguDto.setAttachInfo(attachInfo);
	
	int result = dao.setInsert(arguDto);
	
 	if(result > 0){
		out.println("<script>");
		//out.println("");
		if(no > 0){
			out.println("location.href = 'main.jsp?menuGubun=subBoard_list&pageNumber=" + pageNumber + "&tbl=" + tbl + "';");
		} else {
			out.println("location.href = 'main.jsp?menuGubun=subBoard_list&tbl=" + tbl + "';");
		}
		out.println("</script>");
	} else {
		out.println("<script>");
		out.println("alert('등록 중 오류가 발생했습니다.')");
		out.println("location.href = 'main.jsp?menuGubun=subBoard_chuga&no=" + no + "&tbl=" + tbl +"';");
		out.println("</script>");
	}
	
	
	
%>