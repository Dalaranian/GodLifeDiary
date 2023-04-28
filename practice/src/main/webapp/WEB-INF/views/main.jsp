<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>작은 도전이 큰 변화로, 갓생일지</title>
<link href="../resources/css/styles.css" rel="stylesheet" />
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark cOrange">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">갓생일지</a>
		<button class="navbar-toggler" type="button"
			data-bs-toggle="collapse" data-bs-target="#navbarsExample03"
			aria-controls="navbarsExample03" aria-expanded="false">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample03">
			<ul class="navbar-nav me-auto mb-2 mb-sm-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="#">Home</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					data-bs-toggle="dropdown" aria-expanded="false">Category</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="#">All</a></li>
						<li><a class="dropdown-item" href="#">운동</a></li>
						<li><a class="dropdown-item" href="#">공부</a></li>
						<li><a class="dropdown-item" href="#">습관</a></li>
					</ul></li>
				<li class="nav-item"><a class="nav-link" href="#">마이페이지</a></li>
				<li class="nav-item"><a class="nav-link disabled">관리자모드</a></li>

			</ul>
			<form role="search">
				<input class="form-control" type="search" placeholder="Search">
			</form>
		</div>
	</div>
</nav>

<br>
<br>
<header class="introduce_form">
	<div class="container px-lg-5">
		<div class="p-4 p-lg-5 bg-light rounded-3 text-center" style="">
			<div class="m-4 m-lg-5">
				<h1 class="display-5 fw-bold">
					운동,공부,습관,취미 등<br> 다양한 목표를 세우고 공유하세요
				</h1>
				<p class="fs-4">마음에 드는 챌린지가 없다면?</p>
				<br> <a class="startBtn" href="insertchallenge">챌린지 등록</a>
			</div>
		</div>
	</div>
</header>

