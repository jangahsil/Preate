<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<style>
	

</style>
<main>
	<section>
		<h1>프로젝트 검색</h1>

		<section>
			<h1>프로젝트 검색 폼</h1>
			<form>
				<fieldset>
					<legend>프로젝트 검색</legend>
					<label>프로젝트 검색</label> <input type="text" /> <input type="submit"
						value="검색" />
				</fieldset>
			</form>
		</section>

		<nav>
			<h1>프로젝트 검색 분류</h1>
			<ul>
				<li><a href="">전체</a></li>
				<li><a href="">개발</a></li>
				<li><a href="">디자인</a></li>
			</ul>
		</nav>

		<section>
			<h1>프로젝트 목록</h1>
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
				<tbody>
					<c:forEach var="p" items="${list}">
					<tr>
						<td>true</td>
						<td>${p.code}</td>
						<td><a href="projectDetail?c=${p.code}">${p.title}</a></td>
						<td>${p.writerName}</td>
						<td>${p.classification}</td>
						<td><fmt:formatDate value="${p.deadline}" pattern="yyyy-MM-dd"/></td>
						<td>${p.planningState}</td>
						<td>30일</td>
						<td>${p.budget}원</td>
						<td>${p.area1_1} ${p.area1_2}</td>
						<td>${p.area2_1} ${p.area2_2}</td>
						<td>${p.content}</td>
						<td>
							<form>
								<select>
									<option>${p.joinCount}명지원</option>
									<c:forEach var="j" items="${p.joinRequest}">
									<option>${j.mid}</option>
									</c:forEach>
								</select>
							</form>
						</td>
					<tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
		
		<section>
			<h1>필요기술</h1>
			<table>
				<thead>
					<tr>
						<th>필요기술</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>php</td>
					</tr>
					<tr>
						<td>javascript</td>
					</tr>
					<tr>
						<td>HTML</td>
					</tr>
				</tbody>
			</table>
		</section>
	</section>
</main>
