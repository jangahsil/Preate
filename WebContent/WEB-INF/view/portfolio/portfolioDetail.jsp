<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Preate</title>
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
		<h1>포트폴리오</h1>
		
		<section>
			<h1>작성자 소개</h1>
			<p>${p.writerIntro}</p>
			<dl>
				<dt>작성자이미지</dt>
				<dd><img src="../images/.png" alt="images"></dd>
				<dt>이름</dt>
				<dd>${p.writerName}</dd>
				<dt>현재상태</dt>
				<dd>${p.state}</dd>
				<dt>경력년수</dt>
				<dd>${p.writerCareer}</dd>
			</dl>
		</section>
		
		<section>
			<h1>사용 툴</h1>
			<dl>
			<dt>언어</dt>
			<c:forEach var="f" items="${list}">
			<dd>${f.fieldName}</dd>
			</c:forEach>
			</dl>
		</section>

		<section>
			<h1>전체 포트폴리오 이미지</h1>
			<table>
					<thead>
						<tr>
							<th>포트폴리오 제목</th>
							<th>이미지</th>				
						</tr>
					</thead>
					<tbody>
						<%-- <c:forEach var="p" items="${list}"> --%>
						<tr>
							<td>뷰티아리아갤러리</td>
							<!--  //해당 작성자가 등록한 포트폴리오 전체를 보여줘야함!-->
							<td><a href="portfolioTotalImage?c=${p.code}" ><img src="../images/.png"  alt="images"></a></td>
						</tr>
						<%-- </c:forEach> --%>
					</tbody>
			</table>
		</section>
	</section>
	</main>

	<footer>
		<section>
			<h1>저작권 정보</h1>
			<p>Copylight ⓒ preate.com 2015 All Right Reserved.</p>
		</section>
	</footer>

</body>
</html>