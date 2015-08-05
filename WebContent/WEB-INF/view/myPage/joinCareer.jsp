<%@page import="com.jass.preate.dao.MemberDao"%>
<%@page import="com.jass.preate.dao.mybatis.MyBatisMemberDao"%>
<%@page import="com.jass.preate.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDao memberDao = new MyBatisMemberDao();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>preate</title>
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
		<h1>회원가입내용</h1>

		<nav>
			<h1>가입순서</h1>
			<ul>
				<li><a href="join_basic.jsp">기본정보</a></li>
				<li><a href="join_state.jsp">현황정보</a></li>
				<li><a href="join_career.jsp">경력정보</a></li>
			</ul>
		</nav>

		<p>*:필수입력사항</p>

		<section>
			<h1>경력정보 페이지</h1>
			<form method="post">
				<fieldset>
					<label>희망업무형태</label> 
					<label>희망업무형태구분필드</label>
					<select>
						<option>무관</option>
						<option>재택</option>
						<option>반상주</option>
						<option>상주</option>
						<option>정규직</option>
					</select>
				</fieldset>

				<fieldset>
					<label>경력년수</label> <input type="text" name ="careerYear" />년<input type="text" />개월
				</fieldset>

				<fieldset>
					<label>기타경력사항</label> <input type="text" name ="career"/>
				</fieldset>
				
				<fieldset>
					<legend>이전 버튼</legend>
					<label>이전</label> <a href=""><input type="button"  value="이전" name ="prevButton"/></a>
				</fieldset>
				
				<fieldset>
					<legend>저장 버튼</legend>
					<label>저장</label> <input type="button"  value="저장" name ="nextButton"/>
				</fieldset>
			</form>
		</section>
	</section>
	</main>
</body>
</html>