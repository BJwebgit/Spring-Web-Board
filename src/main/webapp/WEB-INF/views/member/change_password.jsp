<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="js/sign_up.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/board/css/member.css">
</head>
<body>
<header>
		<div class="container">
			<h1><a id="h1-sp" href="/board">Spring Project</a></h1>
			<nav>
				<a href="/board/list">게시판</a>
				<c:if test="${userId == null}">
					<a href="/board/login">로그인</a>
					<a href="/board/sign_up">회원가입</a>
				</c:if>
				<c:if test="${userId != null}">
					<a href="/board/logout">로그아웃</a>
					<a href="/board/mypage">마이페이지</a>
				</c:if>
				<a href="https://github.com/BJwebgit/Spring-Web-Board">GITHUB</a>
			</nav>
		</div>
	</header>
	<div class="login-box">
		<h1>Modify-Password</h1>
		<form action="/board/mypage/change_password" method="POST">
			<div class="textbox">
				현재 비밀번호  <input type ="password" name="userPassword">
			</div>
			<div class="textbox">
				새 비밀번호  <input type ="password" name="newPassword">
			</div>
			<div class="textbox">
				새 비밀번호 확인  <input type ="password" name="newPassword_check">
			</div>
			<input type="submit" class="submit-btn" value="비밀번호 변경">
		</form>
	</div>
</body>
</html>