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
					<label>ID</label> <input type="text" name ="mid"/> <input type="submit"
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
					<label>생년월일/성별</label> <input type="text" name ="birth"/> <label>성별검색필드</label>
					<select name="gender">
						<option value="남">남</option>
						<option value="여">여</option>
					</select>
				</fieldset>

				<fieldset>
					<legend>전화번호 입력란</legend>
					<label>전화번호</label> <input type="text" name ="phone"/> - <input type="text" name ="telMiddleField"/>
					- <input type="text" neme="telLastFleld" />
				</fieldset>

				<fieldset>
					<legend>e-mail 입력란</legend>
					<label>E-mail</label> <input type="text" name="eMail"/> @ <input type="text" name="emailAddress"/>
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

		<!-- 		<fieldset>
					<legend>우편번호 입력란</legend>
					<label>우편번호</label> <input type="text" name="zipCode1"/> - <input type="text" name="zipCode2" /> 
					<input type="submit" value="우편번호검색" />
				</fieldset> -->

				<fieldset>
					<legend>주소 입력란</legend>
					<label>기본주소</label><input type="text" name="address"/>
					<label>상세주소</label><input type="text" name="detailAddress"/>
				</fieldset>

				<fieldset>
					<label>현재상태</label> <label>현재상태구분필드</label> 
					<select name="currentState">
						<option value="재직">재직중</option>
						<option value="재택">프리랜서[재택]</option>
						<option value="상주">프리랜서[상주]</option>
					</select>
				</fieldset>

				<fieldset>
					<label>학교명</label> <input type="text" name ="universityName">
				</fieldset>

				<fieldset>
					<label>전공명</label> <input type="text" name ="major">
				</fieldset>

				<fieldset>
					<label>재학구분</label><label>재학구분필드</label> 
					<select name="schoolState">
						<option value="재학">재학</option>
						<option value="휴학">휴학</option>
						<option value="졸업예정">졸업예정</option>
						<option value="졸업">졸업</option>
					</select>
				</fieldset>

				<fieldset>
					<label>학년</label> <label>학년구분필드</label> 
					<select name="grade">
						<option value="1">1학년</option>
						<option value="2">2학년</option>
						<option value="3">3학년</option>
						<option value="4">4학년</option>
					</select>
				</fieldset>

				<table>
					<thead>
						<tr>
							<th>개발</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td><input type="checkbox" value="DV13">NET 
							<input type="checkbox" value="DV24">ABAP 
							<input type="checkbox" value="DV02">ANDROID</td>
						</tr>

						<tr>
							<td><input type="checkbox" value="DV03">ASP 
							<input type="checkbox" value="DV04">ASP.NET 
							<input type="checkbox" value="DV06">C</td>
						</tr>

						<tr>
							<td><input type="checkbox" value="DV05">C# 
							<input type="checkbox" value="DV07">C++
							<input type="checkbox" value="DV08">COBOL</td>
						</tr>

						<tr>
							<td><input type="checkbox" value="DV25">CSS 
							<input type="checkbox" value="DV09">DB 
							<input type="checkbox" value="DV26">DELPHI</td>
						</tr>

						<tr>
							<td><input type="checkbox" value="DV27">HTML
							<input type="checkbox" value="DV28">IOS 
							<input type="checkbox" value="DV01">JAVA</td>
						</tr>

						<tr>
							<td><input type="checkbox" value="DV11">JSP 
							<input type="checkbox" value="DV10">JS 
							<input type="checkbox" value="DV12">LINUX</td>
						</tr>

						<tr>
							<td><input type="checkbox" value="DV14">NEWTWORK 
							<input type="checkbox" value="DV15">PHP 
							<input type="checkbox" value="DV16">POWER
								BUILDER</td>
						</tr>

						<tr>
							<td><input type="checkbox" value="DV17">PYTHON 
							<input type="checkbox" value="DV18">QA 
							<input type="checkbox" value="DV19">RUBY</td>
						</tr>

						<tr>
							<td><input type="checkbox" value="DV20">SERVER개발
							<input type="checkbox" value="DV29">VB 
							<input type="checkbox" value="DV21">VC++</td>
						</tr>

						<tr>
							<td><input type="checkbox" value="DV22">WINDOWS 
							<input type="checkbox" value="DV23">임베디드</td>
						</tr>

					</tbody>
				</table>

				<table>
					<thead>
						<tr>
							<th>디자인/퍼블리싱</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td>
							<input type="checkbox" value="DS02">HTML5 
							<input type="checkbox" value="DS03">그래픽디자인 
							<input type="checkbox" value="DS11">모바일
							</td>
						</tr>

						<tr>
							<td><input type="checkbox" value="DS04">액션스크립트 
							<input type="checkbox" value="DS05">웹디자인 
							<input type="checkbox" value="DS06">웹표준</td>
						</tr>

						<tr>
							<td><input type="checkbox" value="DS07">파워포인트 
							<input type="checkbox" value="DS08">퍼블리싱 
							<input type="checkbox" value="DS09">포토샵</td>
						</tr>

						<tr>
							<td><input type="checkbox" value="DS10">플래시 
							<input type="checkbox" value="DS01">3D</td>
						</tr>
					</tbody>
				</table>
				
				<fieldset>
					<label>희망업무형태</label> 
					<label>희망업무형태구분필드</label>
					<select name="hopeBusiness">
						<option value="무관">무관</option>
						<option value="재택">재택</option>
						<option value="반상주">반상주</option>
						<option value="상주">상주</option>
						<option value="정규직">정규직</option>
					</select>
				</fieldset>

				<fieldset>
					<label>경력년수</label> <input type="text" name ="careerYear" />년<input type="text" />개월
				</fieldset>

				<fieldset>
					<label>기타경력사항</label> <input type="text" name ="career"/>
				</fieldset>
				
				<fieldset>
					<legend>등록 버튼</legend>
					<label>등록</label><input type="submit"  value="등록"/>
				</fieldset>
			</form>
		</section>
	</section>
	</main>
</body>
</html>