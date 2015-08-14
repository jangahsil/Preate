<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<head>
	<link href="${ctxName}/resource/css/board/developer-style.css" rel="stylesheet"	type="text/css" />
</head>
<body>
	<main id="main">
		<section>
			<h1>개발자게시판</h1>
			
			<nav id="category">
				<h1 class="hidden">게시판 카테고리</h1>
				<ul class="clearfix">
					<li><a href="" class="button all-button">전체보기</a></li>
					<li><a href="" class="button theory-button">이론</a></li>
					<li><a href="" class="button tool-button">툴</a></li>
					<li><a href="" class="button tip-button">팁/강좌</a></li>
					<li><a href="" class="button qna-button">질문/답변</a></li>
				</ul>
			</nav>
			
			<section id="board-table">
				<h1 class="hidden">게시판 목록</h1>
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
							<th>추천수</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="b" items="${list}">
						<tr>
							<td>${b.code}</td>
							<td><a href="developerDetail?c=${b.code}">${b.title}[${b.cmtCount}]</a></td>
							<td>${b.writerNick}</td>
							<td>
								<fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd"/>
							</td>
							<td>${b.recommend}</td>
							<td>${b.hit}</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</section>
			
			<section id="button-list">
				<div>
					<h1 class="hidden">버튼 목록</h1>
					<ul class="clearfix">
						<li><a href="developerReg" class="button reg-button">등록</a></li>
						<li><a href="developerBoard" class="button list-button">목록</a></li>
					</ul>
				</div>
			</section>
			
			<nav id="pager">
				<div>
					<h1 class="hidden">페이지</h1>
					<ul>
						<li><a href="">1</a></li>
						<li><a href="">2</a></li>
						<li><a href="">3</a></li>
						<li><a href="">4</a></li>
						<li><a href="">5</a></li>
					</ul>
				</div>
			</nav>
			
			<section id="board-search">
				<h1 class="hidden">게시판 검색</h1>
				<form>
					<fieldset>
						<legend class="hidden">검색정보</legend>
						<label class="hidden">검색필드</label>
						<select name="field">
							<option value="TITLE">제목+내용</option>
							<option value="WRITER">작성자</option>
						</select>
						<label class="hidden">검색어</label>
						<input type="text" name="query"/>
						<input type="submit" value="검색" class="button search-button"/>
					</fieldset>
				</form>
			</section>
		</section>
	</main>
</body>