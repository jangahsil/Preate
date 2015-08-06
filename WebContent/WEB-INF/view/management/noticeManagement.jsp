<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<script type="text/javascript" src="../js/modernizr.js"></script>

	<main id="main">

	<section id="main-content">
		<h1 class="hidden">공지관리창</h1>
		<p>관리</p>
		<p>원하는 관리 메뉴를 선택하세요</p>

		<nav>
			<h1 class="hidden">관리 메뉴</h1>
			<ul>
				<li><a href="">회원관리</a></li>
				<li><a href="">게시글관리</a></li>
				<li><a href="">제휴업체 관리</a></li>
				<li><a href="">공지 관리</a></li>
				<li><a href="">고객문의</a></li>
			</ul>
		</nav>

		<section>
			<h1 class="hidden">검색폼</h1>
			<form>
					<label>카테고리</label> <select>
						<option >전문가</option>
						<option>비전문가</option>
					</select>
					<p class="hidden">공지목록</p>
					<label>공지정보검색</label><input type="text"><input
						type="submit" value="검색" />
			</form>
		</section>

		<article>
			<h1 class="hidden">공지 목록폼</h1>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>날짜</th>
				</thead>

				<tbody>
					<c:forEach var="n" items="${list}">
						<tr>
							<td><input type="checkbox"></td>
							<td>${n.code}</td>
							<td>${n.title}</td>
							<td>${n.writer}</td>
							<td><fmt:formatDate value="${n.regDate}"
									pattern="yyyy-MM-dd" /></td>
					</c:forEach>
					<td><input type="submit" value="글쓰기" /></td>
					<td><input type="submit" value="삭제" /></td>
					</tr>
				</tbody>
			</table>
		</article>

		<section>
			<h3 class="hidden">페이지</h3>
			<ul>
				<li><a href="noticeManagement?page=1">1</a></li>
				<li><a href="noticeManagement?page=2">2</a></li>
				<li><a href="noticeManagement?page=3">3</a></li>
				<li><a href="noticeManagement?page=4">4</a></li>
				<li><a href="noticeManagement?page=5">5</a></li>
			</ul>
		</section>
	</section>
	</main>
	</div>
	</div>
	
</body>
</html>