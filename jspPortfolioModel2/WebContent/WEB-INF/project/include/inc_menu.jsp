<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/inc_header.jsp" %>     
<table bodder="0" aling="center" width="90%">
	<tr>
		<td colspan="5" style="padding: 0px 0px 0px 20px;">
		   접속 IP : ${ip }
		</td>
		<td colspan="4" style="padding: 0px 0px 0px 20px;" align="right">
		<c:choose>
		<c:when test="${sessionScope.sessionNo == null || sessionScope.sessionNo == '' || sessionScope.sessionNo == 0 }">
			<a href="${path}/noLogin_servlet/noLogin_login.do">로그인</a>
		</c:when>
		<c:otherwise>
		${sessionScope.sessionName} 님
			<a href="${path }/member_servlet/member_sujung.do">회원정보수정</a>
			<a href="${path }/member_servlet/member_sakje.do">회원탈퇴</a>
			<a href="${path }/noLogin_servlet/noLogin_logout.do">로그아웃</a>
		</c:otherwise>
		</c:choose>
		</td>
	</tr>
	<tr align="center">
		<td style="padding: 0px 10px;" id="home">
			<a href="${path }/dashBoard_index.do">HOME</a>
		</td>
		<td style="padding: 0px 10px;" id="member">
			<a href="${path }/member_servlet/member_list.do">회원관리</a>
		</td>
		<td style="padding: 0px 10px;" id="memo">
			<a href="${path }/memo_servlet/memo_list.do">메모장</a>
		</td>
		<td style="padding: 0px 10px;" id="memoMybatis">
			<a href="${path }/memoMybatis_servlet/memoMybatis_list.do">메모장(Mybatis)</a>
		</td>
		<td style="padding: 0px 10px;" id="guestBookMybatis">
			<a href="${path }/guestBookMybatis_servlet/guestBookMybatis_list.do">방명록</a>
		</td>
		<td style="padding: 0px 10px;" id="board">
			<a href="${path }/board_servlet/board_list.do">게시판</a>
		</td>
		<td style="padding: 0px 10px;" id="shopProduct">
			<a href="#">Mall(상품관리)</a>
		</td>
		<td style="padding: 0px 10px;" id="shopVendor">
			<a href="#">Mall(제조사)</a>
		</td>
		<td style="padding: 0px 10px;" id="shopMall">
			<a href="#">Mall(쇼핑몰)</a>
		</td>
		<td style="padding: 0px 10px;" id="chart">
			<a href="{path }/board_servlet/chart_dbChart.do">Chart</a>
		</td>
	</tr>
</table>