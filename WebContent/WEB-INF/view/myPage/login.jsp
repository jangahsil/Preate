<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<header>
		<h1>프리에이트</h1>

		<section>
			<h1>머릿말</h1>

			<nav>
				<h1>회원메뉴</h1>
				<ul>
					<li>로그인</li>
					<li>회원가입</li>
					<li>마이페이지</li>
				</ul>
			</nav>
		</section>
	</header>


	<aside>
		<section>
			<h1>메인메뉴</h1>
			<nav>
				<h1>
					<a href="">프로젝트 등록</a>
				</h1>
				<h1>
					<a href="">프로젝트 검색</a>
				</h1>
				<h1>
					<a href="">포트폴리오</a>
				</h1>
				<h1>
					<a href="">커뮤니티</a>
				</h1>
				<ul>
					<li>자유게시판</li>
					<li>개발자 게시판</li>
					<li>디자이너 게시판</li>
				</ul>
				<h1>
					<a href="">마이프로젝트</a>
				</h1>
				<h1>
					<a href="">제휴센터 소개</a>
				</h1>
				<h1>
					<a href="">고객문의</a>
				</h1>
				<h1>
					<a href="">관리</a>
				</h1>
			</nav>
		</section>
	</aside>

	<main>
	<section>
		<div>${error}</div>
		<h1>로그인</h1>
		<form method="post">
			<fieldset>
				<legend>로그인</legend>
				<label>아이디</label>
				<input type="text" name="uid" /><br> 
				<label>비밀번호</label><input
					type="text" name="pwd" /> 
				<input type="submit" value="로그인" /><br>
				<input type="submit" value="아이디찾기" /> 
				<input type="submit"value="비밀번호찾기" /> 
				<input type="submit" value="회원가입" />
			</fieldset>
		</form>
	</section>
	</main>
	<footer>
		<section></section>
	</footer>

</body>
</html>