<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
		<form method="post">
			<h1>기본정보 페이지</h1>

				<fieldset>
					<legend>ID 입력란</legend>
					<label>ID</label> <input type="text" name ="id"/> <input type="submit"
						value="중복확인" />
				</fieldset>
	

				<fieldset>
					<legend>닉네임 입력란</legend>
					<label>닉네임</label> <input type="text" name ="nickName"/> <input type="submit"
						value="중복확인" />
				</fieldset>


				<fieldset>
					<legend>비밀번호 입력란</legend>
					<label>비밀번호</label> <input type="text" name ="password" />
				</fieldset>

				<fieldset> 
					<legend>비밀번호 확인 입력란</legend>
					<label>비밀번호 확인</label> <input type="text" name ="passwordCheck" />
				</fieldset>

				<fieldset>
					<legend>성명 입력란</legend>
					<label>성명</label> <input type="text" name ="name" />
				</fieldset>

				<fieldset>
					<legend>생년월일 및 성별 입력란</legend>
					<label>생년월일/성별</label> <input type="text" name ="birthDay"/> <label>성별검색필드</label>
					<select>
						<option>남</option>
						<option>여</option>
					</select>
				</fieldset>

				<fieldset>
					<legend>전화번호 입력란</legend>
					<label>전화번호</label> <input type="text" name ="telAreaField"/> - <input type="text" name ="telMiddleField"/>
					- <input type="text" neme="telLastFleld" />
				</fieldset>

				<fieldset>
					<legend>e-mail 입력란</legend>
					<label>E-mail</label> <input type="text" name="email"/> @ <input type="text" name="emailAddress"/>
					<label>이메일검색필드</label> <select>
						<option>naver.com</option>
						<option>daum.net</option>
						<option>gmail.com</option>
						<option>nate.com</option>
						<option>dramwiz.com</option>
						<option>lycos.co.kr</option>
						<option>empal.com</option>
						<option>yahoo.co.kr</option>
						<option>chol.com</option>
						<option>korea.com</option>
						<option>paran.com</option>
						<option>hanafos.com</option>
						<option>hanmir.com</option>
						<option>hotmail.com</option>
						<option>hanmail.net</option>
					</select>
				</fieldset>

				<fieldset>
					<legend>홈페이지 주소 입력란</legend>
					<label>홈페이지</label> <input type="text" name="homepage"/>
				</fieldset>

				<fieldset>
					<legend>우편번호 입력란</legend>
					<label>우편번호</label> <input type="text" name="zipCode1"/> - <input type="text" name="zipCode2" /> 
					<input type="submit" value="우편번호검색" />
				</fieldset>

				<fieldset>
					<legend>주소 입력란</legend>
					<label>기본주소</label><input type="text" name="basicAddress"/>
					<label>상세주소</label><input type="text" name="detailAddress"/>
				</fieldset>
				
				<fieldset>
					<legend>다음 버튼</legend>
					<label>다음</label><input type="submit"  value="다음"/>
				</fieldset>

			</form>
		</section>
	</section>
	</main>
</body>
</html>