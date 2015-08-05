<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="../js/modernizr.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

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
</style>
</head>
<body>
	<header id="header">
		<h1>프리에이트</h1>

		<section>
			<h1>머리말</h1>

			<section>
				<h1>회원메뉴</h1>
				<ul>
					<li>로그인</li>
					<li>회원가입</li>
					<li>마이페이지</li>
				</ul>
			</section>

			<nav>
				<h1>메인메뉴</h1>
				<ul>
					<li><a href=""> 프로젝트 등록</a></li>
					<li><a href="">프로젝트 검색</a></li>
					<li><a href="">포트폴리오</a></li>
					<li><a href="">커뮤니티</a></li>
					<li><a href="">마이프로젝트</a></li>
					<li><a href="">제휴센터 소개</a></li>
					<li><a href="">고객문의</a></li>
					<li><a href="">관리</a></li>
				</ul>
			</nav>
		</section>

	</header>
	<aside></aside>

	<main>

	<section>
		<h1>프로젝트 등록</h1>
		<p>필수입력사항</p>

		<h1>등록 메뉴</h1>
		<form action="" method="post">
			<nav class="addProject">
				<dl>
					<dt>제목</dt>
					<dd>
						<input type="text" name="title" id="title">
					</dd>
					<dt>모집 구분</dt>
					<dd>
						<select name="classification">
							<option >개발</option>
							<option>디자인</option>
						</select>
					<dt>총 인원</dt>
					<dd>
						<input type="text" name="totalPeople" >명
					</dd>
					<dt>필요 개발자</dt>
					<dd>
						<input type="text" name="needDeveloper" >명
					</dd>
					<dt>필요 디자이너</dt>
					<dd>
						<input type="text" name="needDesigner">명
					</dd>
					<dt>예산</dt>
					<dd>
						<input id="budget" type="text" name="budget">원
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
						<dd><input type="text" name="area1_2"><d>
						
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
		<!-- 		<ul>
						<li><input type="radio" name="planningState" value="1"> 전구</li>
						<li><input type="radio" name="planningState" value="2"> 기획</li>
						<li><input type="radio" name="planningState" value="3"> 문서</li>
					</ul>		 -->
				<!-- </section>
		<nav>-->
				<dl>
					<dt>세부내용</dt>
					<dd>
						<input id="detail" type="text" name="content" >
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

		<!-- </nav> -->

	</section>
</body>
</html>