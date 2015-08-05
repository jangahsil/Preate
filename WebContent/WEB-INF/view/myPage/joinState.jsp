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
			<h1>현황정보 페이지</h1>

			<form method ="post">
				<fieldset>
					<label>구분</label> <label>구분필드</label> <select>
						<option>전문가</option>
						<option>비전문가</option>
					</select>
				</fieldset>

				<fieldset>
					<label>현재상태</label> <label>현재상태구분필드</label> <select>
						<option>재직중</option>
						<option>프리랜서[재택]</option>
						<option>프리랜서[상주]</option>
						<option>정규직희망</option>
					</select>
				</fieldset>

				<fieldset>
					<label>학교명</label> <input type="text" name ="university">
				</fieldset>

				<fieldset>
					<label>전공명</label> <input type="text" name ="major">
				</fieldset>

				<fieldset>
					<label>재학구분</label> <label>재학구분필드</label> <select>
						<option>재학중</option>
						<option>휴학중</option>
						<option>졸업예정</option>
						<option>졸업</option>
					</select>
				</fieldset>

				<fieldset>
					<label>학년</label> <label>학년구분필드</label> <select>
						<option>1학년</option>
						<option>2학년</option>
						<option>3학년</option>
						<option>4학년</option>
					</select>
				</fieldset>

				<h1>사용가능 툴</h1>
				<table>
					<thead>
						<tr>
							<th>개발</th>
						</tr>
					</thead>

					<tbody>
						<tr>
							<td><input type="checkbox" name="net">NET 
							<input type="checkbox" name="abap">ABAP 
							<input type="checkbox" name="android">ANDROID</td>
						</tr>

						<tr>
							<td><input type="checkbox" name="asp">ASP 
							<input type="checkbox" name="aspnet">ASP.NET 
							<input type="checkbox" name="c">C</td>
						</tr>

						<tr>
							<td><input type="checkbox" name="c#">C# 
							<input type="checkbox" name="c++">C++
							<input type="checkbox" name="cobol">COBOL</td>
						</tr>

						<tr>
							<td><input type="checkbox" name="css">CSS 
							<input type="checkbox" name="db">DB 
							<input type="checkbox" name="delphi">DELPHI</td>
						</tr>

						<tr>
							<td><input type="checkbox" name="html">HTML 
							<input type="checkbox" name="ios">IOS 
							<input type="checkbox" name="java">JAVA</td>
						</tr>

						<tr>
							<td><input type="checkbox" name="jsp">JSP 
							<input type="checkbox" name="js">JS 
							<input type="checkbox" name="linux">LINUX</td>
						</tr>

						<tr>
							<td><input type="checkbox" name="newtwork">NEWTWORK 
							<input type="checkbox" name="php">PHP 
							<input type="checkbox" name="power">POWER
								BUILDER</td>
						</tr>

						<tr>
							<td><input type="checkbox" name="python">PYTHON 
							<input type="checkbox" name="qa">QA 
							<input type="checkbox" name="ruby">RUBY</td>
						</tr>

						<tr>
							<td><input type="checkbox" name="server-dev">SERVER개발 
							<input type="checkbox" name="vb">VB 
							<input type="checkbox" name="vc++">VC++</td>
						</tr>

						<tr>
							<td><input type="checkbox" name="windows">WINDOWS 
							<input type="checkbox" name="embedded">임베디드</td>
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
							<input type="checkbox" name="html5">HTML5 
							<input type="checkbox" name="graphic-design">그래픽디자인 
							<input type="checkbox" name="mobile">모바일
							</td>
						</tr>

						<tr>
							<td><input type="checkbox" name="action-script">액션스크립트 
							<input type="checkbox" name="web-design">웹디자인 
							<input type="checkbox" name="web-standard">웹표준</td>
						</tr>

						<tr>
							<td><input type="checkbox" name="ppt">파워포인트 
							<input type="checkbox" name="publishing">퍼블리싱 
							<input type="checkbox" name="photoshop">포토샵</td>
						</tr>

						<tr>
							<td><input type="checkbox" name="flash">플래시 
							<input type="checkbox" name="3d">3D</td>
						</tr>
					</tbody>
				</table>
	
				<fieldset>
					<legend>이전 버튼</legend>
					<label>이전</label> <a href="join_basic.jsp">
					<input type="submit" value="이전" /></a>
				</fieldset>


				<fieldset>
					<legend>다음 버튼</legend>
					<label>다음</label> <a href="join_career.jsp">
					<input type="submit" value="다음" /></a>
				</fieldset>
				
			</form>
		</section>
	</section>
	</main>
</body>
</html>