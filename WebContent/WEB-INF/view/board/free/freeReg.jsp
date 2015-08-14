<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<style>

/* ------------------------------ title image 부분 ------------------------------ */

#visual{
	margin-left: 29px;
	width: 956px;
	height: 62px;
	background: url("../../resource/images/board/board-free-title.png") no-repeat center;
}

/* ------------------------------ 메인 공통 ------------------------------ */

#main-content section{
	font:  13px;
}

#main-content dl dt{
	margin-top: 10px;
	text-align: left;
	font-size: 13px;
}

#main-content h1{
	font-size: 20px;
	text-align: center;
}

/* ------------------------------ 제목 부분 ------------------------------ */

#main-content input[type="text"]{
	padding-left: 5px;
	margin-top: 10px;
	width: 956px;
	height: 25px;
	line-height: 25px;
	border: 1px solid #bdbdbd;
}

/* ------------------------------ 첨부파일 부분 ------------------------------ */

.btn-find{
	margin-top: 10px;
	width: 200px;
	height: 23px;
	line-height: 23px;
	border: none;
}

/* ------------------------------ 내용 부분 ------------------------------ */

#main-content textarea{
	padding-left: 5px;
	margin-top: 10px;
	width: 956px;
	height: 300px;
	line-height: 25px;
	border: 1px solid #bdbdbd;
}

/* ------------------------------ 버튼 부분 ------------------------------ */

#main-content div {
	text-align: center;
}

.btn-write{
	margin-top: 30px;
	margin-left: 20px;
	display: inline-block;
	width: 54px;
	height: 23px;
	background: url("../../resource/images/board/btn-write.png") no-repeat center;
}

.btn-cancel{
	margin-top: 30px;
	margin-left: 20px;
	display: inline-block;
	width: 54px;
	height: 23px;
	background: url("../../resource/images/board/btn-cancel.png") no-repeat center;
}

</style>
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