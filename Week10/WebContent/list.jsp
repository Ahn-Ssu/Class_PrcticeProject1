<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.crud.dao.MemberDAO, com.crud.bean.MemberVO,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap-2.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
/* body {font-family: 'Nanum Pen Script', cursive;} */
/* #list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#list td, #list th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#list tr:nth-child(even) {
	background-color: #f2f2f2;
}

#list tr:hover {
	background-color: #ddd;
}

#list th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #006bb3;
	color: white;
} */
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = 'delete_ok.jsp?id=' + id;
	}
</script>
</head>
<body>
<%
	MemberDAO meberDAO = new MemberDAO();
	List<MemberVO> list = meberDAO.getMemberList();
	request.setAttribute("list", list);
	%>
<div style="width:95%;position:absolute;top:2%;left:2%">
	<h1>자유게시판</h1>
	<table class="table table-hover" style="width:95%">
		<tr class="table-info">
			<th>No</th>
			<th>User ID</th>
			<th>User Name</th>
			<th>Email</th>
			<th>Registered Date</th>
			<th>View</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<tbody>
		<c:forEach items="${list}" var="u">
		
				<td>${u.getSid()}</td>
				<td>${u.getUserid()}</td>
				<td>${u.getUsername()}</td>
				<td>${u.getEmail()}</td>
				<td>${u.getRegdate()}</td>
				<td><button type="button" class="btn btn-outline-info" onclick="location.href='view.jsp?id=${u.getSid()}'">View</button></td>
				<td><button type="button" class="btn btn-outline-warning" onclick="location.href='editform.jsp?id=${u.getSid()}'">Edit</button></td>
				<td><button type="button" class="btn btn-outline-danger" onclick="location.href='javascript:delete_ok(\'${u.getSid()}\')'">Delete</button></td>
			</tr>
			
		</c:forEach>
		</tbody>
	</table>
	<br />
	<button type="button" class="btn btn-outline-info" onclick="location.href='addform.jsp'">Add New Post</button>
	</div>
</body>
</html>