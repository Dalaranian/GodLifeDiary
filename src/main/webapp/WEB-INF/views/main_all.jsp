<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<title>작은 도전이 큰 변화로, 갓생일지</title>
<link href="../resources/css/styles.css" rel="stylesheet" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />

<style>
ul,li{
	list-style:none !important; 
}

a{
	text-decoration:none;
	color:inherit;
}
.list_wrap {
	width:1000px;
	margin : 0 auto;
	
}
.list_wrap ul{
	font-size:0;
}
.list_wrap .item{
	display:inline-block;
	width:25%;
	margin-top:40px;
	margin-left:5%;
	box-shadow : 0px 0px 5px rgba(0,0,0,0.2);
	
}
.list_wrap .item:nth-child(-n+3){
	margin-top:0;
}


/* 간격 이상해지는거 얘 때문 
.list_wrap .item:nth-child(3n-2){
	margin-left:0;
} */

.list_wrap .item .imagee{
	width:100%;
	height:50px;
	background:#FF5E00;
	background-position: 50% 50%;
}


.list_wrap .item .cont{
	padding:20px;
}

.list_wrap .item strong{

	display:block;
	margin:15px 0 10px 0;
	font-size:16px;
	letter-spacing:-1px;
}

.list_wrap .item p{
	font-size:13px;
	letter-spacing: -1px;
}

.list_wrap .item a{
	display:inline-block;
	margin-top:10px;
	padding:5px 10px;
	background: #eee;
	font-size:13px;
	letter-spacing:-1px;
}

.list_wrap .item a:hover{
	background: 
}

.secContainer{
	margin-top:30px;
}

.secContainer:nth-child(1){
	margin-top:0px;
}

.container{
	text-align:center;
	margin:0 auto;
}

.container p{
	display:inline-block;
}
.floatLeft{
	text-align:center;
	 float:Left;
	}
/* 아이콘들 */
.iconPerson {
  font-variation-settings:
  'FILL' 1,
  'wght' 400,
  'GRAD' 0,
  'opsz' 48
}
.icon{
	width:15%;
	height:15%;
	margin-left:19px;
}
</style>
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
					aria-current="page" href="">Home</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					data-bs-toggle="dropdown" aria-expanded="false">Category</a>
					<ul class="dropdown-menu">
						<li><a class="dropdown-item" href="main_all">All</a></li>
						<li><a class="dropdown-item" href="main_study">공부 </a></li>
						<li><a class="dropdown-item" href="main_habit">습관 </a></li>
						<li><a class="dropdown-item" href="main_workout">운동 </a></li>
						<li><a class="dropdown-item" href="main_hobby">취미 </a></li>
					</ul>
				</li>
				<li class="nav-item"><a class="nav-link" href="">마이페이지</a></li>
				<li class="nav-item"><a class="nav-link active" href="">챌린지 등록</a></li>

			</ul>
			<form role="search">
				<input class="form-control" type="search" placeholder="Search">
			</form>
		</div>
	</div>
</nav>
<br><br><br>
<h1 class="display-5 p-4">모든 챌린지</h1>
<!-- 
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
-->

