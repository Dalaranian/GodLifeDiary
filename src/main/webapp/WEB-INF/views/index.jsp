<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>작은 도전이 큰 변화로, 갓생일지</title>
<link href="../resources/css/styles.css" rel="stylesheet" />
<link href="../resources/css/font.css" rel="stylesheet" />
</head>
<body>
	<button onclick="location.href='challenge/detail?challengeName=매일 30분 걷기 챌린지'">challengedetail</button>
<!-- Responsive navbar-->
<nav class="navbar navbar-expand-sm navbar-dark cOrange">
	<ul class="navbar-nav me-auto mb-2 mb-sm-0" id="nav-total">
		<li>
			<a class="navbar-brand" id="nav-title" href="../">갓생일지</a>
		</li>
		<li id="nav-category"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">챌린지 보기</a>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="../challenge/main">All</a></li>
				<li><a class="dropdown-item" href="#">공부 </a></li>
				<li><a class="dropdown-item" href="#">습관 </a></li>
				<li><a class="dropdown-item" href="#">운동 </a></li>
				<li><a class="dropdown-item" href="#">취미 </a></li>
			</ul>
		</li>
		<li id="nav-insertChallenge"><a class="nav-link" href="../challenge/insert">새 챌린지 만들기</a></li>
		<li id="nav-search">
			<form role="search">
				<input class="form-control" type="search" placeholder="Search">
			</form>
		</li>
		<li id="nav-mypage"><a class="nav-link" href="../mypage/mypage">마이페이지</a></li>
	</ul>
</nav>


<div class="main_container">
	<h1 class="main_slogan">
		작은 도전이 큰 변화로, <br>다른 사람들과 목표를 공유하세요
	</h1>
	<br>
	<!-- <p class="lead fw-border text-white-50 mb-4">다른 사람들과 목표를 공유하고 서로의 코멘트를 보고 ~~하세요 !</p> -->
	<div class="startBtnForm">
		<!-- 버튼 가운데정렬 -->
		<a class="startBtn" href="challenge/main">지금 시작하기</a>
		<a class="startBtn" href="login/login">로그인</a>
		<!--  로그인 안되어있으면 로그인(loginmain) 로그인 되어있으면 메인(detail)으로  -->
		<!--  <a class="button btnFloat colorblue" href="login">진행되고 있는 챌린지</a> -->
	</div>
	</h1>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<!-- Footer-->
<footer> Copyright &copy; Team 4 in SemiProject 2023 </footer>
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
</html>