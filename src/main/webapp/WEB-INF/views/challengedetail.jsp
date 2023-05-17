<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Detail</title>
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/resources/css/styles.css" rel="stylesheet" />
<link href="/resources/css/font.css" rel="stylesheet" />
<style type="text/css">
/*---------------------------beginning-------------------------------*/
    .section {
        box-sizing: border-box;
        width: 70%;
        height: 700px;
        position: absolute;
        left: 50%;
        transform: translate(-50%, 0%);
    }
    #challenge_title {
    	padding: 10px 30px;
    	margin: 20px;
    	margin-bottom: 30px;
    	border-bottom: 1px solid lightgrey;
    	position: relative;
    	height: 70px;
    }
    #challenge_title>h1 {
    	display: inline-block;
    	position: absolute;
    }
    
    #member_number {
		display: inline-block;
		width: 120px;
		height: 32px;
		border: 2px solid #F7570B;
		border-radius: 1rem;
		padding: 5px;
		color: #F7570B;
		font-weight: bold;
		text-align: center;
		background-color: white;
		fong-size: 14px;
    	position: absolute;
    	right: 30px;
    	bottom: 0;
    }

/*left---------------------------------------------------------*/
    .left_part {
        box-sizing: border-box;
        width: 45%;
        position: absolute;
        left: 0;
    }
    .left_part>div {
        width: 100%;
        box-sizing: border-box;
    }
/*left_first---------------------------------------------------------*/
    .left_first {
        padding-left: 20px;
        padding-right: 20px;
        padding-bottom: 20px;
    }
    .challenge_dscr {
        width: 100%;
        height: 75%;
        padding: 20px 30px;
        border: 1px solid lightgrey;
        border-radius: 0.5rem;
    }
    .challenge_dscr>textarea {
        width: 100%;
        resize: none;
    }
/*left_second---------------------------------------------------------*/
    .left_second {
        padding-left: 20px;
        padding-right: 20px;
        padding-bottom: 20px;
    }    
   .challenge_status {
        right: 0;
        border: 1px solid lightgrey;
        border-radius: 0.5rem;
        padding: 20px;
    }
    table {
        border-collapse: separate;
        border-spacing: 8px;
        padding: 0px 10px;

    }
    th {
        width: 50px;
        height: 20px;
        font-size: 10pt;
        vertical-align: bottom;
    }
    td {
        background-color: lightgrey;
        width: 20px;
        height: 20px;
        border-radius: 3px;
    }
    #did {
        background-color: #F95001;
    }
    
    #didnt {
        background-color: grey;
    }
    /* TOOLTIP */
    .date-tooltip{
        position: relative;
        width: 100%;
        height: 100%;
        cursor: pointer;
    }
    .date-tooltip:hover:after{
        content:attr(data-tooltip);
        background: #222222;
        padding: 7px;
        border-radius: 0.5rem; 
        display: inline-block;
        position: absolute;
        transform: translate(-50%,-100%); 
        margin: 0 auto;
        color: #FFF;
        min-width: 100px;
        min-width: 150px;
        top: -5px;
        left: 50%;
        text-align: center;
        vertical-align: middle;
        font-size: 10pt;
    }
    .date-tooltip:hover:before {
        top: -5px;
        left: 50%;
        border: solid transparent;
        content: " ";
        height: 0;
        width: 0;
        position: absolute;
        pointer-events: none;
        border-color: rgba(0, 0, 0, 0);
        border-top-color: #000;
        border-width: 5px;
        margin-left: -5px;
        transform: translate(0,0px); 
    }



/*left_third---------------------------------------------------------*/
    .left_third {
        height: 20%;
        padding-left: 20px;
        padding-right: 20px;
        padding-bottom: 20px;
    }
    .challenge_progress {
        border: 1px solid lightgrey;
        border-radius: 0.5rem;
        padding: 20px;
        position: relative;
    }
    #progressbar {
    	margin-top: 40px;
    }
    /*------------------------*/
    .skill-bar {
            height: 14px;
            background: lightgrey;
            border-radius: 3px;
        }
        .skill-percentage {
            height: 14px;
            background: #F95001;
            border-radius: 3px;
            position: relative;
            animation: fillBars 2.5s 1;
        }
        .skill-percentage::before {
            content: attr(per);
            position: absolute;
            padding: 4px 6px;
            background: #F95001;
            border-radius: 4px;
            font-size: 12px;
            top: -35px;
            right: 0;
            transform: transition(50%);
            color: white;
        }
        .skill-percentage::after {
            content: "";
            position: absolute;
            width: 10px;
            height: 10px;
            background: rgb(043 063 107);
            top: -20px;
            right: 0;
            transform: translateX(50%) rotate(45deg);
            border-radius: 2px;
        }
        @keyframes fillBars {
            from {
                width: 0;
            }
            to {
                width: 100%;
            }
        }
