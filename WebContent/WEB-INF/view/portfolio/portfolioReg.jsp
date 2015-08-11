<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/> 
  
	<main>
	<section>
		<h1>포트폴리오 등록</h1>
		<div class=portfolio-title>
		</div>

		<section>
			<h1>포트폴리오 등록폼</h1>
			<form action="" method="post" enctype="multipart/form-data">
				<fieldset>
					<legend>포트폴리오 정보 입력창</legend>
					
					<dl>
						<dt>제목</dt>
						<dd>
							<input name="title" type="text"/>
						</dd>
					</dl>
					<dl>
						<dt>현재상태</dt>
						<dd>
							<select name="state">
								<option>개인</option>
								<option>팀</option>
							</select>
						</dd>
						<dt>포트폴리오 이미지</dt>
						<dd>
							<input name="file" type="file" />
						</dd>
					</dl>
					<div>
						<input type="submit" value="등록" />
						<input type="submit" value="취소" />
					</div>
				</fieldset>

			</form>
		</section>
	</section>
	</main>
    