<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<link href="../resource/css/management/title.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="../js/modernizr.js"></script>

<main id="main">

<section id="main-content">
	<h1 class="hidden">회원관리창</h1>
	<p class="manage-title"></p>
	<div id="contents">
		<p>관리</p>
		<p>원하는 관리 메뉴를 선택하세요</p>

		<nav>
			<h1 class="hidden">관리 메뉴</h1>
	<ul class="ma-menu clearfix">
				<li class="select">회원 관리</li>
				<li><a href="${ctxName}/management/noticeManagement">공지 관리</a></li>
				<li><a href="${ctxName}/management/customerService">고객문의</a></li>
				<li>제휴업체 관리</li>
			</ul>
		</nav>

		<section>
			<h1 class="hidden">검색폼</h1>
			<form class="s-form clearfix" method="post">
				<fieldset>
					<legend class="hidden">회원검색폼</legend>
					<label>카테고리</label> <select name="field">
						<option value="MID">아이디</option>
						<option value="NAME">이름</option>
					</select> <label class="hidden">회원정보검색</label> <input type="text"
						name="query"><input type="submit" value="검색" />
				</fieldset>
			</form>
		</section>

		<article>
			<h1 class="hidden">회원 목록폼</h1>
			<p>회원목록</p>
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
							<td><fmt:formatDate value="${n.regDate}"
									pattern="yyyy-MM-dd" /></td>
							<td>수정</td>
							<td><a href="removeMember?c=${n.mid}">회원삭제</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</article>


		<section>
			<h3 class="hidden">페이지</h3>
			<ul class="pager">
				<li><a href="memberManagement?page=1">1</a></li>
				<li><a href="memberManagement?page=2">2</a></li>
				<li><a href="memberManagement?page=3">3</a></li>
				<li><a href="memberManagement?page=4">4</a></li>
				<li><a href="memberManagement?page=5">5</a></li>
			</ul>
		</section>
		</div>
</section>

</main>
</body>
</html>