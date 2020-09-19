<?php
$nick =$_GET['nick'];
$gender =$_GET['gender'];
$stuID =$_GET['stuID'];
$email =$_GET['email'];
$major =$_GET['major'];
$greetingText =$_GET['greetingText'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>myphp</title>
</head>
<body>
    <h3>입력하신 데이터는 다음과 같습니다.</h3>
    <div> 닉네임 : <?= $nick?> </div>
    <div> 성별 : <?= $gender?> </div>
    <div> 학번 : <?= $stuID?> </div>
    <div> 이메일 : <?= $email?> </div>
    <div> 전공 : <?= $major?> </div>
    <div> 인사말 : <?= $greetingText?> </div>
    
</body>
</html>