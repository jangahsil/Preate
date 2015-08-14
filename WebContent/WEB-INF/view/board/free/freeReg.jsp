<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<style>

	#visual{
	margin-left: 29px;
	width: 956px;
	height: 62px;
	background: url("../../resource/images/board//board-free-title.png") no-repeat center;
	}

</style>
<main>
	<section id="main-content">
		<div id="visual"></div>
		<section>
			<h1>게시물 작성</h1>
			<form method="post" enctype="multipart/form-data">
				<dl>
					<dt>옵션</dt>
					<dd><input type="checkbox" value="HTML" name="HTML"/></dd>
				</dl>
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
					<dd><input name="file" type="file"/></dd>
				</dl>
				<div>
					<input type="submit" name="btn" value="저장"/>
					<a href="freeBoard">취소</a>
				</div>
			</form>
		</section>
	</section>
</main>