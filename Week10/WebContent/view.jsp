<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.MemberDAO, com.crud.bean.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap-2.css" rel="stylesheet" type="text/css">
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

	<%
	MemberDAO memberDAO = new MemberDAO();
	String id = request.getParameter("id");
	MemberVO u = memberDAO.getMember(Integer.parseInt(id));
	request.setAttribute("vo", u);
	%>
<div style="width: 80%;position:absolute;top:10%;left:10%">
	<h1>View</h1>
	<!-- editpost.jsp에 submit을 수행-->
	
	<form action="edit_ok.jsp" method="post">
		<input type="hidden" name="sid" value="<%=u.getSid()%>" />
		<table class="table table-hover">
			<tr>
				<td>User Id:</td>
				<td>${vo.getUserid() }</td>
			</tr>
			<tr>
				<td>User Name:</td>
				<td>${vo.getUsername() }</td>
			</tr>
			<tr>
				<td>Photo:</td><td><c:if test="${vo.getPhoto() ne ''}"><br />
				<img width="50%" src="${pageContext.request.contextPath }/upload/${vo.getPhoto()}" class="photo"></c:if></td>
			</tr>
			<tr>
				<td>Email:</td><td>${vo.getEmail() }</td>
			</tr>
			<tr>
				<td>Detail:</td>
				<td>${vo.getDetail() }</td>
			</tr>
			</table>
			<button type="button" class="btn btn-outline-warning"
				onclick="history.back()">Back</button>
			<button type="button"
					onclick="location.href='editform.jsp?id=${vo.getSid()}'" class="btn btn-outline-success">Fix info.</button>
	</form>
</div>
</body>
</html>