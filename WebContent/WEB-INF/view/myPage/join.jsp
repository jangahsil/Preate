<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

		<main>
			<section>
				<h1>회원가입내용</h1>

				<nav>
					<h1>가입순서</h1>
					<ul>
						<li><a href="join_basic">기본정보</a></li>
						<li><a href="join_state">현황정보</a></li>
						<li><a href="join_career">경력정보</a></li>
					</ul>
				</nav>S

				<p>*:필수입력사항</p>

				<section>
					<form method="post">
						<h1>기본정보 페이지</h1>

						<fieldset>
							<legend>ID 입력란</legend>
							<label>ID</label> <input type="text" name="mid" /> <input
								type="submit" value="중복확인" />
						</fieldset>


						<fieldset>
							<legend>닉네임 입력란</legend>
							<label>닉네임</label> <input type="text" name="nickName" /> <input
								type="submit" value="중복확인" />
						</fieldset>


						<fieldset>
							<legend>비밀번호 입력란</legend>
							<label>비밀번호</label> <input type="password" name="password" />
						</fieldset>

						<fieldset>
							<legend>비밀번호 확인 입력란</legend>
							<label>비밀번호 확인</label> <input type="password"
								name="passwordCheck" />
						</fieldset>

						<fieldset>
							<legend>성명 입력란</legend>
							<label>성명</label> <input type="text" name="name" />
						</fieldset>

						<fieldset>
							<legend>생년월일 및 성별 입력란</legend>
							<label>생년월일/성별</label> <input type="text" name="birth" /> <label>성별검색필드</label>
							<select name="gender">
								<option value="남">남</option>
								<option value="여">여</option>
							</select>
						</fieldset>

						<fieldset>
							<legend>전화번호 입력란</legend>
							<label>전화번호</label> <input type="text" name="phone" /> <span>[대시(-)를
								포함할 것: 예) 010-3456-2934]</span>
						</fieldset>

						<fieldset>
							<legend>e-mail 입력란</legend>
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
							<legend>홈페이지 주소 입력란</legend>
							<label>홈페이지</label> <input type="text" name="homepage" />
						</fieldset>

						<!-- 		<fieldset>
					<legend>우편번호 입력란</legend>
					<label>우편번호</label> <input type="text" name="zipCode1"/> - <input type="text" name="zipCode2" /> 
					<input type="submit" value="우편번호검색" />
				</fieldset> -->

						<fieldset>
							<legend>주소 입력란</legend>
							<label>기본주소</label><input type="text" name="address" /> <label>상세주소</label><input
								type="text" name="detailAddress" />
						</fieldset>

						<fieldset>
							<label>현재상태</label> <label>현재상태구분필드</label> <select
								name="currentState">
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
							<label>재학구분</label><label>재학구분필드</label> <select
								name="schoolState">
								<option value="재학">재학</option>
								<option value="휴학">휴학</option>
								<option value="졸업예정">졸업예정</option>
								<option value="졸업">졸업</option>
							</select>
						</fieldset>

						<fieldset>
							<label>학년</label> <label>학년구분필드</label> <select name="grade">
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
									<td><input type="checkbox" value="DV13" name="fieldCode">NET
										<input type="checkbox" value="DV24" name="fieldCode">ABAP
										<input type="checkbox" value="DV02" name="code">ANDROID</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV03" name="code">ASP
										<input type="checkbox" value="DV04" name="code">ASP.NET
										<input type="checkbox" value="DV06" name="code">C</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV05" name="code">C#
										<input type="checkbox" value="DV07" name="code">C++ <input
										type="checkbox" value="DV08" name="code">COBOL</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV25" name="code">CSS
										<input type="checkbox" value="DV09" name="code">DB <input
										type="checkbox" value="DV26" name="code">DELPHI</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV27" name="code">HTML
										<input type="checkbox" value="DV28" name="code">IOS <input
										type="checkbox" value="DV01" name="code">JAVA</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV11" name="code">JSP
										<input type="checkbox" value="DV10" name="code">JS <input
										type="checkbox" value="DV12" name="code">LINUX</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV14" name="code">NEWTWORK
										<input type="checkbox" value="DV15" name="code">PHP <input
										type="checkbox" value="DV16" name="code">POWER BUILDER</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV17" name="code">PYTHON
										<input type="checkbox" value="DV18" name="code">QA <input
										type="checkbox" value="DV19" name="code">RUBY</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV20" name="code">SERVER개발
										<input type="checkbox" value="DV29" name="code">VB <input
										type="checkbox" value="DV21" name="code">VC++</td>
								</tr>

								<tr>
									<td><input type="checkbox" value="DV22" name="code">WINDOWS
										<input type="checkbox" value="DV23" name="code">임베디드</td>
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
							<label>희망업무형태</label> <label>희망업무형태구분필드</label> <select
								name="hopeBusiness">
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
							<legend>등록 버튼</legend>
							<label>등록</label><input type="submit" value="등록" />
						</fieldset>
					</form>
				</section>
			</section>
			</main>