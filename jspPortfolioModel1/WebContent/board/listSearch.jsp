<%@page import="config.Util"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="_inc_top.jsp" %>
<%
   String searchGubun = request.getParameter("searchGubun");
   String searchData = request.getParameter("searchData");
   Util util = new Util();
   searchGubun = util.getNullBlankCheck(searchGubun, "");
   searchData = util.getNullBlankCheck(searchData, "");
   searchData = util.getCheckString(searchData);
   
   if (searchGubun.equals("") || searchData.equals("")) {
      searchGubun = "";
      searchData = "";
   }//if
   System.out.println(searchGubun+ " / " + searchData);
%>
<script>
   function linkMove(value1, value2) {
      location.href = "main.jsp?menuGubun=board_list&searchGubun="+ value1 +"&searchData="+ value2;
   }
   linkMove('<%=searchGubun %>','<%=searchData %>');
</script>