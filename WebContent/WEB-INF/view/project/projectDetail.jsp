<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

<main>
	<section>
		<h1>프로젝트 검색</h1>
		<article>
			<h1>프로젝트 상세보기 내용</h1>
			<table>
				<thead>
					<tr>
						<th>스크랩</th>
						<th>번호</th>
						<th>제목</th>
						<th>남은일수</th>							
						<th>기획상태</th>
						<th>지원자 수</th>
						<th>카테고리</th>
						<th>미팅여부</th>
						<th>지역1</th>
						<th>지역2</th>
						<th>모집마감일</th>
						<th>예상 시작일</th>
						<th>종료일</th>
						<th>총 인원</th>
						<th>필요 개발자</th>
						<th>필요 디자이너</th>
						<th>상세정보</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>true</td>
						<td>${p.code}</td>
						<td>${p.title}</td>
						<td>9일 남음</td>
						<td>${p.planningState}</td>
						<td>${p.joinCount}명</td>
						<td>${p.classification}</td>
						<td>${p.meeting}</td>
						<td>${p.area1_1} ${p.area1_2}</td>
						<td>${p.area2_1} ${p.area2_2}</td>
						<td><fmt:formatDate value="${p.deadline}" pattern="yyyy-MM-dd"/></td>
						<td><fmt:formatDate value="${p.startDate}" pattern="yyyy-MM-dd"/></td>
						<td><fmt:formatDate value="${p.endDate}" pattern="yyyy-MM-dd"/></td>
						<td>${p.totalPeople}명</td>
						<td>${p.needDeveloper}명</td>
						<td>${p.needDesigner}명</td>
						<td>${p.content}</td>
					<tr>
				</tbody>
			</table>
		</article>
		
		<article>
			<h1>필요기술</h1>
			<table>
				<thead>
					<tr>
						<th>이름</th>
						<th>분류</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="n" items="${list2}">
					<tr>
						<td>${n.fieldName}</td>
						<td>${n.fieldClassification}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</article>

		<article>
			<h1>댓글</h1>
			<table>
				<thead>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>내용</th>
						<th>수정</th>
						<th>삭제</th>
						<th>댓글의 댓글</th>
						<th>댓글의 댓글 작성</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="comment" items="${list}">
					<tr>
						<td>${comment.code}</td>
						<td>${comment.writerName}</td>
						<td><fmt:formatDate value="${comment.regDate}" pattern="yyyy-MM-dd"/></td>
						<td>${comment.content}</td>
						<td><input type="submit" value="수정"/></td>
						<td><input type="submit" value="삭제"/></td>
						<td>
							<c:forEach var="cc" items="${comment.commentsComments}">
							<dl>
								<dt>작성자</dt>
								<dd>${cc.writerName}</dd>
								<dt>작성일</dt>
								<dd><fmt:formatDate value="${cc.regDate}" pattern="yyyy-MM-dd"/></dd>
								<dt>내용</dt>
								<dd>${cc.content}</dd>
							</dl>
							</c:forEach>
						</td>
						<td>
							<form action="projectCC?c=${p.code}&commentC=${comment.code}" method="post">
								<fieldset>
									<legend>댓글의 댓글 내용 입력</legend>
									<label>내용</label>
									<input type="text" name="content"/>
									<input type="submit" value="입력"/>
								</fieldset>
							</form>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</article>
		
		<section>
			<h1>댓글 입력</h1>
			<ul>
				<li>작성자 : ABC</li>
				<li>
					<form method="post">
						<fieldset>
							<legend>댓글 내용 입력</legend>
							<label>내용</label>
							<input type="text" name="content"/>
							<input type="submit" value="입력"/>
						</fieldset>
					</form>
				</li>
			</ul>
		</section>
		<section>
			<h1>버튼 목록</h1>
			<ul>
				<li><a href="${ctxName}/project/projectEdit?c=${p.code}">수정</a></li>
				<li><a href="${ctxName}/project/projectRemove?c=${p.code}">삭제</a></li>
				<li><a href="${ctxName}/project/projectBoard">목록</a></li>
			</ul>
		</section>
	</section>
</main>