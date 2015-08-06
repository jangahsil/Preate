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

.addProject input[type="text"]{
	width:20px;
	height: 15px;
}
#title{
	width:500px;
	height: 15px;
}
#detail{
	width: 500px;
	height: 300px;
}
#budget{
	width: 100px;
}
.input{
	width: 400px;
	height: 20px;
	line-height:20px;
	overflow: hidden;
}
.small-input{
	width: 30px;
	height: 20px;
	line-height: 20px;
	overflow: hidden;
}
#budget{
	width: 150px;
	height: 20px;
	line-height: 20px;
	overflow: hidden;
}

#input-detail{
width: 400px;
height: 400px;
overflow: hidden;
}

/* ---------------------추가---------------------*/
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
		<h1>프로젝트 등록</h1>
		<p>필수입력사항</p>

		<h1>등록 메뉴</h1>
		<form action="" method="post">
			<nav class="addProject">
				<dl>
					<dt>제목</dt>
					<dd>
						<textarea class="input" name="title" ></textarea>
					</dd>
					<dt>모집 구분</dt>
					<dd>
						<select name="classification">
							<option >개발</option>
							<option>디자인</option>
						</select>
					<dt>총 인원</dt>
					<dd>
						<textarea class="small-input"  name="totalPeople" ></textarea>명
					</dd>
					<dt>필요 개발자</dt>
					<dd>
						<textarea class="small-input"  name="needDeveloper" ></textarea>명
					</dd>
					<dt>필요 디자이너</dt>
					<dd>
						<textarea class="small-input" name="needDesigner"></textarea>명
					</dd>
					<dt>예산</dt>
					<dd>
						<textarea id="budget"   name="budget"></textarea>원
					</dd>
					<dt>사전 미팅 여부</dt>
					<dd>
						<select name="meeting">
							<option value="true">Y</option>
							<option value="false">N</option>
						</select>
					</dd>
					<dt>지역</dt>
					<dd>
					
						<select name="area1_1">
							<option >서울</option>
							<option >경기</option>
							<option>인천</option>
							<option>부산</option>
							<option>대구</option>
							<option>대전</option>
							<option>광주</option>
							<option>울산</option>
							<option>강원</option>
							<option>경남</option>
							<option>경북</option>
							<option>전남</option>
							<option>전북</option>
							<option>충남</option>
							<option>충북</option>
							<option>제주</option>
							<option>세종</option>
						</select>
						
					</dd>
					<dt>상세주소</dt>
						<dd><textarea class="input"  name="area1_2"></textarea><dd>
						
					<dt>예상 시작일</dt>
					<dd>
						<input type="datetime" name="start" >
					</dd>
					<dt>모집 마감일</dt>
					<dd>
						<input type="datetime" name="dead" >
					</dd>
					<dt>프로젝트 종료일</dt>
					<dd>
						<input type="datetime" name="end" >
					</dd>
				</dl>

				<!-- <ul>
				<li>1<input type="date" name="startDate"> </li>
				<li>2<input type="date" name="deadline"> </li>
				<li>3<input type="date" name="endDate"> </li>
			</ul> -->
				<!-- 		<input type="submit" value="테스트 등록"> -->
				<!-- </nav> -->

				<!-- <section>
			<h1>기획상태폼</h1> -->
				<!-- <legend>기획상태선택폼</legend> -->
				<p>기획상태</p>
		
		
		<!------------------------    손보기 ------------------------------------>
					<ul>
						<li><input type="radio" name="PlanningState" value="아이디어">아이디어만 있습니다</li>
						<li><input type="radio" name="PlanningState" value="간단히 정리">필요한 내용들을 간단히 정리해두었습니다</li>
						<li><input type="radio" name="PlanningState" value="기획문서존재">상세한 기획문서가 존재합니다</li>
					</ul>		
				<!-- </section>
		<nav>-->
				<dl>
					<dt>세부내용</dt>
					<dd>
						<textarea id="input-detail" name="content"></textarea>
					</dd>
					<dd>
						<input type="submit" value="등록">
					</dd>
					<dd>
						<a href="">취소</a>
					</dd>
				</dl>
			</nav>
		</form>
		</section>
	</main>
	</div>
		</div>
		<footer id="footer">
		<div class="content-wrapper"></div>
	</footer>
</body>
</html>