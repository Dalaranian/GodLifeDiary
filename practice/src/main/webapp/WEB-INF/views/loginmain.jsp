<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
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
    background: transparent url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16' fill='%23000'%3e%3cpath d='M.293.293a1 1 0 0 1 1.414 0L8 6.586 14.293.293a1 1 0 1 1 1.414 1.414L9.414 8l6.293 6.293a1 1 0 0 1-1.414 1.414L8 9.414l-6.293 6.293a1 1 0 0 1-1.414-1.414L6.586 8 .293 1.707a1 1 0 0 1 0-1.414z'/%3e%3c/svg%3e") center/1em auto no-repeat;
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
</head>
<body>
  <div class="signup1">
    <div class="signup2">
      <div class="signup_header">
        <span id="signin">Sign in</span>
        <button type="button" value="취소" id="cnxlButton" onclick="history.back()">X</button>
      </div>
      <div class="signup_body">
        <form>
          <div class="loginForm">
            <label for="floatingId">ID</label>
            <input type="text" id="floatingId" name="myid">
          </div>
          <div class="loginForm">
            <label for="floatingPw">Password</label>
            <input type="password" id="floatingPw" name="mypw">
          </div>
          <button id="submitButton" type="submit">Sign in</button>
          <ul>
<<<<<<< Updated upstream
            <li><a href="signup">회원가입</a></li><!-- &nbsp;| -->
=======
            <li><a href="join">회원가입</a></li><!-- &nbsp;| -->
>>>>>>> Stashed changes
            <!-- <li><a>아이디 찾기</a></li>&nbsp; -->
            <!-- <li><a>비밀번호 찾기</a></li> -->
          </ul>
          <hr>
          <h2>use a third party</h2>
          <button id="submitKakao" type="submit">Sign up with Kakao</button>
        </form>
      </div>
    </div>
  </div>
</body>
</html>