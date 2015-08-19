<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
/* ------------------------------ 전체가 공유하는 부분 설정  ------------------------------ */
p {
	margin-top: 15px;
}

label {
	margin-left: 60px;
	display: inline-block;
	text-align: center;
	width: 70px;
}

#main-content  input[type="text"] {
	width: 90px;
}

/* 기본정보, 현재상태, 경력정보 이미지 부분 */
.sub-title-visual {
	width: 645px;
	height: 30px;
	margin-left: auto;
	margin-right: auto;
}

/* ------------------------------ title image ------------------------------ */
#visual {
	margin-left: 29px;
	width: 956px;
	height: 62px;
	background: url("../resource/images/myPage/join-title.png") no-repeat
		center;
}

/* ------------------------------ main section ------------------------------ */
#main-content section {
	width: 956px;
	margin-top: 24px;
	margin-left: 29px;
	margin-right: 29px;
	padding-top: 0px;
	padding-left: 0px;
}

/* -------------------- main-content 영역 중, image 영역을 제외한 아래 영역 -------------------- */
#join {
	width: 1016px;
}

/* ------------------------------ 기본 정보 부분 ------------------------------ */
#basic-info {
	width: 956px;
	height: 250px;
}

#basic-info fieldset {
	margin-top: 15px;
	width: 449px;
	float: left;
}

#basic-info>div:FIRST-CHILD {
	width: 956px;
	background: url("../resource/images/myPage/join-basicinform.png")
		no-repeat center;
}

#address input[type="text"] {
	width: 300px;
}

#home-page input[type="text"] {
	width: 300px;
}

#basic-info p {
	width:
}

#id input[type="submit"] {
	width: 54px;
	height: 23px;
	margin-left: auto;
	margin-right: auto;
	background: url("../resource/images/myPage/btn-overlap.png") no-repeat
		center;
}

#nick-name input[type="submit"] {
	width: 54px;
	height: 23px;
	margin-left: auto;
	margin-right: auto;
	background: url("../resource/images/myPage/btn-overlap.png") no-repeat
		center;
}

/* ------------------------------ 현재 상태 부분 ------------------------------ */
#current-info {
	width: 956px;
	height: 150px;
}

#current-info fieldset {
	margin-top: 15px;
	width: 449px;
	float: left;
}

#current-info>div:FIRST-CHILD {
	width: 956px;
	background: url("../resource/images/myPage/join-currentinform.png")
		no-repeat center;
}

/* ------------------------------ 경력 정보 부분 ------------------------------ */
#career-info {
	width: 956px;
	height: 300px;
}

#career-info fieldset {
	margin-top: 15px;
	width: 449px;
	float: left;
}

.check-box {
	margin-top: 20px;
}

#career-info li {
	width: 120px;
	height: 15px;
	margin-top: 3px;
	margin-left: 60px;
	float: left;
}

#career-year input[type="text"] {
	width: 40px;
}

#career-info>div:FIRST-CHILD {
	width: 956px;
	background: url("../resource/images/myPage/join-careerinform.png")
		no-repeat center;
}

/* ------------------------------ 버튼 부분 ------------------------------ */
.cancel-button label {
	margin-left: 0px;
}

.submit-button label {
	margin-left: 320px;
}

.cancel-button input[type="submit"] {
	width: 54px;
	height: 23px;
	margin-left: auto;
	margin-right: auto;
	background: url("../resource/images/myPage/join-btn-cancel.png")
		no-repeat center;
}

