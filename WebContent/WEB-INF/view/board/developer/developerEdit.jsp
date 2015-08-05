<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
				<section>
					<h1>게시물 작성</h1>
					<form action="${ctxName}/board/developer/developerEdit?c=${b.code}" method="post" enctype="multipart/form-data">
						<dl>
							<dt>카테고리</dt>
							<dd>
								<select name="category">
									<option value="">전체보기</option>
									<option>이론</option>
									<option>툴</option>
									<option>팁/강좌</option>
									<option>질문/답변</option>
								</select>
							</dd>
						</dl>
						<dl>
							<dt>옵션</dt>
							<dd><input type="checkbox" value="HTML" name="HTML"/></dd>
							<dd><input type="checkbox" value="소스코드" name="source"/></dd>
						</dl>
						<dl>
							<dt>제목</dt>
							<dd><input name="title" type="text" value="${b.title}"/></dd>
						</dl>
						<dl>
							<dt><label>소스코드</label></dt>
							<dd><input type="color" name="code"/></dd>
						</dl>
						<dl>
							<dt>내용</dt>
							<dd><textarea cols="40" rows="20" name="content">${b.content}</textarea></dd>
						</dl>
						<dl>
							<dt>첨부파일</dt>
							<c:forEach var="f" items="${list}">
							<dd><input name="file" type="file" value="${f.name}"/></dd>
							</c:forEach>
						</dl>
						<div>
							<input type="submit" value="저장"/>
							<a href="developerBoard">취소</a>
						</div>
					</form>
				</section>
			</section>
		</main>
	</body>
</html>