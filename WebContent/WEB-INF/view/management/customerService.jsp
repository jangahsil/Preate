<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<script type="text/javascript" src="../js/modernizr.js"></script>

	<main id="main">
	<section id="main-content">
		<h1 class="hidden">고객문의관리창</h1>
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
					<select name="field">
						<option value="title">제목</option>
						<option value="writer">작성자</option>
					</select>
					<p>문의목록</p>
					<label>문의정보검색</label><input type="text" name="query"><input type="submit" value="검색" />
			</form>
		</section>
	
		<article>
			<h1>문의 목록폼</h1>
			<table>
			
				<thead>
					<tr>
					<th>체박</th>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>날짜</th>
						<th>악숀</th>
				</thead>
				
				<tbody>
				
				<c:forEach var="n" items="${list}">
					<tr>
						<td><input type="checkbox"></td>
						<td>${n.code}</td>
						<td><a href=customerServiceDetail?c=${n.code}> ${n.title }</a></td>
						<td>${n.writer}</td>
						<td><fmt:formatDate value="${n.regDate}" pattern="yyyy-MM-dd" /></td>
						<td>
						
						<form method="post" action="customerDelete?c=${n.code}" >
						
						<!-- 팝업창 업데이트 coming soon -->
						<input type="submit" value="답변"/>
						<input type="submit" value="삭제" />
						</form>
						</td>
						</tr>
						</c:forEach>
				</tbody>
				
			</table>
			<!-- </form> -->
		</article>
	
		<section>
			<h3>페이지</h3>
			<ul>
				<li><a href="customerService?page=1">1</a></li>
				<li><a href="customerService?page=2">2</a></li>
				<li><a href="customerService?page=3">3</a></li>
				<li><a href="customerService?page=4">4</a></li>
				<li><a href="customerService?page=5">5</a></li>
			</ul>
		</section>
	</section>
			</main>
		</div>
	</div>
</body>
</html>