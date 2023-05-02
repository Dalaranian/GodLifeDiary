<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디/비밀번호 찾기</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>

    @font-face {
    font-family: 'Pretendard-Regular';
    src: url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff') format('woff');
    font-weight: 400;
    font-style: normal;
    }
    body {
        font-family: 'Pretendard-Regular', sans-serif;
    }
    /* 중앙에 위치한 박스 스타일 */
    .center-box {
        width: 500px;
        height: 500px;
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        border: 2px solid black;
        border-radius: 0.8rem;
        padding-bottom: 50px;
        padding-left: 50px;
        padding-right: 50px;
    }
    h1 {
        display: block;
        font-size: 2em;
        margin-block-start: 0.67em;
        margin-block-end: 0.67em;
        margin-inline-start: 0px;
        margin-inline-end: 0px;
        font-weight: bold;
        margin-bottom: 50px;
    }
    /* 가입하기 버튼 스타일 */
    button[type="submit"] {
        width: 100%;
        margin-top: 30px;
        background-color: #F7570B;
        border: none;
        color: white;
        padding: 10px 20px;
        text-align: center;
        display: inline-block;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
    }

    /* 인증번호 받기 버튼 스타일 */
    #get_verification_code {
        margin-top: 10px;
        background-color: #F7570B;
        border: none;
        color: white;
        padding: 10px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 7px;
        cursor: pointer;
        border-radius: 5px;
        width:24%;
        
    }
    .findContent{
        width: 100%;
        margin-top: 15px;
    }
    .findContent>label {
        width: 30%;
        display: inline-block;
    }
    .findContent>input {
        width:68%;
        height: 40px;
        box-sizing: border-box;
        display: inline-block;
        border: 0.7px solid rgb(185, 184, 184);
        border-radius: 0.5rem;
    }
    #phone{
        width:43%;
    }
    
  </style>
</head>
<body>
    
    <div class="center-box">
        <h1>아이디/비밀번호 찾기</h1>
        <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link active" data-toggle="tab" href="#idFind">아이디 찾기</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#pwFind">비밀번호 찾기</a>
            </li>
        </ul>
        <div class="tab-content">
            <div id="idFind" class="tab-pane active">
                <form>
                    <div class="findContent">
                        <label for="phone">전화번호</label>
                        <input type="tel" class="form-control" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}">
                        <button type="button" id="get_verification_code">인증번호 받기</button><br>
                    </div>
                    <div class="findContent">
                        <label for="verification_code">인증번호</label>
                        <input type="text" id="verification_code" name="verification_code"><br>
                    </div>
                    <button type="submit">찾기</button>
                </form>
            </div>
            <div id="pwFind" class="tab-pane">
                <form>
                    <div class="findContent">
                        <label for="id">아이디</label>
                        <input type="text" class="form-control" id="id" name="id">
                    </div>
                    <div class="findContent">
                        <label for="phone">전화번호</label>
                        <input type="tel" class="form-control" id="phone" name="phone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}">
                        <button type="button" id="get_verification_code">인증번호 받기</button><br>
                    </div>
                        <div class="findContent">
                        <label for="verification_code">인증번호</label>
                        <input type="text" id="verification_code" name="verification_code"><br>
                    </div>
                    <button type="submit">찾기</button>
                </form>
            </div>
        </div>
    </div>
    </div>
</body>
</html>