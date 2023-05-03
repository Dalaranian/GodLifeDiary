<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>챌린지 등록</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="../resources/css/styles.css" rel="stylesheet" />
<link href="../resources/css/font.css" rel="stylesheet" />
</head>
<style>
    .section {
        box-sizing: border-box;
        width: 60%;
        position: absolute;
        left: 50%;
        transform: translate(-50%, 0%);
    }
    #insert_title {
        margin: 15px 20px;
        font-size: 2rem;
        font-weight: bold;
    }
    #board {
        padding: 30px;
        border-radius: 30px;
        border: 2px solid black;
        box-sizing: border-box;
    }
    #sel1 {
        margin-top: 5px;
        padding: 7px 20px;
        border: 1px solid lightgrey;
        width: 100%;
        border-radius: 30px;
    }
    .form-check {
        display: inline-block;
        width: 23%;
    }
    #submit {
        width: 100%;
        height: 40px;
        margin-top: 30px;
    }
    #submitButton {
        cursor: pointer;
        width: 49%;
        height: 40px;
        border-radius: 0.5rem;
        border: none;
        font-size: 1.1rem;
        color: white;
        background-color: #F7570B;
    }
    #cnxlButton {
        cursor: pointer;
        width: 49%;
        height: 40px;
        margin-bottom: 15px;
        border-radius: 0.5rem;
        font-size: 1.1rem;
        border: 1px solid #F7570B;
        background-color: white;
    }
</style>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark cOrange">
		<ul class="navbar-nav me-auto mb-2 mb-sm-0" id="nav-total">
			<li>
				<a class="navbar-brand" id="nav-title" href="../">갓생일지</a>
			</li>
			<li id="nav-category"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">챌린지 보기</a>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="#">All</a></li>
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

    <div class="section">
        <div id="insert_title">
            등록하기
        </div>
        <form action="/challenge/challengeinsert" method="post">
            <div id="board">
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">챌린지 이름</label>
                    <input type="text" class="form-control" id="exampleFormControlInput1" name="challengeName">
                </div>
                
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">설명 및 내용</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" name="challengeInfo" rows="1"
                        style="resize:none;"></textarea>
                </div>

                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">해시태그 (선택)</label>
                    <input type="text" class="form-control" id="exampleFormControlInput1" name="challengeHashtag" placeholder="#갓생일지 #도전">
                </div>

                <div class="mb-3">
                    <div id="maxPerson">참여 인원</div>
                    <div id="sel1">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="challengeMaxMember" id="personRadios1"
                                value="5" checked>
                            <label class="form-check-label" for="personRadios1">5명</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="challengeMaxMember" id="personRadios2"
                                value="10">
                            <label class="form-check-label" for="personRadios2">10명</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="challengeMaxMember" id="personRadios3"
                                value="20">
                            <label class="form-check-label" for="personRadios3">20명</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="challengeMaxMember" id="personRadios4"
                                value="30">
                            <label class="form-check-label" for="personRadios4">30명</label>
                        </div>
                    </div>    
                </div>

                <div class="mb-3">
                    <div id="challengeDuration">진행 기간</div>
                    <div id="sel1">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="challengeDuration" id="durationRadios2"
                                value="2" checked>
                            <label class="form-check-label" for="durationRadios2">2주</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="challengeDuration" id="durationRadios3"
                                value="4">
                            <label class="form-check-label" for="durationRadios3">4주</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="challengeDuration" id="durationRadios4"
                                value="8">
                            <label class="form-check-label" for="durationRadios4">8주</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="challengeDuration" id="durationRadios5"
                                value="12">
                            <label class="form-check-label" for="durationRadios5">12주</label>
                        </div>
                    </div>    
                </div>

                <div class="mb-3">
                    <div id="challengeCategory">카테고리</div>
                    <div id="sel1">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="challengeCategory" id="categoryRadios1"
                                value="공부" checked>
                            <label class="form-check-label" for="categoryRadios1">공부</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="challengeCategory" id="categoryRadios2"
                                value="습관">
                            <label class="form-check-label" for="categoryRadios2">습관</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="challengeCategory" id="categoryRadios3"
                                value="운동">
                            <label class="form-check-label" for="categoryRadios3">운동</label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="challengeCategory" id="categoryRadios4"
                                value="취미">
                            <label class="form-check-label" for="categoryRadios4">취미</label>
                        </div>
                    </div>    
                </div>
                <div id="submit">
                    <input type="submit" value="Submit" id="submitButton">
                    <input id="cnxlButton" type="button" value="취소" onclick="history.back()">
                </div>
            </div>
        </form>
    </div>
</body>
</html>