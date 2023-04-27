<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body{
		position: relative;
		
		padding-left: 50px;
		padding-right: 50px;
		padding-bottom: 50px;
	}
	#board{
		position: absolute;
		width: 1170px;
		height: 750px;
		background-color: honeydew;
	}
	
	#hashtag{
		position: absolute;
		padding-right: 50px;
		width: 550px;
		height: 100px;
		background-color: aliceblue;
		left: 95%;
		transform: translateX(-92%);
		display: flex;
		justify-content: space-around;
		align-items: center;
	}
	.tag{
		margin-left: 50px;
		width: 530px;
		height: 50px;
	}
	
	#sel1{
		position: absolute;
		padding: 20px;
		background-color: lavender;
		width: 560px;
		top: 140%;
		left: 95%;
		transform: translateX(-92%);
	}
	
	#sel2{
		position: absolute;
		padding: 20px;
		background-color: fuchsia;
		width: 560px;
		top: 270%;
		left: 95%;
		transform: translateX(-92%);
	}
	
	
</style>
<body>
	<nav class="navbar navbar-expand-lg" style="background-color: orangered;">
		<div class="container px-lg-5">
			<img src="/" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
			<a class="navbar-brand" href="#!">갓생일지</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
 			<div class="collapse navbar-collapse" id="navbarSupportedContent">
 				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">마이페이지</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">logout</a></li>
				</ul>
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
	
</body>
</html>