<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

<main>
	<section>
		<article>
			<h1>게시물 내용</h1>
			<table>
				<thead>
					<tr>
						<th>코드</th>
						<th>제목</th>
						<th>작성일</th>
						<th>시작일</th>
						<th>종료일</th>
						<th>첨부파일</th>
						<th>내용</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>${con.code}</td>
						<td>${con.title}</td>
						<td><fmt:formatDate value="${con.regDate}" pattern="yyyy-MM-dd"/></td>
						<td><fmt:formatDate value="${con.startDate}" pattern="yyyy-MM-dd"/></td>
						<td><fmt:formatDate value="${con.endDate}" pattern="yyyy-MM-dd"/></td>
						<td><a href="${ctxName}/download/contest?file=${con.fileName}">${con.fileName}</a></td>
						<td>${con.content}</td>
					</tr>
				</tbody>
			</table>
		</article>

		<section>
			<h1>버튼 목록</h1>
			<ul>
				<li><a href="${ctxName}/contest/contestEdit?c=${con.code}">수정</a></li>
				<li><a href="${ctxName}/contest/contestRemove?c=${con.code}">삭제</a></li>
				<li><a href="${ctxName}/contest/contest">목록</a></li>
			</ul>
		</section>
	</section>
</main>