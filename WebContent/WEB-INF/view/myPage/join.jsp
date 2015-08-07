<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>

#visual{
	border: 1px solid red;
	margin-left: 29px;
	width: 956px;
	height: 62px;
	background: url("../resource/images/myPage/join-title.png") no-repeat center;
}

#main-content section{
	border: 1px solid blue;
	width: 956px; /* 956-(29*2) */
	margin-top: 24px;
	margin-left: 29px;
	margin-right: 29px;
	padding-top: 0px;
	padding-left: 0px;
}

#join {
	width: 1016px;
	border: 1px solid red;
}

#basic-info fieldset{
	margin-top: 10px;
	width: 449px;
	float: left;
}

#current-info fieldset{
	width: 449px;
	float: left;
}

#career-info fieldset{
	width: 449px;
	float: left;
}


</style>
		<main id="main">
			<section id="main-content">
				<div id="visual"></div>
				<h1 class="hidden">회원가입</h1>
				
				<section id="join">
					<form method="post">
						<h1>회원가입정보</h1>
						
						<div id="basic-info" class="clearfix">
							<p>기본 정보</p>
							<p>*:필수입력사항</p>
						<fieldset>
							<legend class="hidden">ID 입력란</legend>
							<label>ID</label> 
							<input type="text" name="mid" /> <input type="submit" value="중복확인" />
						</fieldset>

						<fieldset>
							<legend class="hidden">닉네임 입력란</legend>
							<label>닉네임</label> <input type="text" name="nickName" /> <input
								type="submit" value="중복확인" />
						</fieldset>

						<fieldset>
							<legend class="hidden">비밀번호 입력란</legend>
							<label>비밀번호</label> <input type="password" name="password" />
						</fieldset>

						<fieldset>
							<legend class="hidden">비밀번호 확인 입력란</legend>
							<label>비밀번호 확인</label> <input type="password"
								name="passwordCheck" />
						</fieldset>

						<fieldset>
							<legend class="hidden">성명 입력란</legend>
							<label>성명</label> <input type="text" name="name" />
						</fieldset>

						<fieldset>
							<legend class="hidden">생년월일 및 성별 입력란</legend>
							<label>생년월일/성별</label> <input type="text" name="birth" /> <label>성별검색필드</label>
							<select name="gender">
								<option value="구분">구분</option>
								<option value="남">남</option>
								<option value="여">여</option>
							</select>
						</fieldset>

						<fieldset>
							<legend class="hidden">전화번호 입력란</legend>
							<label>전화번호</label> <input type="text" name="phone" /> <span>[대시(-)를
								포함할 것: 예) 010-3456-2934]</span>
						</fieldset>

						<fieldset>
							<legend class="hidden">e-mail 입력란</legend>
							<label>E-mail</label> <input type="text" name="eMail" />
							<!-- 					<label>이메일검색필드</label> <select>
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
					</select> -->
						</fieldset>

						<fieldset>
							<legend class="hidden">홈페이지 주소 입력란</legend>
							<label>홈페이지</label> <input type="text" name="homepage" />
						</fieldset>

						<!-- 		<fieldset>
					<legend>우편번호 입력란</legend>
					<label>우편번호</label> <input type="text" name="zipCode1"/> - <input type="text" name="zipCode2" /> 
					<input type="submit" value="우편번호검색" />
				</fieldset> -->

						<fieldset>
							<legend class="hidden">주소 입력란</legend>
							<label>기본주소</label><input type="text" name="address" /> 
							<label>상세주소</label><input type="text" name="detailAddress" />
						</fieldset>
						</div>
						
						<div id="current-info" class="clearfix">
						<p>현황 정보</p>
						
						<fieldset>
							<label class="hidden">현재상태구분필드</label> <label>현재상태</label> <select
								name="currentState">
								<option value="구분">구분</option>
								<option value="재직">재직중</option>
								<option value="재택">프리랜서[재택]</option>
								<option value="상주">프리랜서[상주]</option>
							</select>
						</fieldset>

						<fieldset>
							<label>학교명</label> <input type="text" name="universityName">
						</fieldset>

						<fieldset>
							<label>전공명</label> <input type="text" name="major">
						</fieldset>

						<fieldset>
							<label class="hidden">재학구분필드</label><label>재학구분</label> <select
								name="schoolState">
								<option value="구분">구분</option>
								<option value="재학">재학</option>
								<option value="휴학">휴학</option>
								<option value="졸업예정">졸업예정</option>
								<option value="졸업">졸업</option>
							</select>
						</fieldset>

						<fieldset>
							<label class="hidden">학년구분필드</label> <label>학년</label> <select name="grade">
								<option value="구분">구분</option>
								<option value="1">1학년</option>
								<option value="2">2학년</option>
								<option value="3">3학년</option>
								<option value="4">4학년</option>
							</select>
						</fieldset>
						</div>


						<div id="career-info" class="clearfix"> 
						<p>경력정보</p>
						
						<table>
							<thead>
								<tr>
									<th>개발</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<td><input type="checkbox" value="DV13" name="fieldCode">NET
										<input type="checkbox" value="DV24" name="fieldCode">ABAP
										<input type="checkbox" value="DV02" name="fieldCode">ANDROID</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV03" name="fieldCode">ASP
										<input type="checkbox" value="DV04" name="fieldCode">ASP.NET
										<input type="checkbox" value="DV06" name="fieldCode">C</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV05" name="fieldCode">C#
										<input type="checkbox" value="DV07" name="fieldCode">C++ <input
										type="checkbox" value="DV08" name="fieldCode">COBOL</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV25" name="fieldCode">CSS
										<input type="checkbox" value="DV09" name="fieldCode">DB <input
										type="checkbox" value="DV26" name="fieldCode">DELPHI</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV27" name="fieldCode">HTML
										<input type="checkbox" value="DV28" name="fieldCode">IOS <input
										type="checkbox" value="DV01" name="fieldCode">JAVA</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV11" name="fieldCode">JSP
										<input type="checkbox" value="DV10" name="fieldCode">JS <input
										type="checkbox" value="DV12" name="fieldCode">LINUX</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV14" name="fieldCode">NEWTWORK
										<input type="checkbox" value="DV15" name="fieldCode">PHP <input
										type="checkbox" value="DV16" name="fieldCode">POWER BUILDER</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV17" name="fieldCode">PYTHON
										<input type="checkbox" value="DV18" name="fieldCode">QA <input
										type="checkbox" value="DV19" name="fieldCode">RUBY</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV20" name="fieldCode">SERVER개발
										<input type="checkbox" value="DV29" name="fieldCode">VB <input
										type="checkbox" value="DV21" name="code">VC++</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV22" name="fieldCode">WINDOWS
										<input type="checkbox" value="DV23" name="fieldCode">임베디드</td>
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
									<td><input type="checkbox" value="DS02" name="code">HTML5
										<input type="checkbox" value="DS03" name="code">그래픽디자인
										<input type="checkbox" value="DS11" name="code">모바일</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DS04" name="code">액션스크립트
										<input type="checkbox" value="DS05" name="code">웹디자인 <input
										type="checkbox" value="DS06" name="code">웹표준</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DS07" name="code">파워포인트
										<input type="checkbox" value="DS08" name="code">퍼블리싱 <input
										type="checkbox" value="DS09" name="code">포토샵</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DS10" name="code">플래시
										<input type="checkbox" value="DS01" name="code">3D</td>
								</tr>
							</tbody>
						</table>

						<fieldset>
							<label class="hidden">희망업무형태구분필드</label> <label>희망업무형태</label> <select
								name="hopeBusiness">
								<option value="구분">구분</option>
								<option value="무관">무관</option>
								<option value="재택">재택</option>
								<option value="반상주">반상주</option>
								<option value="상주">상주</option>
								<option value="정규직">정규직</option>
							</select>
						</fieldset>

						<fieldset>
							<label>경력년수</label> <input type="text" name="careerYear" />년<input
								type="text" />개월
						</fieldset>

						<fieldset>
							<label>기타경력사항</label> <input type="text" name="career" />
						</fieldset>

						<fieldset>
							<legend class="hidden">등록 버튼</legend>
							<label>등록</label><input type="submit" value="등록" />
						</fieldset>
						</div>
					</form>
				</section>
			</section>
			</main>