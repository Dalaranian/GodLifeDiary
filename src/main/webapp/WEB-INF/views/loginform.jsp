<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>

<c:if test="${not empty message}">
	<script>
						alert("${message}");
						</script>
</c:if>

<style type="text/css">
.signup1 {
	width: 500px;
	height: 500px;
	border: 2px solid black;
	margin-inline: auto;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	border-radius: 0.8rem;
}

.signup2 {
	box-sizing: border-box;
	width: 100%;
	height: 100%;
	padding-bottom: 50px;
	padding-left: 50px;
	padding-right: 50px;
}

.signup_header {
	padding-top: 40px;
	padding-bottom: 25px;
}

.signup_body {
	height: 350px;
	box-sizing: border-box;
}

#signin {
	font-size: 28pt;
	font-weight: bold;
}

#cnxlButton {
	cursor: pointer;
	margin-left: 240px;
	background: transparent
		url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16' fill='%23000'%3e%3cpath d='M.293.293a1 1 0 0 1 1.414 0L8 6.586 14.293.293a1 1 0 1 1 1.414 1.414L9.414 8l6.293 6.293a1 1 0 0 1-1.414 1.414L8 9.414l-6.293 6.293a1 1 0 0 1-1.414-1.414L6.586 8 .293 1.707a1 1 0 0 1 0-1.414z'/%3e%3c/svg%3e")
		center/1em auto no-repeat;
	border: 0;
	opacity: .5;
}

.loginForm {
	width: 100%;
	margin-bottom: 15px;
}

.loginForm>label {
	width: 30%;
	display: inline-block;
	cursor: default;
	font-size: 1.1rem;
}

.loginForm>input {
	width: 68%;
	height: 40px;
	display: inline-block;
	box-sizing: border-box;
	border: 0.7px solid rgb(185, 184, 184);
	border-radius: 0.5rem;
}

#submitButton {
	cursor: pointer;
	width: 100%;
	height: 40px;
	border-radius: 0.5rem;
	border: none;
	font-size: 1.1rem;
	color: white;
	background-color: #F7570B;
}

ul {
	padding: 0;
	text-align: center;
}

li {
	cursor: pointer;
	list-style: none;
	display: inline-block;
	color: grey;
}

#submitKakao {
	cursor: pointer;
	width: 100%;
	height: 40px;
	margin-bottom: 15px;
	border-radius: 0.5rem;
	font-size: 1.1rem;
	border: 1px solid #F7570B;
	background-color: white;
}
</style>
<!--jquery -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- 카카오 로그인 로직 -->
</head>
<body>
	<div class="signup1">
		<div class="signup2">
			<div class="signup_header">
				<span id="signin">Sign in</span>
				<button type="button" value="취소" id="cnxlButton"
					onclick="history.back()">X</button>
			</div>
			<div class="signup_body">
				<form method="post" action="/login/logincheck">
					<div class="loginForm">
						<label for="floatingId">ID</label> <input type="text"
							id="floatingId" name="userId" value="asdf">
					</div>
					<div class="loginForm">
						<label for="floatingPw">Password</label> <input type="password"
							id="floatingPw" name="userPw" value="asdf">
					</div>
					<button id="submitButton" type="submit">Sign in</button>
					<%
					if (request.getAttribute("error") != null) {
					%>
					<script>
							alert('<%=request.getAttribute("error")%>');
						</script>
					<%
					}
					%>
					<ul>
						<li><a href="/login/join">회원가입</a></li>&nbsp;
						<li><a href="/login/find">아이디 찾기</a></li>&nbsp;
						<li><a href="/login/find">비밀번호 찾기</a></li>
					</ul>
					<hr>
					<h2>use a third party</h2>
					<button id="submitKakao" type="button" onclick="kakaologin();">Sign
						up with Kakao</button>
				</form>
			</div>
		</div>
	</div>
	<!-- 카카오 sdk -->
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<!-- 인증 정보 가져오기 -->
	<script>
	window.Kakao.init("caf721d118cb16bb0ca6fb2a15be8b66");
	function kakaologin(){
	    window.Kakao.Auth.login({
	        scope   : 'profile_nickname, account_email',
	        success : function(authObj){
	            console.log(authObj);
	            window.Kakao.API.request({
	                url     : '/v2/user/me', 
	                success : res => {
	                    const kakao_account = res.kakao_account;
	                    console.log(kakao_account);
	                    console.log(kakao_account.profile.nickname);
 	                    let obj = {
	                    		userId : kakao_account.email,
	                    		userName : kakao_account.profile.nickname
	                    };
	                    
 	                   const json_kakao_account = JSON.stringify(obj);
	                   /* 불러온 계정 정보 컨트롤러로 보내기 */
	                     $.ajax({
	                    	 url: '/kakaoAuth/authSender',
		                        type: 'POST',
		                        data: json_kakao_account,
		                        contentType: 'application/json; charset=utf-8',
		                        dataType: 'json',
		                        success: function(res) {
		                   			if(res.result === "true"){
		                   				alert("로그인 성공")
		                   				location.href="/challenge/main";
		                   			}else{
		                   				alert(res.userName+"님은 최초로 로그인 하셨음으로, 추가 정보가 필요합니다. ");
		                   				location.href="/kakaoAuth/kakaoJoin?userId="+res.userId+"&userName="+res.userName;
		                   			}
		                        },
		                        error: function(error) {
		                            console.log(error);
		                        }
	                    });
	                }
	            });
	        }
	    });
	}
	</script>
</body>
</html>