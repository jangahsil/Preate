<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${ctxName}/resource/css/reset.css" rel="stylesheet" type="text/css" />
<link href="${ctxName}/resource/myPage/css/layout.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/modernizr.js"></script>
<title>Insert title here</title>
<style>

/*	현재문제
	1. 마우스 오버할때 세부 카테고리, css, java script필요 
	2. 개발자 도구로 뽑아온 컬러 적용하는 법 (해결)
	3. a태그 hidden 먹으면 하이퍼링크 안먹는데 글자 padding으로 먹여야 하나? 근데 패딩으로 하니까 글자가 왼쪽으로 안밀림, 왜 안가지??? (해결)
	4. 회원 메뉴(헤더상단)전체 크기 : width 219px 안으로 이미지가 다 들어와야 하는데 다 안들어옴. (해결)
	5. preate 로고 글자 text-intent 안먹는 문제 (해결)
	6. 컨텐트 영역의 사진을 헤더쪽 영역을 침범하여 배치하는 방법  (해결)
	7. 고객문의 버튼 점선이 잘려서 보임. 포토샵으로 다시 자르기 (해결)
*/
.hidden {
	display: none;
}

.button {
	border: 0;
	display: inline-block;
	text-indent: -100px;
	overflow: hidden;
	white-space: nowrap;
}

.button:hover {
	cursor: pointer;
}


/* 회원 메뉴 */
/* 회원 로그인 메뉴의 li 공통 부분 적용 */
#member-menu li {
	margin-left: 12px;
	float: left;
	height: 35px;
	top: 19px;
	bottom: 8px;
	right: 0px;
	display: inline-block;
	text-indent: -100px;
	overflow: hidden;
}
#member-menu li:HOVER{
	cursor: pointer;
}

/* 회원 로그인 메뉴 버튼이미지넣기 */

.login-button {
	margin-top:10px;
	width: 54px;
	height: 23px;
	background: url("${ctxName}/resource/images/btn-login.png") no-repeat bottom;
	float: left;
}

/* #member-menu ul li:first-child {
	background: url("${ctxName}/resource/images/btn-login.png") no-repeat center;
	width: 54px;
} */


.join-button {
	margin-top:10px;
	width: 64px;
	height: 23px;
	background: url("${ctxName}/resource/images/btn-join.png") no-repeat bottom;
	float: left;
}
/* #member-menu ul li:first-child+li {
	background: url("${ctxName}/resource/images/btn-join.png") no-repeat center;
	width: 64px;
} */


.mypage-button {
	margin-top:10px;
	width: 75px;
	height: 23px;
	background: url("${ctxName}/resource/images/btn-mypage.png") no-repeat bottom;
	float: left;
}
/* #member-menu ul li:first-child+li+li {
	background: url("${ctxName}/resource/images/btn-mypage.png") no-repeat center;
	width: 75px;
} */
/* 회원 로그인 메뉴의 로그인 버튼만 레프트패딩 없애기 */
#main-manu ul li:first-child {
	padding-left: 0px;
	background: none;
}

/* 메인메뉴 */
/* 메인 메뉴 h1 공통부분 적용 */
#aside nav>h1 {
	width: 110px;
	height: 99px;
	float: left;
}

/* 메인 메뉴 이미지 넣기 */
/* #aside nav>h1:nth-child(1) { */
#aside nav>h1:FIRST-CHILD {
	background: url("${ctxName}/resource/images/menu-projectReg.png") no-repeat center;
}

/* #aside nav>h1:nth-child(2) { */
#aside nav>h1:FIRST-CHILD+h1 {
	background: url("${ctxName}/resource/images/menu-projectSearch.png") no-repeat center;
}

/* #aside nav>h1:nth-child(3) { */
#aside nav>h1:FIRST-CHILD+h1+h1 {
	background: url("${ctxName}/resource/images/menu-portfolio.png") no-repeat center;
}

/* #aside nav>h1:nth-child(4) { */
#aside nav>h1:FIRST-CHILD+h1+h1+h1 {
	background: url("${ctxName}/resource/images/menu-community.png") no-repeat center;
}

/* #aside nav>h1:nth-child(6) { */
#aside nav>h1:FIRST-CHILD+h1+h1+h1+ul+h1 {
	background: url("${ctxName}/resource/images/menu-myproject.png") no-repeat center;
}

/* #aside nav>h1:nth-child(7) { */
#aside nav>h1:FIRST-CHILD+h1+h1+h1+ul+h1+h1 {
	background: url("${ctxName}/resource/images/menu-center.png") no-repeat center;
}

/* #aside nav>h1:nth-child(8) { */
#aside nav>h1:FIRST-CHILD+h1+h1+h1+ul+h1+h1+h1 {
	width: 220px;
	height: 77px;
	background: url("${ctxName}/resource/images/menu-voc.png") no-repeat center;
}

