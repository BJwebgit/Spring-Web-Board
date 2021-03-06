<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DELETE MEMBER</title>
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
		<h1>Secession</h1>
		<form action="/board/mypage/delete_member" method="POST">
			<div class="textbox">
				<input type="password" name="password" placeholder="UserPassword">
			</div>
			<input type="submit" class="submit-btn" value="회 원 탈 퇴">
		</form>
	</div>
</body>
</html>