/*right---------------------------------------------------------*/
    .right_part {
        border: 1px solid lightgrey;
        border-radius: 0.5rem;
        box-sizing: border-box;
        width: 55%;
        position: absolute;
        right: 0;
        padding: 20px;
    }
    .show_date {
        width: 100%;
        height: 60px;
        text-align: center;
        margin-bottom: 10px;
    }
    #pre_day {

    }
    #today {
        width: 80%;
        padding: 10px;
        display: inline-block;
        font-size: 1.5rem;
    }
    #next_day {

    }
/*-----------내 코멘트 뜨는 창-------------------------------------------------------------*/
    .comment_my {
        border: 1px solid lightgrey;
        border-radius: 0.5rem;
        box-sizing: border-box;
        padding: 10px;
        margin-bottom: 20px;
        height: 200px;
    }
    .comment_each {
        box-sizing: border-box;
        padding: 5px;
        margin: 10px;
        position: relative;
        height: 80%;
    }
    .profile {
        box-sizing: border-box;
        width: 100%;
        height: 30%;
        display: inline-block;
        position: relative;
    }
    .profile_other{
        box-sizing: border-box;
        width: 100%;
        height: 30%;
        display: inline-block;
        position: relative;
    }
    #profile_img {
        border-radius: 100%;
        width: 40px;
    }
    #profile_nick {
        display: inline-block;
        box-sizing: border-box;
        padding: 5px;
    }
    #other_nick {
        display: inline-block;
        box-sizing: border-box;
        padding: 5px;
    }
    #profile_check {
        display: inline-block;
        right: 5px;
        position: absolute;
    }
    #checksign {
        width: 25px;
    }
    #commentContainer {
        width: 100%;
        height: 70%;
        position: relative;
    }
    #comment {
        width: 100%;
        resize: none;
        vertical-align: middle;
        margin: 5px 0;
        overflow: visible;
        border: 1px solid grey;
        color: rgb(90, 90, 90);
    }
    #other_comment{
        width: 100%;
        resize: none;
        vertical-align: middle;
        margin: 5px 0;
        overflow: visible;
        border: 1px solid grey;
        color: rgb(90, 90, 90);
    }
    #comment_button {
        width: 120px;
        position: absolute;
        right: 0;
        bottom: -30px;
    }
    .buttonDesign {
        width: 80px;
        height: 30px;
        border: none;
        border-radius: 1rem;
        font-size: 12pt;
        color: white;
        background-color: rgb(248 155 108);
        vertical-align: middle;
    }

    .buttonDesign:hover {
        background-color: #F95001;
    }


    .comment_others {
        border: 1px solid lightgrey;
        border-radius: 0.5rem;
        box-sizing: border-box;
        padding: 10px;
        margin-bottom: 20px;
    }