.submit-button input[type="submit"] {
	width: 54px;
	height: 23px;
	margin-left: auto;
	margin-right: auto;
	background: url("../resource/images/myPage/join-btn-join.png") no-repeat
		center;
}
</style>
<script type="text/javascript">
	addEventListener("load", function() {
		var basicItems = document.querySelectorAll("#basic-info input");
		var selectItems=document.querySelectorAll("select");
		var checkboxItems=document.querySelectorAll("input[type=checkbox]");
		var pwdCheck=document.querySelectorAll("#pwd-check");		
		
		var blank = /[\s]/g;
		var special = /[`~!@#$%^&*|\\\'\";:\/?]/gi;

		var btnReg = document.querySelector("#btn-reg");

		alert(pwdCheck.length);
		btnReg.onclick = function() {
		//비밀번호 체크
			if(pwdCheck[0].value != pwdCheck[1].value){
				alert("비밀번호가 틀립니다.");			
				return false;
			};
			if(pwdCheck[0].value.length < 6){
				alert("비밀번호는 6자리 이상 해주세요");			
			return false;	
			};
			
			
		//구분 선택 체크 
			for (var i = 0; i < selectItems.length;i++){
				if(selectItems[i].value=="구분"){
					
					alert("구분을 모두 선택 해주세요.");
					
					return false;
					
				};
				
			};
			
			//공백 체크
			for (var i = 0; i < basicItems.length; i++) {

				if (basicItems[i].value == "") {
					alert("입력을 모두 다 해주세요.");
					return false;
				};

			};
			for (var i = 0; i < 10; i++) {
				if (blank.test(basicItems[i].value) == true) {
					alert("아이디 및 비밀번호에 공백이 있습니다");
					return false;
				};
			if(special.test(basicItems[i].value) == true){
				alert("아이디와 닉네임에는 특수문자는 입력할수없습니다.");
				return false;
			};
			};

		};

	});
</script>
<main id="main">
<section id="main-content">
	<div id="visual"></div>
	<h1 class="hidden">회원가입</h1>

	<section id="join">
		<form method="post">
			<h1 class="hidden">회원가입정보</h1>
			<div id="basic-info" class="clearfix info-box">
				<div class="sub-title-visual"></div>
				<p class="hidden">기본 정보</p>
				<fieldset id="id">
					<legend class="hidden">ID 입력란</legend>
					<label>ID</label> <input type="text" name="mid" /> <input type="submit" class="button" value="중복확인" />
				</fieldset>

				<fieldset id="nick-name">
					<legend class="hidden">닉네임 입력란</legend>
					<label>닉네임</label> <input type="text" name="nickName" /> <input type="submit" class="button" value="중복확인" />
				</fieldset>

				<fieldset id="password">
					<legend class="hidden">비밀번호 입력란</legend>
					<label>비밀번호</label> <input id="pwd-check" type="password" name="password" />
				</fieldset>

				<fieldset id="password-check">
					<legend class="hidden">비밀번호 확인 입력란</legend>
					<label>비밀번호 확인</label> <input id="pwd-check" type="password" name="passwordCheck" />
				</fieldset>

				<fieldset id="name">
					<legend class="hidden">성명 입력란</legend>
					<label>성명</label> <input type="text" name="name" />
				</fieldset>

				<fieldset id="birth">
					<legend class="hidden">생년월일 및 성별 입력란</legend>
					<label>생년월일/성별</label> <input type="text" name="birth" /> <label>성별검색필드</label> <select name="gender">
						<option value="구분">구분</option>
						<option value="남">남</option>
						<option value="여">여</option>
					</select>
				</fieldset>

				<fieldset id="phone">
					<legend class="hidden">전화번호 입력란</legend>
					<label>전화번호</label> <input type="text" name="phone" /> <span>[대시(-)를 포함할 것: 예) 010-3456-2934]</span>
				</fieldset>

				<fieldset id="e-mail">
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

				<fieldset id="home-page">
					<legend class="hidden">홈페이지 주소 입력란</legend>
					<label>홈페이지</label> <input type="text" name="homepage" />
				</fieldset>

				<!-- 		<fieldset>
					<legend>우편번호 입력란</legend>
					<label>우편번호</label> <input type="text" name="zipCode1"/> - <input type="text" name="zipCode2" /> 
					<input type="submit" value="우편번호검색" />
				</fieldset> -->

				<fieldset id="address">
					<legend class="hidden">주소 입력란</legend>
					<label>기본주소</label><input type="text" name="address" /> <br> <br> <label>상세주소</label><input type="text"
						name="detailAddress" />
				</fieldset>
			</div>

			<div id="current-info" class="clearfix info-box">
				<div class="sub-title-visual"></div>
				<p class="hidden">현황 정보</p>

				<fieldset id="current-state">
					<legend class="hidden">현재상태구분필드</legend>
					<label>현재상태</label> <select name="currentState">
						<option value="구분">구분</option>
						<option value="재직">재직중</option>
						<option value="재택">프리랜서[재택]</option>
						<option value="상주">프리랜서[상주]</option>
					</select>
				</fieldset>

				<fieldset id="university-name">
					<label>학교명</label> <input type="text" name="universityName">
				</fieldset>

				<fieldset id="major">
					<label>전공명</label> <input type="text" name="major">
				</fieldset>

				<fieldset id="school-state">
					<legend class="hidden">재학구분필드</legend>
					<label>재학구분</label> <select name="schoolState">
						<option value="구분">구분</option>
						<option value="재학">재학</option>
						<option value="휴학">휴학</option>
						<option value="졸업예정">졸업예정</option>
						<option value="졸업">졸업</option>
					</select>
				</fieldset>

				<fieldset id="grade">
					<legend class="hidden">학년구분필드</legend>
					<label>학년</label> <select name="grade">
						<option value="구분">구분</option>
						<option value="1">1학년</option>
						<option value="2">2학년</option>
						<option value="3">3학년</option>
						<option value="4">4학년</option>
					</select>
				</fieldset>
			</div>

			<div id="career-info" class="clearfix info-box">
				<div class="sub-title-visual"></div>
				<p class="hidden">경력정보</p>

				<div class="check-box" class="clearfix">
					<ul>
						<li><input type="checkbox" value="DV13" name="fieldCode"> NET</li>
						<li><input type="checkbox" value="DV24" name="fieldCode"> ABAP</li>
						<li><input type="checkbox" value="DV02" name="fieldCode"> ANDROID</li>
						<li><input type="checkbox" value="DV03" name="fieldCode"> ASP</li>
						<li><input type="checkbox" value="DV04" name="fieldCode"> ASP.NET</li>

						<li><input type="checkbox" value="DV06" name="fieldCode"> C</li>
						<li><input type="checkbox" value="DV05" name="fieldCode"> C#</li>
						<li><input type="checkbox" value="DV07" name="fieldCode"> C++</li>
						<li><input type="checkbox" value="DV08" name="fieldCode"> COBOL</li>
						<li><input type="checkbox" value="DV25" name="fieldCode"> CSS</li>

						<li><input type="checkbox" value="DV09" name="fieldCode"> DB</li>
						<li><input type="checkbox" value="DV26" name="fieldCode"> DELPH</li>
						<li><input type="checkbox" value="DV27" name="fieldCode"> HTML</li>
						<li><input type="checkbox" value="DV28" name="fieldCode"> IOS</li>
						<li><input type="checkbox" value="DV01" name="fieldCode"> JAVA</li>

						<li><input type="checkbox" value="DV11" name="fieldCode"> JSP</li>
						<li><input type="checkbox" value="DV10" name="fieldCode"> JS</li>
						<li><input type="checkbox" value="DV12" name="fieldCode"> LINUX</li>
						<li><input type="checkbox" value="DV14" name="fieldCode"> NEWTWORK</li>
						<li><input type="checkbox" value="DV15" name="fieldCode"> PHP</li>

						<li><input type="checkbox" value="DV16" name="fieldCode"> POWER BUILDER</li>
						<li><input type="checkbox" value="DV17" name="fieldCode"> PYTHON</li>
						<li><input type="checkbox" value="DV18" name="fieldCode"> QA</li>
						<li><input type="checkbox" value="DV19" name="fieldCode"> RUBY</li>
						<li><input type="checkbox" value="DV20" name="fieldCode"> SERVER개발</li>

						<li><input type="checkbox" value="DV29" name="fieldCode"> VB</li>
						<li><input type="checkbox" value="DV21" name="code"> VC++</li>
						<li><input type="checkbox" value="DV22" name="fieldCode"> WINDOWS</li>
						<li><input type="checkbox" value="DV23" name="fieldCode"> 임베디드</li>
					</ul>
				</div>

				<div id="check-box" class="clearfix">
					<ul>
						<li><input type="checkbox" value="DS02" name="code"> HTML5</li>
						<li><input type="checkbox" value="DS03" name="code"> 그래픽디자인</li>
						<li><input type="checkbox" value="DS11" name="code"> 모바일</li>
						<li><input type="checkbox" value="DS04" name="code"> 액션스크립트</li>
						<li><input type="checkbox" value="DS05" name="code"> 웹디자인</li>

						<li><input type="checkbox" value="DS06" name="code"> 웹표준</li>
						<li><input type="checkbox" value="DS07" name="code"> 파워포인트</li>
						<li><input type="checkbox" value="DS08" name="code"> 퍼블리싱</li>
						<li><input type="checkbox" value="DS09" name="code"> 포토샵</li>
						<li><input type="checkbox" value="DS10" name="code"> 플래시</li>

						<li><input type="checkbox" value="DS01" name="code"> 3D</li>
					</ul>
				</div>


				<fieldset id="hope-business">
					<legend class="hidden">희망업무형태구분필드</legend>
					<label>희망업무형태</label> <select name="hopeBusiness">
						<option value="구분">구분</option>
						<option value="무관">무관</option>
						<option value="재택">재택</option>
						<option value="반상주">반상주</option>
						<option value="상주">상주</option>
						<option value="정규직">정규직</option>
					</select>
				</fieldset>

				<fieldset id="career-year">
					<label>경력년수</label> <input type="text" name="careerYear" value="0"/> 년
				</fieldset>

				<fieldset></fieldset>

				<fieldset class="submit-button">
					<legend class="hidden">등록 버튼</legend>
					<label class="button">등록</label> <input id="btn-reg" class="button" type="submit" value="등록" />
				</fieldset>

				<fieldset class="cancel-button">
					<legend class="hidden">취소 버튼</legend>
					<label class="button">취소</label> <input class="button" type="submit" value="취소" />
				</fieldset>

			</div>
		</form>
	</section>
</section>
</main>