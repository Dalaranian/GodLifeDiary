<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Detail</title>
<!-- Core theme CSS (includes Bootstrap)-->
<link href="../resources/css/styles.css" rel="stylesheet" />
<style type="text/css">
    @import url('https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+KR:wght@200&display=swap');
    @font-face {
        font-family: 'LINESeedKR-Bd';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/LINESeedKR-Bd.woff2') format('woff2');
        font-weight: 700;
        font-style: normal;
    }
    body {
        font-family: 'LINESeedKR-Bd';
    }

/*---------------------------beginning-------------------------------*/
    .section {
        box-sizing: border-box;
        width: 70%;
        height: 700px;
        position: absolute;
        left: 50%;
        transform: translate(-50%, 0%);
    }
/*left---------------------------------------------------------*/
    .left_part {
        box-sizing: border-box;
        width: 45%;
        height: 100%;
        position: absolute;
        left: 0;
        margin-top: 30px;
    }
    .left_part>div {
        width: 100%;
        box-sizing: border-box;
    }
/*left_first---------------------------------------------------------*/
    .left_first {
        height: 40%;
        padding-left: 20px;
        padding-right: 20px;
        padding-bottom: 20px;
    }
    #challenge_title {
        width: 100%;
        height: 20%;
        padding: 10px;
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
        width: 38px;
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
    }
    .progress {
        height: 20px;
        margin: 20px 0; 
        overflow: hidden; 
        background-color: #f5f5f5; 
        border-radius: 1rem; 
        -webkit-box-shadow: inset 0 1px 2px rgb(0 0 0 / 10%); 
        box-shadow: inset 0 1px 2px rgb(0 0 0 / 10%);
    }
    .prog-bar {
        float: left; width: 0%; height: 100%; 
        font-size: 12px; line-height: 20px; 
        color: #fff; text-align: center; 
        vertical-align: middle;
        background-color: #337ab7; 
        -webkit-box-shadow: inset 0 -1px 0 rgb(0 0 0 / 15%); 
        box-shadow: inset 0 -1px 0 rgb(0 0 0 / 15%); 
        -webkit-transition: width .6s ease; /* keyframe 사용으로 Animation 효과도 줄 수 있다. */
        -o-transition: width .6s ease;
    } 
    .col_success {
        background-color: #F95001;
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
        margin-top: 50px;
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
    #profile_img {
        border-radius: 100%;
        width: 40px;
    }
    #profile_nick {
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
    #comment_button {
        width: 120px;
        position: absolute;
        right: 0;
        bottom: -5px;
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
<script type="text/javascript">
    function checking() {
        alert("오늘의 챌린지를 수행했습니까?");
    }
</script>
</head>
<body>
    <!-- Header -->
    <div class="section">
        <div class="left_part">
            <div class="left_first">
                <h2 id="challenge_title">${challenge.challengeName }</h2>
                <div class="challenge_dscr">
                    <p>${challenge.challengeDuration } </p>
                    <p>${challenge.challengeMaxMember }명 </p>
                    <textarea readonly="readonly">${challenge.challengeInfo }</textarea>
                    
                    <c:set var="timestamp" value="${challenge.challengeStartedDate}" />
					<c:set var="startDate" value="${timestamp.toLocalDateTime().toLocalDate()}" />
					<c:set var="duration" value="${challenge.challengeDuration}" />
                </div>
            </div>
            <div class="left_second">
                <div class="challenge_status">
                    <h4>진행현황</h4>
                    <table>
                        <tr>
                            <th>1주차</th>
                            <c:forEach var="date" begin="0" end="${duration }">
                            	<td id="did"><div class="date-tooltip" data-tooltip="${startDate } "></div></td>
                            	<c:set var="startDate" value="${startDate.plusDays(1)}" />
                            </c:forEach>
                        </tr>
                        <tr>
                            <th>2주차</th>
                           	<td id="did"><div class="date-tooltip" data-tooltip="2023.04.14.Tue"></div></td>
                            <td id="did"><div class="date-tooltip" data-tooltip="2023.04.15.Wed"></div></td>
                            <td id="didnt"><div class="date-tooltip" data-tooltip="2023.04.16.Thu"></div></td>
                            <td id="didnt"><div class="date-tooltip" data-tooltip="2023.04.17.Fri"></div></td>
                            <td id="did"><div class="date-tooltip" data-tooltip="2023.04.18.Sat"></div></td>
                            <td id="did"><div class="date-tooltip" data-tooltip="2023.04.19.Sun"></div></td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="left_third">
                <div class="challenge_progress">
                    <h4>진행률</h4>
                    <div class="progress">
                        <div class="prog-bar col_success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
                            40% Complete
                        </div>
                    </div>
                    <div class="skill-bar">
                        <div class="skill-percentage" per="90%" style="max-width:90%"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="right_part">
            <div class="show_date">
                <a id="pre_day">◀</a>
                <p id="today">2023/04/27/목</p>
                <a id="next_day">▶</a>
            </div>
            <div class="comment_my">
                <div id="record_title">My status</div>
                <div class="comment_each">
                    <div class="profile">
                        <img id="profile_img" src="./imgs/aaa.jpg" alt="img">
                        <div id="profile_nick">nickname</div>
                        <div id="profile_check"><input type="button" name="didornot" value="Check!" onclick="checking();" class="buttonDesign">&nbsp;<img id="checksign" src="./imgs/x_sign.png"></div>
                    </div>
                    <div id="commentContainer">
                        <textarea id="comment" name="comment"></textarea>
                        <input type="submit" value="코멘트 등록" id="comment_button" class="buttonDesign">
                    </div>
                </div>
            </div>

            <div class="comment_others">
                <div id="record_title">Others</div>
                <div class="comment_each">
                    <div class="profile">
                        <img id="profile_img" src="./imgs/aaa.jpg" alt="img">
                        <div id="profile_nick">nickname</div>
                        <div id="profile_check"><img id="checksign" src="./imgs/o_sign.png"></div>
                    </div>
                    <textarea id="comment" name="comment" readonly="readonly">오늘은 진짜 일찍 일어나기 너무 힘들었는데 그래도 알람 한 번만에 일어났다 뿌듯하다ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ</textarea>
                </div>
                <div class="comment_each">
                    <div class="profile">
                        <img id="profile_img" src="./imgs/aaa.jpg" alt="img">
                        <div id="profile_nick">nickname</div>
                        <div id="profile_check"><img id="checksign" src="./imgs/x_sign.png"></div>
                    </div>
                    <textarea id="comment" name="comment" readonly="readonly">textarea 자동으로 높이 조절하는거 jq로 구현하든지, 그냥 지금처럼 스크롤</textarea>
                </div>
                <div class="comment_each">
                    <div class="profile">
                        <img id="profile_img" src="./imgs/aaa.jpg" alt="img">
                        <div id="profile_nick">nickname</div>
                        <div id="profile_check"><img id="checksign" src="./imgs/x_sign.png"></div>
                    </div>
                    <textarea id="comment" name="comment" readonly="readonly">모아보기 기능 추가할건지</textarea>
                </div>
                <div class="comment_each">
                    <div class="profile">
                        <img id="profile_img" src="./imgs/aaa.jpg" alt="img">
                        <div id="profile_nick">nickname</div>
                        <div id="profile_check"><img id="checksign" src="./imgs/x_sign.png"></div>
                    </div>
                    <textarea id="comment" name="comment" readonly="readonly">반복</textarea>
                </div>
            </div>
        </div>
    </div>
</body>
</html>