<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>kakao_login</title>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
    // caf721d118cb16bb0ca6fb2a15be8b66
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
                    }
                });
            }
        });
    }
</script>
</head>
<body>
	<p>카카오 로그인 페이지</p>
<!-- 	<a href="javascript:kakaologin();">kakao</a>
 --></body>
</html>