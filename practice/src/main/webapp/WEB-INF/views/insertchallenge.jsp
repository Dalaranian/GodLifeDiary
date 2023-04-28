<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<title>작은 도전이 큰 변화로, 갓생일지 </title>
        <link href="../resources/css/styles.css" rel="stylesheet" />
</head>
<body>
<nav class="navbar navbar-expand-sm navbar-dark cOrange">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">갓생일지</a>
		<button class="navbar-toggler" type="button">
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

<form action="/" method="POST">
	<div id="board">

	</div>

	<div id="hashtag">
		<input class="tag" type="text" placeholder="해시태그를 입력해주세요" />
	</div>

	<div id="sel1">
		<div class="form-check form-check-inline">
		  <div id="personselect">최소 참여 인원 선택</div>
		  <br>
		  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
		  <label class="form-check-label" for="inlineRadio1">3명</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
		  <label class="form-check-label" for="inlineRadio2">4명</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
		  <label class="form-check-label" for="inlineRadio2">5명</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
		  <label class="form-check-label" for="inlineRadio2">10명</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
		  <label class="form-check-label" for="inlineRadio2"><input type="text" placeholder="직접 입력" /></label>
		</div>
	</div>
	
	<div id="sel2">
		<div class="form-check form-check-inline">
		  <div id="personselect">챌린지 진행 기간</div>
		  <br>
		  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
		  <label class="form-check-label" for="inlineRadio1">1주</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
		  <label class="form-check-label" for="inlineRadio2">2주</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
		  <label class="form-check-label" for="inlineRadio2">3주</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
		  <label class="form-check-label" for="inlineRadio2">4주</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
		  <label class="form-check-label" for="inlineRadio2">3개월</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
		  <label class="form-check-label" for="inlineRadio2">1년</label>
		</div>
		<div class="form-check form-check-inline">
		  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
		  <label class="form-check-label" for="inlineRadio2"><input type="text" placeholder="직접 입력" /></label>
		</div>
	</div>
</form>
<footer>
       Copyright &copy; Team 4 in SemiProject 2023
   </footer>
<!-- Bootstrap core JS-->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
   <!-- Core theme JS-->
   <script src="js/scripts.js"></script>
</body>
</html>