</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript">

	let currentDate;
	var cnt = 1;
    function checking() {
        if(cnt%2==1)	{
            alert("오늘의 챌린지를 수행했나요?");
        	document.getElementById("checksign").src = "../resources/img/letter-o.png";
        	document.getElementById("checkbtn").value= "Undo!";	
        }
        else {
        	alert("오늘의 챌린지를 수행하지 못했나요? ㅜㅜ ");
        	
        	document.getElementById("checksign").src = "../resources/img/letter-x.png";
        	document.getElementById("checkbtn").value= "Check!";
        }
    	cnt++;
    }
    
    function goToCommentDate(seq, id, commentDate){
		let commentVal = {
			"seq" : seq,
			"id" : id,
			"commentDate" : commentDate
		};
		
	    console.log(commentVal);
		$.ajax({
				type:"post",
				url:"/challenge/ajaxComment",
				data:JSON.stringify(commentVal),
				contentType:"application/json",
				dataType:"json",
				success:function(res){
					var today = new Date();
					var year = today.getFullYear();
					var month = (today.getMonth() + 1).toString().padStart(2, '0'); // 월은 0부터 시작하므로 1을 더해줌
					var date = today.getDate();
					var formattedToday = year + '-' + month + '-' + date;
					currentDate = commentDate;
					
					if(res.comment.comment == null || res.list == null){
						$("#today").html(commentDate);
						
						if(commentDate == formattedToday){ // 오늘 날짜를 클릭 했을 때 
							$(".comment_my").show();
							$(".comment_others").show();
							$("#comment").empty();
							$("#comment").attr("readonly",false);
							$("#comment_button").show();
							//$("#comment").val('');
						}else{
							$("#comment").attr("readonly",true);
							$(".comment_my").hide();
							$(".comment_others").hide();
						}
						
					}else{
						$(".comment_my").show();
						$(".comment_others").show();
						
						$("#today").html(res.comment.comment.commentDate);
						$("#comment").val(res.comment.comment.comment);
						$("#comment").attr("readonly",true);
						$(".profile_other").empty();
						//<c:set var="user" value="${sessionScope.user}" />
						//let ttt = ${user};
						//$(".profile_other").append('<div id="other_nick">' + ${user.userId} + '</div>');
						//$(".profile_other").append('<div id="other_comment">' + res.comment.comment.comment + '</div>');
						
						for(let i=0; i<res.list.length; i++){
							if(res.list[i].id!=${user.id}){
								$(".profile_other").append('<div id="other_nick">' + res.users[i] + '</div>');
								$(".profile_other").append('<div id="other_comment">' + res.list[i].comment + '</div>');
							}
						} 
						
						if(res.comment.comment.isDone=="Y") {
							$("#checksign").attr('src','../resources/img/letter-o.png');
						}else if(res.comment.comment.isDone=="N"){
							$("#checksign").attr('src',"../resources/img/letter-x.png");
							
						}
						$(".comment_my").show();
						$(".comment_others").show();
					
					} 
					
					
			         
				},
				error:function(){
					alert("통신 실패 ");
				}
			});
	
	
		}
    function goToCommentInsert(seq, id) {
    	  var comment = $("#comment").val();
    	  var isdone;
    	  if(cnt%2==1){
    		  isdone="N";
    	  }else{
    		  isdone="Y";
    	  }
    	  let commentInsertVal = {
    				"seq" : seq,
    				"id" : id,
    				"commentDate" : currentDate,
    				"comment" : comment,
    				"isDone" : isdone
    			};
    	  
    	  console.log(commentInsertVal);
    	  $.ajax({
    		  type:"post",
    		  url:"/challenge/commentinsert",
    		  data:JSON.stringify(commentInsertVal),
    		  contentType:"application/json",
			  dataType:"json",
			  success:function(map){
				  alert(map.msg);
			  },
			  error:function(){
					alert("통신 실패 ");
				}
    	  });
    	  
    }
    
    function addShow(ele){
    	$(ele).next().addClass("show");
    }
  </script>

