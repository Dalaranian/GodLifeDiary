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
</head>
<body>
	<button onclick="location.href='index/main'">hello</button>
	<button onclick="location.href='challenge/detail'">main</button>
	<button onclick="location.href='mypage/mypage'">mypage</button>
	<button onclick="location.href='challenge/detail'">challengedetail</button>
	<button onclick="location.href='challenge/insert'">challengeinsert</button>
<!-- Responsive navbar-->
<nav class="navbar navbar-expand-sm navbar-dark cOrange">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">갓생일지</a>
		<button class="navbar-toggler" type="button">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample03">
			<ul class="navbar-nav me-auto mb-2 mb-sm-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index/main">Home</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					data-bs-toggle="dropdown" aria-expanded="false">Category</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">All</a></li>
						<li><a class="dropdown-item" href="#">운동</a></li>
						<li><a class="dropdown-item" href="#">공부</a></li>
						<li><a class="dropdown-item" href="#">습관</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link" href="mypage/mypage">마이페이지</a></li>
				<li class="nav-item"><a class="nav-link disabled">관리자모드</a></li>

			</ul>
			<form role="search">
				<input class="form-control" type="search" placeholder="Search">
			</form>
		</div>
	</div>
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