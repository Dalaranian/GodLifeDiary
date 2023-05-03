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
	width: 90%;
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

.item:nth-child(3n-1) {
	margin: 0 0 40px 0;
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
#c_members {
	display: inline-block;
	font-size: 24px;
}
#c_maxmember {
	display: inline-block;
	color: grey;
}

#c_detail {
	display: inline-block;
	position: absolute;
	left: 25px;
	bottom: 25px;
	width: 48%;
	height: 30px;
	border-radius: 1rem;
	padding: 5px;
	font-weight: bold;
	text-align: center;
	font-size: 14px;
	color: white;
	background-color: #F7570B;
}

#c_delete {
	display: inline-block;
	position: absolute;
	right: 25px;
	bottom: 25px;
	width: 28%;
	height: 30px;
	border: 2px solid #F7570B;
	border-radius: 1rem;
	padding: 5px;
	color: #F7570B;
	font-weight: bold;
	text-align: center;
	background-color: white;
	font-size: 14px;
}
a {
	text-decoration: none;
	width: 100%;
	height: 100%;
	display: inline-block;
}
a:hover {
	text-decoration: none;
}
#c_detail:hover #c_delete:hover {
	font-weight: bold;
	box-shadow: 0px 0px 7px rgba(0, 0, 0, 0.3);
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
	<div class="mypage-total">
		<div id="insert_title">마이페이지</div>
		<!-- 이름 닉넴 통계 등이 나오는 부분 -->
		<div class="myprofile">
			<div id="myinfo">
				<div class="myprofile-">
					<p class="profiletag">NAME</p>
					<p class="profilecont">${user.userName }</p>
				</div>
				<div class="myprofile-">
					<p class="profiletag">ID</p>
					<p class="profilecont">${user.userId }</p>
				</div>
				<p id="rvs">
					<button type="button" value="개인정보수정" id="rvsButton">개인정보수정</button>
				</p>
			</div>
			<div id="mystatus">
				<div class="myprofile-">
					<p class="profiletag">진행 중인 챌린지</p>
					<p class="profilecont">
						<c:forEach items="${challenges}" var="challenge">
							<c:if test="${challenge.challengeEnabled eq 'N' }">
								<c:set var="enabled_N" value="${enabled_N+1 }"></c:set>
							</c:if>
						</c:forEach>
						<c:choose>
							<c:when test="${empty enabled_N}">
								0개
							</c:when>
							<c:otherwise>
								<c:out value="${enabled_N }"></c:out>개
							</c:otherwise>
						</c:choose>
					</p>
				</div>
				<div class="myprofile-">
					<p class="profiletag">대기 중인 챌린지</p>
					<p class="profilecont">
						<c:forEach items="${challenges}" var="challenge">
							<c:if test="${challenge.challengeEnabled eq 'Y' }">
								<c:set var="enabled_Y" value="${enabled_Y+1 }"></c:set>
							</c:if>
						</c:forEach>
						<c:choose>
							<c:when test="${empty enabled_Y}">
								0개
							</c:when>
							<c:otherwise>
								<c:out value="${enabled_Y }"></c:out>개
							</c:otherwise>
						</c:choose>
					</p>
				</div>
				<div class="myprofile-">
					<p class="profiletag">완료된 챌린지</p>
					<p class="profilecont">
						<c:forEach items="${challenges}" var="challenge">
							<c:if test="${challenge.challengeEnabled eq 'I' }">
								<c:set var="enabled_I" value="${enabled_I+1 }"></c:set>
							</c:if>
						</c:forEach>
						<c:choose>
							<c:when test="${empty enabled_I}">
								0개
							</c:when>
							<c:otherwise>
								<c:out value="${enabled_I }"></c:out>개
							</c:otherwise>
						</c:choose>
					</p>
				</div>
				
			</div>
		</div>
	</div>

	<!-- 챌린지들 볼 수 있는 부분 -->
	<div class="mychallenges">
		<ul class="nav nav-tabs justify-content-center" id="myTab"
			role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active" id="home-tab" data-bs-toggle="tab"
					data-bs-target="#home-tab-pane" type="button" role="tab"
					aria-controls="home-tab-pane" aria-selected="true">진행중인 챌린지</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab"
					data-bs-target="#nav-contact" type="button" role="tab"
					aria-controls="nav-contact" aria-selected="false">대기 중인 챌린지</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="profile-tab" data-bs-toggle="tab"
					data-bs-target="#profile-tab-pane" type="button" role="tab"
					aria-controls="profile-tab-pane" aria-selected="false">완료된	챌린지</button>
			</li>
		</ul>
		<div class="tab-content">
			<div class="tab-pane active" id="home-tab-pane">
				<ul class="each-category">
					<c:choose>
						<c:when test="${empty challenges }">
							<h3>-----등록된 챌린지가 없습니다-----</h3>
						</c:when>
						<c:otherwise>
							<c:forEach items="${challenges}" var="challenge">
								<c:if test="${challenge.challengeEnabled eq 'N' }">
									<li class="item">
										<div class="cont">
											<strong id="c_name">${challenge.challengeName }</strong>
											<p id="c_info">${challenge.challengeInfo }</p>
											<p id="c_maxmember">${challenge.challengeMaxMember }명 참여 중</p>
											<div id="c_detail">
												<a href="../challenge/detail?$">상세보기</a>
											</div>
											<div id="c_delete">
												<a href="#" onclick="deleteRegist('${challenge.seq}', '${user.id}', this)">포기하기</a>
											</div>
										</div>
									</li>
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			<div class="tab-pane fade" id="nav-contact">
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
											<p id="c_maxmember">${challenge.challengeMaxMember }명 참여 중</p>
											<div id="c_delete">
												<a href="#" onclick="deleteRegist('${challenge.seq}', '${user.id}', this)">포기하기</a>
											</div>
										</div>
									</li>
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>

			<div class="tab-pane fade" id="profile-tab-pane">
				<ul class="each-category">
					<c:choose>
						<c:when test="${empty challenges }">
							<h3>-----등록된 챌린지가 없습니다-----</h3>
						</c:when>
						<c:otherwise>
							<c:forEach items="${challenges}" var="challenge">
								<c:if test="${challenge.challengeEnabled eq 'I' }">
									<li class="item">
										<div class="cont">
											<strong id="c_name">${challenge.challengeName }</strong>
											<p id="c_info">${challenge.challengeInfo }</p>
											<p id="c_maxmember">${challenge.challengeMaxMember }명 참여 중</p>
											<p id="c_duration">${challenge.challengeDuration }주코스</p>
										</div>
									</li>
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</div>
<!--jquery -->
	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
	<script type="text/javascript">
	  function deleteRegist(seq, id, ele) {
		
		 let regist = {
	      challengeSeq: seq,
	      userId: id
	    };
	    const deleteRegistMember = JSON.stringify(regist);
	    alert(deleteRegistMember);
	    $.ajax({
	      url: '/challenge/deleteregist',
	      type : 'post',
	      data: deleteRegistMember,
	      contentType: 'application/json; charset=utf-8',
	   	  dataType: 'json',
	      success: function(res) {
/* 	        console.log(res);
 */	        if(res){
	        	alert("삭제");
	        	$(ele).parents("li").remove();
	        }
	      },
	      error: function(error) {
	        alert("error");
	      }
	    });
	  }
	</script>
</body>
</html>