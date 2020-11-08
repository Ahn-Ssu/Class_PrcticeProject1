<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.crud.dao.MemberDAO, com.crud.bean.MemberVO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="bootstrap-2.css" rel="stylesheet" type="text/css">
<title>Edit Form</title>
</head>
<body>

<%
	MemberDAO memberDAO = new MemberDAO();
	String id=request.getParameter("id");	
	System.out.println(id);
	MemberVO u=memberDAO.getMember(Integer.parseInt(id));
	request.setAttribute("vo", u);
%>
<div style="width: 80%;position:absolute;top:10%;left:10%">
<h1>Edit Form</h1>
<!-- editpost.jsp에 submit을 수행-->

<form action="edit_ok.jsp" method="post" enctype="multipart/form-data">
<input type="hidden" name="sid" value="<%=u.getSid() %>"/>
<div class="form-group">
				<label for="exampleInputPassword1">User name</label> <input
					type="text" name="username" class="form-control"
					id="exampleInputPassword1" placeholder="Password" value="<%= u.getUsername()%>">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					type="text" name="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Enter email" value="<%= u.getEmail()%>"> <small id="emailHelp"
					class="form-text text-muted">We'll never share your email
					with anyone else.</small>
			</div>
			<!-- 	<tr>
				<td>Photo:</td>
				<td><input type="text" name="email" /></td>
			</tr> -->
			<div class="form-group">
				<label for="exampleInputFile">Photo</label> <input type="file"
					name="photo" class="form-control-file" id="exampleInputFile"
					aria-describedby="fileHelp" value="<%= u.getPhoto()%>">
					<c:if test="${vo.getPhoto() ne ''}"><br /><img width="50%" src="${pageContext.request.contextPath }/upload/${vo.getPhoto() }" class="photo"></c:if>
			</div>
			<div class="form-group">
				<label for="exampleTextarea">Detail</label>
				<textarea class="form-control" name="detail" id="exampleTextarea" rows="5"><%= u.getDetail()%></textarea>
			</div>
			
				<button type="button" class="btn btn-outline-warning" onclick="history.back()">Cancel</button>
				<button type="submit" class="btn btn-outline-success">Edit Post</button>
		</form>
		</div>
<%-- <table>
<tr><td>User name:</td><td><input type="text" name="username" value="<%= u.getUsername()%>"/></td></tr>
<tr><td>Email:</td><td><input type="text" name="email" value="<%= u.getEmail()%>"/></td></tr>
<tr><td>Photo:</td><td><input type="text" name="photo" value="<%= u.getPhoto()%>" /></td></tr>
<tr><td>Detail:</td><td><textarea cols="50" rows="5" name="detail"><%= u.getDetail()%></textarea></td></tr>
<tr><td colspan="2"><input type="submit" value="Edit Post"/>
<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
</table>
</form> --%>

</body>
</html>