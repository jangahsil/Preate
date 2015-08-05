<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<h1>회원관리창</h1>
		<p>관리</p>
		<p>원하는 관리 메뉴를 선택하세요</p>

		<nav>
			<h1>관리 메뉴</h1>
			<ul>
				<li><a href="">회원관리</a></li>
				<li><a href="">게시글관리</a></li>
				<li><a href="">제휴업체 관리</a></li>
				<li><a href="">공지 관리</a></li>
				<li><a href="">고객문의</a></li>
			</ul>
		</nav>
		
		<section>
			<h1>검색폼</h1>
			<form method="post">
 			<fieldset>
					<legend>회원검색폼</legend>
					<label>카테고리</label>
					<select name="field">
						<option value="MID">아이디</option>
						<option value="NAME">이름</option>
					</select>
					<p>회원목록</p>
					<label >회원정보검색</label>
					<input type="text" name="query"><input type="submit" value="검색" />
			</fieldset>
		</form> 
		</section>
		
		<article>
			<h1>회원 목록폼</h1>
			<table>
				<thead>
					<tr>
						<th>체크박</th>
						<th>이름</th>
						<th>아이디</th>
						<th>회원분류</th>
						<th>회원점수</th>
						<th>게시글수</th>
						<th>가입일자</th>
				</thead>

				<tbody>
					<c:forEach var="n" items="${list}">
						<tr>
						<td><input type="checkbox"></td>
						<td>${n.name}</td>
						<td>${n.mid}</td>
						<td>${n.classification}</td>
						<td>${n.grade}</td>
						<td>${n.boardCnt}</td>
						<td><fmt:formatDate value="${n.regDate}" pattern="yyyy-MM-dd" /></td>
						<td>수정</td>
						<td><a href="removeMember?c=${n.mid}" >회원삭제</a></td>
						</tr>
						</c:forEach>
				</tbody>
			</table>
		</article>
		
		
		<section>
			<h3>페이지</h3>
			<ul>
				<li><a href="memberManagement?page=1">1</a></li>
				<li><a href="memberManagement?page=2">2</a></li>
				<li><a href="memberManagement?page=3">3</a></li>
				<li><a href="memberManagement?page=4">4</a></li>
				<li><a href="memberManagement?page=5">5</a></li>
			</ul>
		</section>
		
	</section>
</body>
</html>