<!--챌린지 목록 -->
<div class="container px-4 py-5" id="custom-cards">
	<h2 class="pb-2 border-bottom">시작전인 챌린지</h2>
	<div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
		<div class="col">
			<div class="chCard">
				<div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
					<h3>물 2L씩 마시기</h3><br>
					<h6>하루에 물을 2L씩 마시면 어쩌고에 좋아요 n번째 연장중인 챌린지입니다!</h6><br><br><br>
					<ul class="chCardli">
						<h6>(달력 아이콘) 1 Year</h6>
						<h6>(사람 아이콘) 2/5</h6>
					</ul>
				</div>
			</div>
		</div>

		<div class="col">
			<div class="chCard">
				<div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
					<h3>프로그래머스 코딩테스트 Level.1 하루에 한개씩 풀기!</h3><br>
					<h6>하루에 하나씩 문제를 풀고 어떤 문제를 풀었는지, 또 어느 부분이 어려웠는지 같이 나눠요 !!</h6><br><br><br>
					<ul class="chCardli">
						<h6>(달력 아이콘) 4 Weeks</h6>
						<h6>(사람 아이콘) 4/10</h6>
					</ul>
				</div>
			</div>
		</div>

		<div class="col">
			<div class="chCard">
				<div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
					<h3>ㅇㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㅁㄴㅇ</h3><br>
					<h6>ㄹㄴㅇㄹㄴㅇ런아러짇러ㅣㅓㅇㄴ</h6><br><br><br>
					<ul class="chCardli">
						<h6>(달력 아이콘) 1 Year</h6>
						<h6>(사람 아이콘) 2/5</h6>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<br><br>
	<h2 class="pb-2 border-bottom">진행중인 챌린지</h2>

	<div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5">
		<div class="col">
			<div class="chCard cblue">
				<div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
					<h3>물 2L씩 마시기</h3><br>
					<h6>하루에 물을 2L씩 마시면 어쩌고에 좋아요 n번째 연장중인 챌린지입니다!</h6><br><br><br>
					<ul class="chCardli">
						<h6>(달력 아이콘) 1 Year</h6>
						<h6>(사람 아이콘) 2/5</h6>
					</ul>
				</div>
			</div>
		</div>

		<div class="col">
			<div class="chCard cblue">
				<div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
					<h3>프로그래머스 코딩테스트 Level.1 하루에 한개씩 풀기!</h3><br>
					<h6>하루에 하나씩 문제를 풀고 어떤 문제를 풀었는지, 또 어느 부분이 어려웠는지 같이 나눠요 !!</h6><br><br><br>
					<ul class="chCardli">
						<h6>(달력 아이콘) 4 Weeks</h6>
						<h6>(사람 아이콘) 4/10</h6>
					</ul>
				</div>
			</div>
		</div>

		<div class="col">
			<div class="chCard cblue">
				<div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
					<h3>ㅇㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㅁㄴㅇ</h3><br>
					<h6>ㄹㄴㅇㄹㄴㅇ런아러짇러ㅣㅓㅇㄴ</h6><br><br><br>
					<ul class="chCardli">
						<h6>(달력 아이콘) 1 Year</h6>
						<h6>(사람 아이콘) 2/5</h6>
					</ul>
				</div>
			</div>
		</div>
	</div>

	
	<br><br>
	
	<h2 class="pb-2 border-bottom">완료된 챌린지</h2>

	<div class="row row-cols-1 row-cols-lg-3 align-items-stretch g-4 py-5 ">
		<div class="col">
			<div class="chCard cRed">
				<div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
					<h3>물 2L씩 마시기</h3><br>
					<h6>하루에 물을 2L씩 마시면 어쩌고에 좋아요 n번째 연장중인 챌린지입니다!</h6><br><br><br>
					<ul class="chCardli">
						<h6>(달력 아이콘) 1 Year</h6>
						<h6>(사람 아이콘) 2/5</h6>
					</ul>
				</div>
			</div>
		</div>

		<div class="col c">
			<div class="chCard cRed">
				<div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
					<h3>프로그래머스 코딩테스트 Level.1 하루에 한개씩 풀기!</h3><br>
					<h6>하루에 하나씩 문제를 풀고 어떤 문제를 풀었는지, 또 어느 부분이 어려웠는지 같이 나눠요 !!</h6><br><br><br>
					<ul class="chCardli">
						<h6>(달력 아이콘) 4 Weeks</h6>
						<h6>(사람 아이콘) 4/10</h6>
					</ul>
				</div>
			</div>
		</div>

		<div class="col">
			<div class="chCard cRed">
				<div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
					<h3>ㅇㄹㄴㄹㄴㅇㄹㄴㅇㄹㄴㅇㄹㅁㄴㅇ</h3><br>
					<h6>ㄹㄴㅇㄹㄴㅇ런아러짇러ㅣㅓㅇㄴ</h6><br><br><br>
					<ul class="chCardli">
						<h6>(달력 아이콘) 1 Year</h6>
						<h6>(사람 아이콘) 2/5</h6>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="col">
		<div
			class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg"
			style="background-image: url('unsplash-photo-3.jpg');">
				<div class="d-flex flex-column h-100 p-5 pb-3 text-shadow-1">
					<h3 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Another
						longer title belongs here</h3>
					<ul class="d-flex list-unstyled mt-auto">
						<li class="me-auto"><img src="https://github.com/twbs.png"
							alt="Bootstrap" width="32" height="32"
							class="rounded-circle border border-white"></li>
						<li class="d-flex align-items-center me-3"><svg
								class="bi me-2" width="1em" height="1em">
								<use xlink:href="#geo-fill" /></svg> <small>California</small></li>
						<li class="d-flex align-items-center"><svg class="bi me-2"
								width="1em" height="1em">
								<use xlink:href="#calendar3" /></svg> <small>5d</small></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<h2>
	<a href="myboard/list">list</a>
</h2>

<footer>
	<div class="container px-5">
		<p class="m-0 text-center text-white">Copyright &copy; Team 4 in
			SemiProject 2023</p>
	</div>
</footer>
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
</html>