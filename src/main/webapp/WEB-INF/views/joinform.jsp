<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>회원가입</title>
<link href="../resources/css/font.css" rel="stylesheet" />
<style>
@font-face {
	font-family: 'Pretendard-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff')
		format('woff');
	font-weight: 400;
	font-style: normal;
}

body {
	font-family: 'Pretendard-Regular', sans-serif;
}
/* 중앙에 위치한 박스 스타일 */
.center-box {
	width: 500px;
	height: 500px;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	border: 2px solid black;
	border-radius: 0.8rem;
	padding-bottom: 50px;
	padding-left: 50px;
	padding-right: 50px;
}

h1 {
	display: block;
	font-size: 2em;
	margin-block-start: 0.67em;
	margin-block-end: 0.67em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	font-weight: bold;
}

/* 가입하기 버튼 스타일 */
button[type="submit"] {
	width: 100%;
	margin-top: 10px;
	background-color: #F7570B;
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	display: inline-block;
	font-size: 16px;
	cursor: pointer;
	border-radius: 5px;
}

/* 인증번호 받기 버튼 스타일 */
#get_verification_code {
	margin-top: 10px;
	background-color: #F7570B;
	border: none;
	color: white;
	padding: 10px 20px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 14px;
	cursor: pointer;
	border-radius: 5px;
	width: 24%;
	margin: 0;
	vertical-align: middle;
}

.joinContent {
	width: 100%;
	margin-bottom: 15px;
}

.joinContent>label {
	width: 30%;
	display: inline-block;
}

.joinContent>input {
	width: 68%;
	height: 40px;
	box-sizing: border-box;
	display: inline-block;
	border: 0.7px solid rgb(185, 184, 184);
	border-radius: 0.5rem;
}

#phone {
	width: 43%;
}
#passwordConfirm {
	width: 43%;
}
</style>
</head>
<body>
	<div class="center-box">
		<h1>회원가입</h1>
		<div class="joinForm">
			<form action="/login/joincheck" method="post">
				<input type="hidden" name="onOffNoty" value="Y"> <input
					type="hidden" name="userLoginType" value="G">
				<div class="joinContent">
					<label for="id">아이디</label> <input type="text" id="id"
						name="userId"><br>
				</div>

				<div class="joinContent">
					<label for="password">비밀번호</label> <input type="password"
						id="password" name="userPw"><br>
				</div>

				<div class="joinContent">
					<label for="passwordConfirm">비밀번호 확인</label> <input type="password"
						id="passwordConfirm" name="userPwConfirm">
					<button type="button"  id="get_verification_code" onclick="return checkPw()">비밀번호 확인</button>
					<br>
				</div>

				<div class="joinContent">
					<label for="name">이름</label> <input type="text" id="name"
						name="userName"><br>
				</div>

				<div class="joinContent">
					<label for="birthdate">생년월일</label> <input type="date"
						id="birthdate" name="userBirth"><br>
				</div>

				<div class="joinContent">
					<label for="phone">전화번호</label> <input type="tel" id="phone"
						name="userPhone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}">
					<button type="button" id="get_verification_code">인증번호 받기</button>
					<br>
				</div>

				<div class="joinContent">
					<label for="verification_code">인증번호</label> <input type="text"
						id="verification_code" name="verification_code"><br>
				</div>

				<button type="submit" id="submitBtn" disabled>가입하기</button>
			</form>
		</div>
	</div>
	<script>
		function checkPw(){
			const password = document.getElementById("password");
			const passwordCheck = document.getElementById("passwordConfirm");
			
			if(password.value !== passwordCheck.value){
				alert("비밀번호가 일치하지 않습니다. ");
				password.value="";
				passwordCheck.value="";
				document.getElementById("submitBtn").disabled = true;
				return false;
			}else{
				alert("비밀번호가 일치합니다. ");
				document.getElementById("submitBtn").disabled = false;
				return false;
			}
		}
	</script>
</body>
</html>