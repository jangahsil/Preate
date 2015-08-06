<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

<main>
	<section>
		<section>
			<h1>게시물 작성</h1>
			<form method="post" enctype="multipart/form-data">
				<dl>
					<dt>제목</dt>
					<dd><input name="title" type="text" value="${con.title}"/></dd>
				</dl>
				<dl>
					<dt>시작일</dt>
					<dd><input name="start" type="datetime" value="${con.startDate}"/></dd>
				</dl>
				<dl>
					<dt>종료일</dt>
					<dd><input name="end" type="datetime" value="${con.endDate}"/></dd>
				</dl>
				<dl>
					<dt>첨부파일</dt>
					<dd><input name="file" type="file"/></dd>
				</dl>
				<dl>
					<dt>내용</dt>
					<dd><textarea cols="40" rows="20" name="content">${con.content}</textarea></dd>
				</dl>
				<div>
					<input type="submit" value="저장"/>
					<a href="contest">취소</a>
				</div>
			</form>
		</section>
	</section>
</main>