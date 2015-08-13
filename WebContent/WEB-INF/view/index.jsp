<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />

<main id="main">
	<div id="visual"></div>
	<section id="main-content">
		<h1 class="hidden">시작페이지</h1>
		<section id="project">
			<h1 class="hidden">프로젝트 목록</h1>
			<div>
				<c:forEach var="p" items="${list}">
					<ul>
						<li><a href="projectIndex/projectDetail?c=${p.code}">제목: ${p.title}</a></li>
						<li>모집분야: ${p.classification}</li>
						<li>남은날짜: <fmt:formatDate value="${p.deadline}"
								pattern="yyyy-MM-dd" /></li>
						<li>기획상태: ${p.planningState}</li>
						<li>지역: ${p.area1_1}${p.area1_2}</li>
					</ul>
			</c:forEach>
			</div>
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
					<th>게시판 분류</th>
					<th>제목</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="n" items="${list3}">
					<tr>
						<td>${n.code}</td>
						<td>${n.boardClassification}게시판</td>
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