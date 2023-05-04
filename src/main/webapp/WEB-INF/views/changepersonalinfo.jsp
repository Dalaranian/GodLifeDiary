<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<link href="../resources/css/styles.css" rel="stylesheet" />
<link href="../resources/css/font.css" rel="stylesheet" />

<style type="text/css">
.mypage-total {
	box-sizing: border-box;
	width: 70%;
	position: relative;
	left: 50%;
	transform: translate(-50%, 0%);
	margin: 30px 0;
}

#insert_title {
	margin: 15px 20px;
	font-size: 2rem;
	font-weight: bold;
}

.myprofile {
	box-sizing: border-box;
	width: 100%;
	position: relative;
	border: 1px solid lightgrey;
	border-radius: 1rem;
	padding: 0 30px;
}

#myinfo {
	display: inline-block;
	width: 49%;
}

#mystatus {
	display: inline-block;
	width: 49%;
}

.myprofile- {
	margin: 15px 0;
}

.profiletag {
	margin: 0;
	font-size: 13px;
	color: grey;
}

.profilecont {
	margin: 0;
	font-size: 24px;
}

#rvs {
	margin: 0;
}

#rvsButton {
	cursor: pointer;
	width: 90%;
	border-radius: 0.5rem;
	border: none;
	font-size: 1.1rem;
	color: white;
	background-color: #F7570B;
	padding: 7px;
	margin-bottom: 30px;
	vertical-align: middle;
}

.mychallenges {
	box-sizing: border-box;
	width: 80%;
	position: relative;
	left: 50%;
	transform: translate(-50%, 0%);
}

#myTab {
	width: 100%;
}

.tab-content {
	width: 100%;
}

.tab-pane {
	padding: 20px;
}

.each-category {
	padding: 10px;
	position: relative;
}
/*--------------------------------------------------------*/
.each-category {
	padding: 10px;
	position: relative;
}

.item {
	display: inline-block;
	width: 27%;
	height: 210px;
	margin: 0 4% 40px 4%;
	box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
	border-radius: 0.5rem;
	position: relative;
}

.cont {
	width: 100%;
	height: 100%;
	position: absolute;
	padding: 25px;
}

#c_name {
	display: block;
	font-size: 18px;
	letter-spacing: -1px;
	padding-bottom: 3px;
	border-bottom: 1px solid #F7570B;
	margin-bottom: 7px;
}

.item p {
	font-size: 13px;
	letter-spacing: -1px;
	margin: 0;
}

#c_info {
	margin-bottom: 5px;
}

#c_maxmember {
	color: grey;
}

#c_duration {
	display: inline-block;
	position: absolute;
	left: 25px;
	bottom: 25px;
	width: 38%;
	height: 30px;
	border: 2px solid #F7570B;
	border-radius: 1rem;
	padding: 3px;
	color: #F7570B;
	font-weight: bold;
	text-align: center;
	background-color: white;
}
/* ------------------- */
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

.joinContent {
	width: 100%;
	margin-bottom: 15px;
}

.joinContent>input {
	width: 68%;
	height: 40px;
	box-sizing: border-box;
	display: inline-block;
	border: 0.7px solid rgb(185, 184, 184);
	border-radius: 0.5rem;
}
</style>
</head>
<body>
	<!-- 네비바 부분 -->
	<nav class="navbar navbar-expand-sm navbar-dark cOrange">
		<ul class="navbar-nav me-auto mb-2 mb-sm-0" id="nav-total">
			<li><a class="navbar-brand" id="nav-title" href="../">갓생일지</a></li>
			<li id="nav-category"><a class="nav-link dropdown-toggle"
				href="#" data-bs-toggle="dropdown" aria-expanded="false">챌린지 보기</a>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="../challenge/main">All</a></li>
					<li><a class="dropdown-item" href="../challenge/main_study">공부
					</a></li>
					<li><a class="dropdown-item" href="../challenge/main_habit">습관
					</a></li>
					<li><a class="dropdown-item" href="../challenge/main_workout">운동
					</a></li>
					<li><a class="dropdown-item" href="../challenge/main_hobby">취미
					</a></li>
				</ul></li>
			<li id="nav-insertChallenge"><a class="nav-link"
				href="../challenge/insert">새 챌린지 만들기</a></li>
			<li id="nav-search">
				<form role="search">
					<input class="form-control" type="search" placeholder="Search">
				</form>
			</li>
			<li id="nav-logout"><a class="nav-link" href="../login/logout">logout</a></li>
			<li id="nav-mypage"><a class="nav-link" href="../mypage/mypage">마이페이지</a></li>
		</ul>
	</nav>
	<br>
	<br>
	<div class="center-box">
		<h1>비밀번호 변경</h1>
		<div class="joinForm">
			<form action="/mypage/changepw" method="post">
				<input type="hidden" name="userId" value="${user.userId }">
				<div class="joinContent">
					<label for="password">비밀번호</label> <input type="password" id="password" name="userPw"><br>
				</div>
				<div class="joinContent">
					<label for="password">비밀번호 확인</label> <input type="password" id="passwordCheck"><br>
				</div>
				<button onclick="return checkPw()">확인하기</button>
				<button type="submit" name="pwChangeSubmitBtn" onclick="alert('비밀번호가 변경되었습니다.')" disabled>변경하기</button>
			</form>
		</div>
	</div>
	<script type="text/javascript">
		function checkPw() {
			const password = document.getElementById("password");
			const passwordCheck = document.getElementById("passwordCheck");

			if (password.value !== passwordCheck.value) {
				alert("비밀번호가 일치하지 않습니다.");
				password.value = "";
				passwordCheck.value = ""
				return false;
			} else {
				alert("비밀번호가 일치합니다.");
				document.querySelector("button[name='pwChangeSubmitBtn']").disabled = false;
				return false;
			}
		}
	</script>
</body>
</html>