/* #aside nav>h1:nth-child(9) { */
#aside nav>h1:FIRST-CHILD+h1+h1+h1+ul+h1+h1+h1+h1 {
	width: 72px;
	height: 36px;
	background: url("${ctxName}/resource/images/menu-manage.png") no-repeat center;
}

/* 컨텐트 배경 이미지 넣기 */
#main-content section {
	width: 973px;
	padding-top: 24px;
	padding-left: 26px;
}

#project {
	height: 205px;
	background: url("${ctxName}/resource/images/main-view-project.png") no-repeat top;
	margin-top: 5px;
}

#project > table{
	margin-top: 15px;
}

#contest {
	height: 212px; 
	background: url("${ctxName}/resource/images/main-view-contest.png") no-repeat top;
	margin-top: 17px;
}

#contest > table{
	margin-top: 15px;
}

#notice {
	height: 121px;
	background: url("${ctxName}/resource/images/main-view-notice.png") no-repeat center;
	margin-top: 17px;
}

#notice > table{
	margin-top: 15px;
}

</style>
</head>
<body>

	<header id="header">
		<div class="content-wrapper">
			<section>
				<div id="logo">
					<h1 class="button">
						<a href="">Preate</a>
					</h1>
				</div>

				<div id="login-area">
					<h1 class="hidden">머릿말</h1>
					<nav id="member-menu">
						<h1 class="hidden">회원메뉴</h1>
						<ul>
							<li><a href="${ctxName}/myPage/login" class="button login-button">로그인</a></li>
							<li><a href="${ctxName}/myPage/joinBasic" class="button join-button">회원가입</a></li>
							<li><a href="" class="button mypage-button">마이페이지</a></li>
						</ul>
					</nav>
				</div>
			</section>
		</div>
	</header>

	<div id="body">
		<div class="content-wrapper">
			<aside id="aside">
				<h1 class="hidden">메인메뉴</h1>
				<nav>
					<h1 class="button">
						<a href="" class="button">프로젝트 등록</a>
					</h1>
					<h1 class="button">
						<a href="${ctxName}/project/projectSearch">프로젝트 검색</a>
					</h1>
					<h1 class="button">
						<a href="">포트폴리오</a>
					</h1>
					<h1 class="button">
						<a href="">커뮤니티</a>
					</h1>
					<ul class="hidden">
						<li><a href="${ctxName}/board/free/freeBoard">자유게시판</a></li>
						<li><a href="${ctxName}/board/developer/developerBoard">개발자
								게시판</a></li>
						<li><a href="${ctxName}/board/designer/designerBoard">디자이너
								게시판</a></li>
					</ul>
					<h1 class="button">
						<a href="">마이 프로젝트</a>
					</h1>
					<h1 class="button">
						<a href="">제휴센터 소개</a>
					</h1>
					<h1 class="button">
						<a href="">고객문의</a>
					</h1>
					<h1 class="button">
						<a href="">관리자 메뉴</a>
					</h1>
				</nav>
			</aside>
	<main id="main">

	<section id="main-content">
		<h1 class="hidden">공지관리창</h1>
		<p>관리</p>
		<p>원하는 관리 메뉴를 선택하세요</p>

		<nav>
			<h1>관리 메뉴</h1>
			<ul>
				<li><a href="">회원관리</a></li>
				<li><a href="">게시글관리</a></li>
				<li><a href="">제휴업체 관리</a></li>
				<li><a href="">공지 관리</a></li>
				<li><a href="">고객문의</a></li>
			</ul>
		</nav>

		<section>
			<h1>검색폼</h1>
			<form>
					<label>카테고리</label> <select>
						<option >전문가</option>
						<option>비전문가</option>
					</select>
					<p>공지목록</p>
					<label>공지정보검색</label><input type="text"><input
						type="submit" value="검색" />
			</form>
		</section>

		<article>
			<h1>공지 목록폼</h1>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>날짜</th>
				</thead>

				<tbody>
					<c:forEach var="n" items="${list}">
						<tr>
							<td><input type="checkbox"></td>
							<td>${n.code}</td>
							<td>${n.title}</td>
							<td>${n.writer}</td>
							<td><fmt:formatDate value="${n.regDate}"
									pattern="yyyy-MM-dd" /></td>
					</c:forEach>
					<td><input type="submit" value="글쓰기" /></td>
					<td><input type="submit" value="삭제" /></td>
					</tr>
				</tbody>
			</table>
		</article>

		<section>
			<h3>페이지</h3>
			<ul>
				<li><a href="noticeManagement?page=1">1</a></li>
				<li><a href="noticeManagement?page=2">2</a></li>
				<li><a href="noticeManagement?page=3">3</a></li>
				<li><a href="noticeManagement?page=4">4</a></li>
				<li><a href="noticeManagement?page=5">5</a></li>
			</ul>
		</section>
	</section>
	</main>
	</div>
	</div>
		<footer id="footer">
		<div class="content-wrapper"></div>
	</footer>
	
</body>
</html>