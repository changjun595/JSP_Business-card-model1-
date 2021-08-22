<%@ page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8"%>
<%@ page import = "regDAO.DAO" %>
<%@ page import = "regDTO.DTO" %>

<% 
  request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<style>
	.text
	{
		text-align: center;
		font-size: 32px;
	}
</style>
<meta charset="UTF-8">
<title>삭제완료</title>
<%
	String name = request.getParameter("name");	
	DAO dao = new DAO();	
	boolean flag = dao.delete(name);
	String str;
	
	if (flag == true) str ="삭제가 완료 되었습니다.";
	else  str = "삭제 실패.....";
%>
</head>
<body>
	<div class="text">
		<%= str%>
		<br />
		<a href="selectForm.jsp">목록으로</a>
	</div>
</body>
</html>