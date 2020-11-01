<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File Uploader</title>
</head>
<body>
	<h1>file Upload [Photo]</h1>
	<!-- addpost.jsp에 submit을 수행 -->
	<form method='post' action='fileupload.jsp' enctype="multipart/form-data">
	<input type='file' name='photo'>
	<input type='submit' value='upload'>
	</form>

</body>
</html>