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
	padding:100px;
}
.list_wrap ul{
	font-size:0;
}
.list_wrap .item{
	display:inline-block;
	width:30%;
	margin-top:40px;
	margin-left:5%;
	box-shadow : 0px 0px 5px rgba(0,0,0,0.2);
}
.list_wrap .item:nth-child(-n+3){
	margin-top:0;
}

.list_wrap .item:nth-child(3n-2){
	margin-left:0;
}

.list_wrap .item .imagee{
	width:100%;
	height:200px;
	background:#BDCBDA;
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
	letter-spacing: 
}

.list_wrap .item a:hover{
	background: 
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

<div class="list_wrap">
	<ul>
		<li class="item item1">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린</strong>
				<p>물을 2리터씩 마시면 어쩌고</p>
				<a href="#">참여하기</a>
			</div>
		</li>
		<li class="item item2">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물3리터 마시기 챌린</strong>
				<p>물을 2리터씩 마시면 어쩌고</p>
				<a href="#">참여하기</a>
			</div>
		</li>
		<li class="item item3">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린</strong>
				<p>물을 2리터씩 마시면 어쩌고</p>
				<a href="#">참여하기</a>
			</div>
		</li>
		<li class="item item4">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린</strong>
				<p>물을 2리터씩 마시면 어쩌고</p>
				<a href="#">참여하기</a>
			</div>
		</li>
		<li class="item item5">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린</strong>
				<p>물을 2리터씩 마시면 어쩌고</p>
				<a href="#">참여하기</a>
			</div>
		</li>
		<li class="item item6">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린</strong>
				<p>물을 2리터씩 마시면 어쩌고</p>
				<a href="#">참여하기</a>
			</div>
		</li>
		<li class="item item7">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린</strong>
				<p>물을 2리터씩 마시면 어쩌고</p>
				<a href="#">참여하기</a>
			</div>
		</li>
		<li class="item item8">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린</strong>
				<p>물을 2리터씩 마시면 어쩌고</p>
				<a href="#">참여하기</a>
			</div>
		</li>
		<li class="item item9">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린</strong>
				<p>물을 2리터씩 마시면 어쩌고</p>
				<a href="#">참여하기</a>
			</div>
		</li>
		<li class="item item10">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린</strong>
				<p>물을 2리터씩 마시면 어쩌고</p>
				<a href="#">참여하기</a>
			</div>
		</li>
		<li class="item item11">
			<div class="imagee">ㅇ</div>
			<div class="cont">
				<strong>물2리터 마시기 챌린</strong>
				<p>물을 2리터씩 마시면 어쩌고</p>
				<a href="#">참여하기</a>
			</div>
		</li>
	</ul>
</div>


<br><br><br>
<footer>Copyright &copy; Team 4 in SemiProject 2023
	
</footer>
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
</html>