<div class="list_wrap">
	<ul class="secNoStart">
		<div class="secContainer">
			<h2 class="pb-2 border-bottom">시작전인 챌린지</h2>
		</div>
		
		<li class="item item1">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린지</strong>
				<p>물을 2리터씩 마시면 어쩌고에 좋으니 물을 마셔봐요 !!! </p>
				
				<div class="container">
					<img src="../resources/images/event.png" class="icon">
					<p> 1 Year</p>
					<img src="../resources/images/person.png" class="icon">
					<p> 7/20 </p>
				</div>
				<div class="container">
					<a href="#">참여하기</a>
				</div>
				
			</div>
		</li>
		<li class="item item2">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린지</strong>
				<p>물을 2리터씩 마시면 어쩌고에 좋으니 물을 마셔봐요 !!! </p>
				<div class="container">
					<img src="../resources/images/event.png" class="icon">
					<p> 1 Year</p>
					<img src="../resources/images/person.png" class="icon">
					<p> 7/20 </p>
				</div>
				<div class="container">
					<a href="#">참여하기</a>
				</div>
			</div>
		</li>
		<li class="item item3">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린지</strong>
				<p>물을 2리터씩 마시면 어쩌고에 좋으니 물을 마셔봐요 !!! </p>
				<div class="container">
					<img src="../resources/images/event.png" class="icon">
					<p> 1 Year</p>
					<img src="../resources/images/person.png" class="icon">
					<p> 7/20 </p>
				</div>
				<div class="container">
					<a href="#">참여하기</a>
				</div>
			</div>
		</li>
		<li class="item item4">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린지</strong>
				<p>물을 2리터씩 마시면 어쩌고에 좋으니 물을 마셔봐요 !!! </p>
				<div class="container">
					<img src="../resources/images/event.png" class="icon">
					<p> 1 Year</p>
					<img src="../resources/images/person.png" class="icon">
					<p> 7/20 </p>
				</div>
				<div class="container">
					<a href="#">참여하기</a>
				</div>
				
			</div>
		</li>
		<li class="item item5">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린지</strong>
				<p>물을 2리터씩 마시면 어쩌고에 좋으니 물을 마셔봐요 !!! </p>
				
				<div class="container">
					<img src="../resources/images/event.png" class="icon">
					<p> 1 Year</p>
					<img src="../resources/images/person.png" class="icon">
					<p> 7/20 </p>
				</div>
				<div class="container">
					<a href="#">참여하기</a>
				</div>
				
			</div>
		</li>
	</ul>
	<ul class="secStarted">
		<div class="secContainer">
			<h2 class="pb-2 border-bottom">진행중인 챌린지</h2>
		</div>
		<li class="item item6">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린지</strong>
				<p>물을 2리터씩 마시면 어쩌고에 좋으니 물을 마셔봐요 !!! </p>
				<div class="container">
					<img src="../resources/images/event.png" class="icon">
					<p> 1 Year</p>
					<img src="../resources/images/person.png" class="icon">
					<p> 7/20 </p>
				</div>
				<div class="container">
					<a href="#">참여하기</a>
				</div>
				
			</div>
		</li>
		<li class="item item7">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린지</strong>
				<p>물을 2리터씩 마시면 어쩌고에 좋으니 물을 마셔봐요 !!! </p>
				<div class="container">
					<img src="../resources/images/event.png" class="icon">
					<p> 1 Year</p>
					<img src="../resources/images/person.png" class="icon">
					<p> 7/20 </p>
				</div>
				<div class="container">
					<a href="#">참여하기</a>
				</div>
				
			</div>
		</li>
		<li class="item item8">
			
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린지</strong>
				<p>물을 2리터씩 마시면 어쩌고에 좋으니 물을 마셔봐요 !!! </p>
				<div class="container">
					<img src="../resources/images/event.png" class="icon">
					<p> 1 Year</p>
					<img src="../resources/images/person.png" class="icon">
					<p> 7/20 </p>
				</div>
				<div class="container">
					<a href="#">참여하기</a>
				</div>
			</div>
		</li>
		<li class="item item9">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린지</strong>
				<p>물을 2리터씩 마시면 어쩌고에 좋으니 물을 마셔봐요 !!! </p>
				<div class="container">
					<img src="../resources/images/event.png" class="icon">
					<p> 1 Year</p>
					<img src="../resources/images/person.png" class="icon">
					<p> 7/20 </p>
				</div>
				<div class="container">
					<a href="#">참여하기</a>
				</div>
			</div>
		</li>
	</ul>
	<ul class="secDone">
		<div class="secContainer">
			<h2 class="pb-2 border-bottom">완료된 챌린지</h2>
		</div>
		<li class="item item10">
			
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린지</strong>
				<p>물을 2리터씩 마시면 어쩌고에 좋으니 물을 마셔봐요 !!! </p>
				<div class="container">
					<img src="../resources/images/event.png" class="icon">
					<p> 1 Year</p>
					<img src="../resources/images/person.png" class="icon">
					<p> 7/20 </p>
				</div>
				<div class="container">
					<a href="#">참여하기</a>
				</div>
			</div>
		</li>
		<li class="item item11">
			
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린지</strong>
				<p>물을 2리터씩 마시면 어쩌고에 좋으니 물을 마셔봐요 !!! </p>
				<div class="container">
					<img src="../resources/images/event.png" class="icon">
					<p> 1 Year</p>
					<img src="../resources/images/person.png" class="icon">
					<p> 7/20 </p>
				</div>
				<div class="container">
					<a href="#">참여하기</a>
				</div>
			</div>
		</li>
	</ul>
</div>


<br><br><br>
<footer>
	Copyright &copy; Team 4 in SemiProject 2023
</footer>
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
</html>