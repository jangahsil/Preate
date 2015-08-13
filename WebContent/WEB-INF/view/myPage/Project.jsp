
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />

<main>
<section>
	<table border="2px" , bordercolor="black">

		<tr>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
		</tr>

		<tr>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
		</tr>

		<tr>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
		</tr>

		<tr>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
		</tr>

		<tr>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
			<th>1</th>
		</tr>

	</table>
	<h1 class="search-id">아이디 찾기</h1>
	<form>
		<fieldset>
			<legend>관심 프로젝트</legend>

			<table>
				<thead>
					<tr>
						<th>스크랩</th>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>모집분야</th>
						<th>남은날짜</th>
						<th>기획상태</th>
						<th>예상기간</th>
						<th>예상비용</th>
						<th>지역1</th>
						<th>지역2</th>
						<th>내용</th>
						<th>지원자</th>
					</tr>
				</thead>
			</table>

			<tr>
				<th>프로젝트 제목</th>
			</tr>

			<tr>
				<th>제출일자</th>
			</tr>
			

			<tr>
				<th>도구</th>
			</tr>

			<c:forEach var="n" items="${list}">
				<tr>
					<td>${n.title}</td>
					<td><a href="projectSearchDetail.jsp?c=${n.code}">${n.title}</a></td>
					<td>${n.deadLine}</td>
					<%-- <td><fmt:formatDate value="${n.regDate}" pattern="YYYY-MM-dd"/></td> --%>
					<td>${n.content}</td>
				</tr>
			</c:forEach>
			<br> <input type="submit" value="더 자세히 보기" />
		</fieldset>

		<fieldset>
			<legend>관심 프로젝트</legend>

			<tr>
				<th>프로젝트 제목</th>
			</tr>

			<tr>
				<th>제출일자</th>
			</tr>

			<tr>
				<th>도구</th>
			</tr>

			<br> <input type="submit" value="더 자세히 보기" />
		</fieldset>

		<fieldset>
			<legend>진행중인 프로젝트</legend>
			<tr>
				<th>프로젝트 제목</th>
			</tr>

			<tr>
				<th>제출일자</th>
			</tr>

			<tr>
				<th>도구</th>
			</tr>

			<br> <input type="submit" value="더 자세히 보기" />
		</fieldset>

		<fieldset>
			<legend>종료된 프로젝트</legend>
			<tr>
				<th>프로젝트 제목</th>
			</tr>

			<tr>
				<th>제출일자</th>
			</tr>

			<tr>
				<th>도구</th>
			</tr>

			<tr>
				<th>포트폴리오</th>
			</tr>

			<br> <input type="submit" value="더 자세히 보기" /> <br> <input
				type="submit" value="등록" />
		</fieldset>
	</form>
</section>
</main>