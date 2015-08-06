<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

<main>
	<section>
		<h1>디자이너게시판</h1>
		
		<nav>
			<h1>게시판 카테고리</h1>
			<ul>
				<li><a href="">전체보기</a></li>
				<li><a href="">이론</a></li>
				<li><a href="">툴</a></li>
				<li><a href="">팁/강좌</a></li>
				<li><a href="">질문/답변</a></li>
			</ul>
		</nav>
		
		<section>
			<h1>게시판 목록</h1>
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
						<td><a href="designerDetail?c=${b.code}">${b.title}[${b.cmtCount}]</a></td>
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
		
		<nav>
			<h1>페이지</h1>
			<ul>
				<li><a href="">1</a></li>
				<li><a href="">2</a></li>
				<li><a href="">3</a></li>
				<li><a href="">4</a></li>
				<li><a href="">5</a></li>
			</ul>
		</nav>
		
		<section>
			<h1>버튼 목록</h1>
			<ul>
				<li><a href="designerReg">글쓰기</a></li>
				<li><a href="designerBoard">목록</a></li>
			</ul>
		</section>
		
		<section>
			<h1>게시판 검색</h1>
			<form>
				<fieldset>
					<legend>검색정보</legend>
					<label>검색필드</label>
					<select>
						<option>제목+내용</option>
						<option>작성자</option>
					</select>
					<label>검색어</label>
					<input type="text"/>
					<input type="submit" value="검색"/>
				</fieldset>
			</form>
		</section>
	</section>
</main>