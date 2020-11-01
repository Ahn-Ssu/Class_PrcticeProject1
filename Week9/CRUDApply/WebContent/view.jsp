<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.crud.dao.MemberDAO, com.crud.bean.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

<%
	MemberDAO memberDAO = new MemberDAO();
	String id=request.getParameter("id");	
	MemberVO u=memberDAO.getMember(Integer.parseInt(id));
	int theid = u.getSid();
%>

<h1>View</h1>
<!-- editpost.jsp에 submit을 수행-->
<form action="edit_ok.jsp" method="post">
<input type="hidden" name="sid" value="<%=u.getSid() %>"/>
<table>
<tr><td>User Id:</td><td><%= u.getUserid()%></td></tr>
<tr><td>User Name:</td><td><%= u.getUsername()%></td></tr>
<tr><td>Photo:</td><td><%= u.getPhoto()%></td></tr>
<tr><img src="u.getPhoto()"></tr>
<tr><td>Email:</td><td><%= u.getEmail()%></td></tr>
<tr><td>Detail:</td><td><%= u.getDetail()%></td></tr>
<tr><td colspan="2">
<input type="button" value="Fix info." onclick="location.href='editform.jsp?id=<%=theid%>'"/>
<input type="button" value="Back" onclick="history.back()"/></td></tr>
</table>
</form>

</body>
</html>