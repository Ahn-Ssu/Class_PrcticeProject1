<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<h3>입력하신 데이터는 다음과 같습니다.</h3>
<% 
	request.setCharacterEncoding("UTF-8");

String nickName = request.getParameter("nick");
String gender = request.getParameter("gender");
String stuID = request.getParameter("stuID");
String email = request.getParameter("email");
String major = request.getParameter("major");
String greetingText = request.getParameter("greetingText");

out.println("닉네임 : "+nickName+"<br>");
out.println("성별 : "+gender+"<br>");
out.println("학번 : "+stuID+"<br>");
out.println("이메일 : "+email+"<br>");
out.println("전공 : "+major+"<br>");
out.println("인사말 : "+greetingText+"<br>");

%>

</body>
</html>