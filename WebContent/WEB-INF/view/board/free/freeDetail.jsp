<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

<style>

#visual {

	/* border: 1px solid blue; */
	margin-left: 29px;
	width: 956px;
	height: 62px;
	background: url("../../resource/images/board/board-free-title.png") no-repeat center;
} 

.break {
	clear:left;
}


.title {
	border-bottom: 1px solid #e9e9e9; 
	border-right: 1px solid #e9e9e9; 
	text-align: center;
	text-indent: 0px;
	width: 70px;
	background: #f5f5f5;
	
}

.line {

	float:left;
	height:30px;
	line-height:30px;
	/* width:565px; */
	text-indent:10px; 
	border-bottom: 1px solid #e9e9e9;
	/* border-top: 1px solid #e9e9e9; */
}

/* .text {
	text-weight:bold;
} */

.half {
 	width:205px;
}

.content {
	width:530px;
	padding:10px;
	border-bottom: 1px solid #e9e9e9;
	line-height:1.5;
}

.detail {
	border-top: 2px solid #e9e9e9;
	width: 553px;
}

.space-top-l {
	margin-top:49px;
	margin-left:50px;
}

.full {
	width:480px;
}

</style>
							
<main id="main">
 	<div id="visual"></div>
	<section id="main-content">
		<article class="detail space-top-l">
			<h1 class="hidden">게시물 내용</h1>
			<%-- <table>
				<thead>
					<tr>
						
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>추천수</th>
						<th>조회수</th>
						<th>내용</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						
						<td>${b.title}</td>
						<td>${b.writer}</td>
						<td><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd"/></td>
						<td>${b.recommend}</td>
						<td>${b.hit}</td>
						<td>${b.content}</td>
					</tr>
				</tbody>
			</table> --%>
			
			<dl>
				<dt class="hidden">class="hidden">번호</dt>
				<dd class="hidden">class="hidden">${b.code}</dd>
				<dt class="line title detail-break">제목</dt>
				<dd class="line full">${b.title}</dd>
				<dt class="line title detail-break">작성자</dt>
				<dd class="line half">${b.writer}</dd>
				<dt class="line title">작성일</dt>
				<dd class="line half"><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd"/></dd>
				<dt class="line title detail-break">추천수</dt>
				<dd class="line half">${b.recommend}</dd>
				<dt class="line title">조회수</dt>
				<dd class="line half">${b.hit}</dd>
				<dt class="hidden">내용</dt>
				<dd class="content break">${b.content}</dd>
			</dl>
		</article>
		
		
		<section>
			<h1>첨부파일 목록</h1>
			<dl>
				<c:forEach var="file" items="${list2}">
				<dt>첨부파일 목록</dt>
				<dd class="detail-cell detail-cell-full"><a href="${ctxName}/download/board?file=${file.name}">${file.name}</a></dd>
				</c:forEach>
			</dl>
		</section>
		
		<section>
			<h1>버튼 목록</h1>
			<ul>
				<li><a href="${ctxName}/board/free/freeRecommend?c=${b.code}">추천하기</a></li>
				<li><a href="${ctxName}/board/free/freeEdit?c=${b.code}">수정</a></li>
				<li><a href="${ctxName}/board/free/freeRemove?c=${b.code}">삭제</a></li>
			</ul>
		</section>
		
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
					</tr>
				</thead>
				<tbody>
					<c:forEach var="comment" items="${list}">
					<tr>
						<td>${comment.code}</td>
						<td>${comment.writer}</td>
						<td><fmt:formatDate value="${comment.regDate}" pattern="yyyy-MM-dd"/></td>
						<td>${comment.content}</td>
						<td><a href="${ctxName}/board/free/commentEdit/?c=${comment.code}">수정</a></td>
						<td><a href="${ctxName}/board/free/commentRemove/?c=${comment.code}">삭제</a></td>
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
	</section>
</main>