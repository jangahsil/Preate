<%@ page language="java" contentType="text/html; charset=UTF-8"
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
				<h1><a href="${ctxName}/project/projectSearch">프로젝트 검색</a></h1>
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
				<h1>자유게시판</h1>
				
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
								<td><a href="freeDetail?c=${b.code}">${b.title}[${b.cmtCount}]</a></td>
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
						<li><a href="freeReg">글쓰기</a></li>
						<li><a href="freeBoard">목록</a></li>
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
	</body>
</html>