<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MyPage</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
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
   padding: 20px;
}
.myprofile- {
   display: inline-block;
}

.mychallenges {
   box-sizing: border-box;
   width: 80%;
   position: relative;
   left: 50%;
    transform: translate(-50%, 0%);
   margin-bottom: 50px;
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

</style>
</head>
<body>
   <!-- 네비바 부분 -->
<nav class="navbar navbar-expand-sm navbar-dark cOrange">
	<ul class="navbar-nav me-auto mb-2 mb-sm-0" id="nav-total">
		<li>
			<a class="navbar-brand" id="nav-title" href="../">갓생일지</a>
		</li>
		<li id="nav-category"><a class="nav-link dropdown-toggle" href="#" data-bs-toggle="dropdown" aria-expanded="false">챌린지 보기</a>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="../challenge/main">All</a></li>
				<li><a class="dropdown-item" href="../challenge/main_study">공부 </a></li>
				<li><a class="dropdown-item" href="../challenge/main_habit">습관 </a></li>
				<li><a class="dropdown-item" href="../challenge/main_workout">운동 </a></li>
				<li><a class="dropdown-item" href="../challenge/main_hobby">취미 </a></li>
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
<br><br>
   
   <div class="mypage-total">
      <div id="insert_title">
            마이페이지
        </div>
      <!-- 이름 닉넴 통계 등이 나오는 부분 --> 
       <div class="myprofile">
         <div class="myprofile-">
            <img src="data:image/png;base64,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" alt="Raised circle image" class="img-fluid rounded-circle shadow-lg" style="width: 180px;">
         </div>
         <div class="myprofile-">
            level 관련 요소 넣으면 됩니다
         </div>
         <div class="myprofile-">
            <div>
               진행중인 챌린지    2개
            </div>
         </div>
      </div>
   </div>
   
   
   <!-- 챌린지들 볼 수 있는 부분 -->
   <div class="mychallenges">
      <ul class="nav nav-tabs justify-content-center" id="myTab" role="tablist">
         <li class="nav-item" role="presentation">
            <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">진행중인 챌린지</button>
         </li>
         <li class="nav-item" role="presentation">
            <button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">대기 중인 챌린지</button>
         </li>
         <li class="nav-item" role="presentation">
            <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">완료된 챌린지</button>
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
                        <li class="item">
                           <div class="cont">
                              <strong id="c_name">${challenge.challengeName }</strong>
                              <p id="c_info">${challenge.challengeInfo }</p>
                              <p id="c_maxmember">${challenge.challengeMaxMember }명 (인원 표기 필요할까)</p>
                              <p id="c_duration">${challenge.challengeDuration }주 코스</p>
                              <div id="c_joinBtn">
                                 <a href="../mypage/insert?$   ">참여하기</a>
                              </div>
                           </div>
                        </li>
                     </c:forEach>
                  </c:otherwise>
               </c:choose>
            </ul>
            <section class="pt-4" id="comment">
               <div class="container px-lg-5">
                  <div class="p-4 p-lg-5 bg-light rounded-3 row">
                     <select name="challengeComment" id="challengeComment">
                         <!--
                         <c:forEach var="list" items="${result}">
                              <option value="${list.beverage}">${list.beverage}</option>
                          </c:forEach> 
                         -->
                         <%
                           for(int i=0; i<10; i++){
                          %>    
                        <option value="<%=i %>">챌린지명<%=i+1 %></option>     
                          <%
                           }
                          %>
                     </select>
                     <div>
                        <p>댓글 뿌리는 곳</p>
                     </div>
                  </div>
               </div>
            </section>
         </div>
         <div class="tab-pane fade" id="nav-contact">
            <ul class="each-category">
               <c:choose>
                  <c:when test="${empty challenges }">
                     <h3>-----등록된 챌린지가 없습니다-----</h3>
                  </c:when>
                  <c:otherwise>
                     <c:forEach items="${challenges}" var="challenge">
                        <li class="item">
                           <div class="cont">
                              <strong id="c_name">${challenge.challengeName }</strong>
                              <p id="c_info">${challenge.challengeInfo }</p>
                              <p id="c_maxmember">${challenge.challengeMaxMember }명 (인원 표기 필요할까)</p>
                              <p id="c_duration">${challenge.challengeDuration }주 코스</p>
                              <div id="c_joinBtn">
                                 <a href="../mypage/insert?$   ">참여하기</a>
                              </div>
                           </div>
                        </li>
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
                        <li class="item">
                           <div class="cont">
                              <strong id="c_name">${challenge.challengeName }</strong>
                              <p id="c_info">${challenge.challengeInfo }</p>
                              <p id="c_maxmember">${challenge.challengeMaxMember }명 (인원 표기 필요할까)</p>
                              <p id="c_duration">${challenge.challengeDuration }주 코스</p>
                              <div id="c_joinBtn">
                                 <a href="../mypage/insert?$   ">참여하기</a>
                              </div>
                           </div>
                        </li>
                     </c:forEach>
                  </c:otherwise>
               </c:choose>
            </ul>
         </div>
      </div>
   </div>

</body>
</html>