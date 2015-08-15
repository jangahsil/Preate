<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<head>
	<link href="${ctxName}/resource/css/board/developerRegStyle.css" rel="stylesheet"	type="text/css" />
</head>
		<main id="main">
			<section id="main-content">
				<div id="visual"></div>
				<section id="board">
					<h1>게시물 작성</h1>
					<form method="post" enctype="multipart/form-data">
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
							<input type="submit" class="button btn-write" name="btn" value="작성" />
							<a href="developerBoard" class="button btn-cancel">취소</a>
						</div>
					</form>
				</section>
			</section>
		</main>
		<!-- 
<main>
	<section>
		<section>
			<h1>게시물 작성</h1>
			<form method="post" enctype="multipart/form-data">
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
					<dt>제목</dt>
					<dd>
						<input name="title" type="text" />
					</dd>
				</dl>
				<dl>
					<dt>
						<label>소스코드</label>
					</dt>
					<dd>
						<input type="color" name="code"/>
					</dd>
				</dl>
				<dl>
					<dt>내용</dt>
					<dd>
						<textarea cols="40" rows="20" name="content"></textarea>
					</dd>
				</dl>
				<dl>
					<dt>첨부파일</dt>
					<dd>
						<input name="file" type="file" />
					</dd>
				</dl>
				<div>
					<input type="submit" name="btn" value="저장" />
					<a href="developerBoard">취소</a>
				</div>
			</form>
		</section>
	</section>
</main> -->