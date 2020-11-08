<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="bootstrap-2.css" rel="stylesheet" type="text/css">
<title>NEWNEW</title>
</head>
<body>
	<fieldset>
	<div style="width: 80%;position:absolute;top:10%;left:10%">
		<h2>Add New Post</h2>
		<!-- addpost.jsp에 submit을 수행 -->
		<form action="add_ok.jsp" method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="exampleInputEmail1">User ID</label> <input type="text"
					name="userid" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Enter ID">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					type="text" name="password" class="form-control"
					id="exampleInputPassword1" placeholder="Password">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">User name</label> <input
					type="text" name="username" class="form-control"
					id="exampleInputPassword1" placeholder="nick">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					type="text" name="email" class="form-control"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Enter email"> <small id="emailHelp"
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
					aria-describedby="fileHelp"> <small id="fileHelp"
					class="form-text text-muted">This is some placeholder
					block-level help text for the above input. It's a bit lighter and
					easily wraps to a new line.</small>
			</div>
			<div class="form-group">
				<label for="exampleTextarea">Detail</label>
				<textarea class="form-control" name="detail" id="exampleTextarea" rows="5"></textarea>
			</div>
				<button type="button" class="btn btn-outline-warning" onclick="location.href='list.jsp'">View All Records</button>
				<button type="submit" class="btn btn-outline-success">Add Post</button>
		</form>
		</div>
	</fieldset>
	
</body>
</html>