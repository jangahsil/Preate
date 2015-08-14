<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<head>
	<link href="${ctxName}/resource/css/board/freeRegStyle.css" rel="stylesheet"	type="text/css" />
</head>
		<main id="main">
			<section id="main-content">
				<div id="visual"></div>
				<section id="board">
					<h1>게시물 작성</h1>
					<form method="post" enctype="multipart/form-data">
						<dl>
							<dt>제목</dt>
							<dd><input name="title" type="text"/></dd>
						</dl>
						<dl>
							<dt>내용</dt>
							<dd><textarea cols="40" rows="20" name="content"></textarea></dd>
						</dl>
						<dl>
							<dt>첨부파일</dt>
							<dd><input name="file" type="file" class="button btn-find"/></dd>
						</dl>
						<div>
							<input type="submit" class="button btn-write" name="btn" value="작성" /><a href="freeBoard"></a>
							<input type="submit" class="button btn-cancel" name="btn" value="취소" /><a href="freeBoard"></a>
						</div>
					</form>
				</section>
			</section>
		</main>