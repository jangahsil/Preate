<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<header>
			<h1><a href="">Preate</a></h1>
			
			<section>
				<h1>머릿말</h1>
				<nav>
					<h1>회원메뉴</h1>
					<ul>
						<li><a href="">로그인</a></li>
						<li><a href="">회원가입</a></li>
						<li><a href="">마이페이지</a></li>
					</ul>
				</nav>
			</section>
		</header>
		
		<aside>
			<h1>메인메뉴</h1>
			<nav>
				<h1><a href="">프로젝트 등록</a></h1>
				<h1><a href="${ctxName}/project/project">프로젝트 검색</a></h1>
				<h1><a href="">포트폴리오</a></h1>
				<h1><a href="">커뮤니티</a></h1>
				<ul>
					<li><a href="${ctxName}/board/free/freeBoard">자유게시판</a></li>
					<li><a href="${ctxName}/board/developer/developerBoard">개발자 게시판</a></li>
					<li><a href="${ctxName}/board/designer/designerBoard">디자이너 게시판</a></li>
				</ul>
				<h1><a href="">마이프로젝트</a></h1>
				<h1><a href="">제휴센터 소개</a></h1>
				<h1><a href="">고객문의</a></h1>
				<h1><a href="">관리</a></h1>
			</nav>
		</aside>
		
		<main>
			<section>
				<article>
					<h1>게시물 내용</h1>
					<table>
						<thead>
							<tr>
								<th>코드</th>
								<th>제목</th>
								<th>카테고리</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>추천수</th>
								<th>조회수</th>
								<th>내용</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${b.code}</td>
								<td>${b.title}</td>
								<td>${b.category}</td>
								<td>${b.writer}</td>
								<td><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd"/></td>
								<td>${b.recommend}</td>
								<td>${b.hit}</td>
								<td>${b.content}</td>
							</tr>
						</tbody>
					</table>
				</article>
				
				<section>				
					<h1>그림판</h1>
					<form>
						<fieldset>
							<legend>그림판</legend>
							<label>그림판</label>
							<input type="color"/>
						</fieldset>
					</form>
				</section>
				
				<section>
					<h1>첨부파일 목록</h1>
					<ul>
						<c:forEach var="file" items="${list2}">
						<li><a href="${ctxName}/download/board?file=${file.name}">${file.name}</a></li>
						</c:forEach>
					</ul>
				</section>
				
				<section>
					<h1>버튼 목록</h1>
					<ul>
						<li><a href="${ctxName}/board/designer/designerRecommend?c=${b.code}">추천하기</a></li>
						<li><a href="${ctxName}/board/designer/designerEdit?c=${b.code}">수정</a></li>
						<li><a href="${ctxName}/board/designer/designerRemove?c=${b.code}">삭제</a></li>
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
								<td><a href="${ctxName}/board/designer/commentEdit/?c=${comment.code}">수정</a></td>
								<td><a href="${ctxName}/board/designer/commentRemove/?c=${comment.code}">삭제</a></td>
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
	</body>
</html>