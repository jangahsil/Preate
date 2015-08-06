<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

<main>
	<section>
		<section>
			<h1>게시물 작성</h1>
			<form action="${ctxName}/board/free/freeEdit?c=${b.code}" method="post" enctype="multipart/form-data">
				<dl>
					<dt>옵션</dt>
					<dd><input type="checkbox" value="HTML" name="HTML"/></dd>
				</dl>
				<dl>
					<dt>제목</dt>
					<dd><input name="title" type="text" value="${b.title}"/></dd>
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
					<a href="freeBoard">취소</a>
				</div>
			</form>
		</section>
	</section>
</main>