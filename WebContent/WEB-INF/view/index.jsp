<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />

<script type="text/javascript">

</script>

<main id="main">
	<div id="visual"></div>
	<section id="main-content">
		<h1 class="hidden">시작페이지</h1>

		<section id="project">
			<h1 class="hidden">프로젝트 목록</h1>
			<table>
				<thead>
					<tr>
						<th>제목</th>
						<th>모집분야</th>
						<th>남은날짜</th>
						<th>기획상태</th>
						<th>예상기간</th>
						<th>예상비용</th>
						<th>지역1</th>
						<th>지역2</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="p" items="${list}">
						<tr>
							<td><a href="projectIndex/projectDetail?c=${p.code}">${p.title}</a></td>
							<td>${p.classification}</td>
							<td><fmt:formatDate value="${p.deadline}"
									pattern="yyyy-MM-dd" /></td>
							<td>${p.planningState}</td>
							<td>30일</td>
							<td>${p.budget}원</td>
							<td>${p.area1_1}${p.area1_2}</td>
							<td>${p.area2_1}${p.area2_2}</td>
							<td>
							</td>
						<tr>
					</c:forEach>
				</tbody>
			</table>
		</section>

		<section id="contest">
		
			<h1 class="hidden">공모전 목록</h1>
			<c:forEach var="con" items="${list2}">
				<ul>
					<li><img src="${ctxName}/resource/upload/board/${con.fileName}">
					</li>
				</ul>
			</c:forEach>
		</section>
		
		<section id="notice">
	
		<h1 class="hidden">공지사항 목록</a>
		</h1>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>게시판</th>
					<th>제목</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="n" items="${list3}">
					<tr>
						<td>${n.code}</td>
						<td>${n.boardClassification}</td>
						<td><a href="management/noticeDetail?c=${n.code}">${n.title}</a></td>
						<td><fmt:formatDate value="${n.regDate}"
								pattern="yyyy-MM-dd" /></td>
						<td>${n.hit}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</section>
</section>
</main>