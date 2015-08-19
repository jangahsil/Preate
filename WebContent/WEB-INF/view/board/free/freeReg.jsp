<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<head>
<link href="${ctxName}/resource/css/board/freeRegStyle.css" rel="stylesheet"	type="text/css" />
<script type="text/javascript">

window.addEventListener("load", function(){
	var btnFile = document.querySelector("#board img");
	
	btnFile.onclick = function(){
		// 과거 방식 
		var event = document.createEvent("MouseEvent");
		event.initEvent("click", true, true);
		
		var file = document.querySelector("#f");
		file.dispatchEvent(event);
	};
});

</script>
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
							<dt class="hidden">첨부파일</dt>
							<dd><input name="file" type="file"  id="f" class="button btn-find"/>
							<img src="../../resource/images/board/btn-find.png"/>
							</dd>		
						</dl>
						<div>
							<input type="submit" class="button btn-write" name="btn" value="작성" />
							<a href="freeBoard" class="button btn-cancel">취소</a>
						</div>
					</form>
				</section>
			</section>
		</main>