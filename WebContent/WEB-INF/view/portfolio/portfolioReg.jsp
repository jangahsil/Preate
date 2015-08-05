<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Preate</title>
</head>
<body>
	<header>

		<h1>프리에이트</h1>

		<section>
			<h1>머릿말</h1>

			<nav>
				<h1>회원메뉴</h1>
				<ul>
					<li><a href="">로그인</a></li>
					<li><a href="">회원가입</a></li>
					<li><a href="">마이페이지</a></li>
				</ul>
			</nav>
		</section>
	</header>


	<aside>

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
				<li><a href="">자유게시판</a></li>
				<li><a href="">개발자게시판</a></li>
				<li><a href="">디자이너게시판</a></li>
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

	</aside>


	<main>
	<section>
		<h1>포트폴리오 등록</h1>

		<section>
			<h1>포트폴리오 등록폼</h1>
			<form method="post" enctype="multipart/form-data">
				<fieldset>
					<legend>포트폴리오 정보 입력창</legend>
					
					<dl>
						<dt>포트폴리오 제목</dt>
						<dd>
							<input name="title" type="text"/>
						</dd>
					</dl>
					<dl>
						<dt>작성자 이미지</dt>
						<dd>
							<input name="file" type="file" />
						</dd>
						<dt>현재상태</dt>
						<dd>
							<select>
								<option>개인</option>
								<option>팀</option>
							</select>
						</dd>
						<dt>포트폴리오 이미지</dt>
						<dd>
							<input name="file" type="file" />
						</dd>
					</dl>
					<div>
						<input type="submit"  value="등록" />
						<input type="submit" value="취소" />
					</div>
				</fieldset>

			</form>
		</section>
	</section>
	</main>

	<footer>
		<section>
			<h1>저작권 정보</h1>
			<p>Copylight ⓒ preate.com 2015 All Right Reserved.</p>
		</section>
	</footer>

</body>
</html>
    