</head>
<body>
	<nav class="navbar navbar-expand-sm navbar-dark cOrange">
		<ul class="navbar-nav me-auto mb-2 mb-sm-0" id="nav-total">
			<li><a class="navbar-brand" id="nav-title" href="../">갓생일지</a></li>
			<li id="nav-category"><a class="nav-link dropdown-toggle"
				href="#" data-bs-toggle="dropdown" aria-expanded="false" onclick="addShow(this);">챌린지 보기</a>
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
    <!-- Header -->
    <div class="section">
    	<div id="challenge_title">
	    	<h1>${challenge.challengeName }</h1>
        	<p id="member_number">${challenge.challengeMaxMember }명 참여 중</p>
    	</div>
    	<div class="left_part">
            <div class="left_first">
                <div class="challenge_dscr">
                    <p>${challenge.challengeInfo }</p>
                    <p>${challenge.challengeHashtag }</p>
                    
                    <c:set var="timestamp" value="${challenge.challengeStartedDate}" />
					<c:set var="startDate" value="${timestamp.toLocalDateTime().toLocalDate()}" />
					<c:set var="duration" value="${challenge.challengeDuration}" />
					
					
					<!-- 챌린지 끝나는 날짜 -->
					<c:set var="forProgress" value="${timestamp.toLocalDateTime().toLocalDate()}" />  
					
					<!-- 오늘 날짜  -->
					<jsp:useBean id="now" class="java.util.Date" />
					<fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="nowfmtTime" scope="request"/>
					<fmt:parseNumber value="${challenge.challengeStartedDate.time / (1000*60*60*24)}" integerOnly="true" var="dbDtParse" scope="request"/>
					
					<c:set var="temp" value="${nowfmtTime - dbDtParse }" />
					<c:set var="PassDayCnt" value="${temp/duration }"/>
					<c:set var="percentage" value="${PassDayCnt *100}"/>
					<fmt:parseNumber var="percent" value="${percentage}" integerOnly="true"/>

					<!--  퍼센테이지 계산 -->
			
                </div>
            </div>
            	<c:set var="user" value="${sessionScope.user}" />
            <div class="left_second">
                <div class="challenge_status">
                    <h4>진행현황</h4>
                    <table>
                    	<c:forEach var="date" begin="0" end="${duration*7-1}">
                    		<c:if test="${date % 7 eq 0}">
								    <tr>
								       <th><fmt:parseNumber value="${date / 7 + 1}" integerOnly="true"/>주차</th>
								    </c:if>
								    <td id="did"><div class="date-tooltip" data-tooltip="${startDate } " onclick="goToCommentDate(${challenge.seq}, ${user.id}, '${startDate}')"></div></td>
								   <%--  <c:set var="today" value="<%= new java.util.Date() %>"/>

									<c:if test="${startDate.after(today)}">
								    	 <td id="didnt"><div class="date-tooltip" data-tooltip="${startDate } " onclick="goToCommentDate(${challenge.seq}, ${user.id}, '${startDate}')"></div></td>
								    </c:if>
								    <c:otherwise>
								    	 <td id="did"><div class="date-tooltip" data-tooltip="${startDate } " onclick="goToCommentDate(${challenge.seq}, ${user.id}, '${startDate}')"></div></td>
								    </c:otherwise> --%>
								    <c:set var="startDate" value="${startDate.plusDays(1)}" />
							    	<c:if test="${date % 7 eq 6}">
								        </tr>
								    </c:if>
							</c:forEach>
                    </table>
                </div>
            </div>
            <div class="left_third">
                <div class="challenge_progress">
                    <h4>챌린지 만료까지</h4>
					<div id="progressbar">
	                    <div class="skill-bar">
							<c:choose>
								<c:when test="${percent > 100}">
			                        <div class="skill-percentage" per="100%" style="max-width:100%"></div>
								</c:when>
								<c:otherwise>
			                        <div class="skill-percentage" per="${percent }%" style="max-width:${percent }%"></div>
								</c:otherwise>
							</c:choose>
	                    </div>
					</div>
                </div>
            </div>
        </div>

        <div class="right_part">
            <div class="show_date">
                <a id="pre_day">◀</a>
                <p id="today">날짜를 선택해주세요</p>
                <a id="next_day">▶</a>
            </div>
            <div class="comment_my">
                <div id="record_title">Comment</div>
                <form action="/challenge/commentinsert" method="post" class="insertform">
                <div class="comment_each">
                    <div class="profile">
                        <div id="profile_nick">${user.userId}</div>
                        <div id="profile_check"><input type="button" name="isdone" value="Check!" onclick="checking();" class="buttonDesign" id="checkbtn">&nbsp;<img id="checksign" src="../resources/img/letter-x.png"></div>
                    </div>
                    <div id="commentContainer">
                        <textarea id="comment" name="comment"></textarea>
                        <input type="button" value="코멘트 등록" id="comment_button" class="buttonDesign" onclick="goToCommentInsert(${challenge.seq}, ${user.id})">
                        
                    </div>
                </div>
                </form>
            </div>

             <div class="comment_others">
                <div id="record_title">Others</div>
                <div class="comment_each">
                    <div class="profile_other">
                        
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</body>
</html>