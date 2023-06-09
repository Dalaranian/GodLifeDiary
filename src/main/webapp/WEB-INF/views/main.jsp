<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<title>작은 도전이 큰 변화로, 갓생일지</title>
<link href="../resources/css/styles.css" rel="stylesheet" />
<link href="../resources/css/font.css" rel="stylesheet" />
<style>
/*------------------------------------------메인-------------------------------------------------*/
.list_wrap {
	width: 90%;
	margin: 0 auto;
}

.sec-main {
	margin-bottom: 30px;
}

.pb-2 {
	margin-bottom: 30px;
}

.each-category {
	padding: 10px;
	position: relative;
}

.list_wrap .item {
	display: inline-block;
	width: 27%;
	height: 210px;
	margin: 0 4% 40px 4%;
	box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
	border-radius: 0.5rem;
	position: relative;
}

.list_wrap .item:nth-child(3n-1) {
	margin: 0 0 40px 0;
}

.list_wrap .item .cont {
	width: 100%;
	height: 100%;
	position: absolute;
	padding: 25px;
}

#c_name {
	display: block;
	font-size: 19px;
	letter-spacing: -1px;
	padding-bottom: 3px;
	border-bottom: 1px solid #F7570B;
	margin-bottom: 7px;
}

.list_wrap .item p {
	font-size: 14px;
	letter-spacing: -0.8px;
	margin: 0;
}

#c_info {
	margin-bottom: 5px;
}

#c_members {
	display: inline-block;
	font-size: 24px;
}
#c_maxmember {
	display: inline-block;
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
	padding: 5px;
	color: #F7570B;
	font-weight: bold;
	text-align: center;
	background-color: white;
	fong-size: 14px;
}

#c_joinBtn {
	text-align: center;
	display: inline-block;
	position: absolute;
	right: 25px;
	bottom: 25px;
	width: 38%;
	height: 30px;
}

.list_wrap .item a {
	display: inline-block;
	padding: 5px 10px;
	font-size: 14px;
	letter-spacing: -1px;
	width: 100%;
	height: 100%;
	border-radius: 1rem;
	color: white;
	background-color: #F7570B;
}

.list_wrap .item a:hover {
	font-weight: bold;
	box-shadow: 0px 0px 7px rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
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
			<li id="nav-mypage"><a class="nav-link" href="../mypage/mypage">마이페이지</a></li>
			<c:choose>
				<c:when test="${empty user }">
					<li id="nav-logout"><a class="nav-link" href="../login/login">login</a></li>
				</c:when>
				<c:otherwise>
					<li id="nav-logout"><a class="nav-link" href="../login/logout">logout</a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</nav>
	<br>
	<br>
	<!-- ------------------------------------------메인------------------------------------------------- -->
	<div class="list_wrap">
		<div class="sec-main">
			<h1 class="pb-2">${cate } 챌린지</h1>
			<h2 class="pb-2 border-bottom colorGrey">참여가능한 챌린지</h2>
			<ul class="each-category">
				<c:choose>
					<c:when test="${empty challenges }">
						<h3>-----등록된 챌린지가 없습니다-----</h3>
					</c:when>
					<c:otherwise>
						<c:forEach items="${challenges}" var="challenge">
							<c:if test="${challenge.challengeEnabled eq 'Y' }">
								<li class="item">
									<div class="cont">
										<strong id="c_name">${challenge.challengeName }</strong>
										<p id="c_info">${challenge.challengeInfo }</p>
										<p id="c_members">
											<c:set var="cnt" value="0"></c:set>
											<c:forEach items="${rmTotal}" var="rm">
												<c:if test="${challenge.seq eq rm.seq }">
													<c:set var="cnt" value="${cnt+1 }"></c:set>
												</c:if>
											</c:forEach>
											<c:out value="${cnt }"></c:out>
										</p>
										<p id="c_maxmember">/ ${challenge.challengeMaxMember }명</p>
										<p id="c_duration">${challenge.challengeDuration }주 코스</p>
										<div id="c_joinBtn">
											<a href="#"
												onclick="join('${challenge.seq }', '${user.userId }')">참여하기
											</a>
										</div>
									</div>
								</li>
							</c:if>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>

		<div class="sec-main">
			<h2 class="pb-2 border-bottom colorGrey">진행중/종료된 챌린지</h2>
			<ul class="each-category">
				<c:choose>
					<c:when test="${empty challenges }">
						<h3>-----등록된 챌린지가 없습니다-----</h3>
					</c:when>
					<c:otherwise>
						<c:forEach items="${challenges}" var="challenge">
							<c:if test="${challenge.challengeEnabled eq 'N' || challenge.challengeEnabled eq 'I'}">
								<li class="item">
									<div class="cont">
										<strong id="c_name">${challenge.challengeName }</strong>
										<p id="c_info">${challenge.challengeInfo }</p>
										<p id="c_members">${challenge.challengeMaxMember }</p>
										<p id="c_maxmember">명</p>
										<p id="c_duration">${challenge.challengeDuration }주 코스</p>
										<div id="c_joinBtn">
											<a href="/challenge/detail_frommain?challengeName=${challenge.challengeName }">상세보기</a>
										</div>
									</div>
								</li>
							</c:if>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>

	</div>

	<br>
	<br>
	<footer> Copyright &copy; Team 4 in SemiProject 2023 </footer>
	<!--  지우면 카테고리 드롭다운 예쁘게 할 수 없음 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!--jquery -->
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
	  function join(seq, id) {
	    let regist = {
	      challengeSeq: seq,
	      userId: id
	    };
	    const registJson = JSON.stringify(regist);
/*	    alert(registJson); */

	    $.ajax({
	      url: '/challenge/joinuser',
	      type : 'post',
	      data: registJson,
	      contentType: 'application/json; charset=utf-8',
/* 	      dataType: 'json', */
	      success: function(res) {
	        alert(res);
	      },
	      error: function(error) {
	        alert("error");
	      }
	    });
	  }
	</script>
</body>
</html>