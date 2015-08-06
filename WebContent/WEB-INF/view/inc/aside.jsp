<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
 
			<aside id="aside">
				<h1 class="hidden">메인메뉴</h1>
				<nav>
					<h1 class="button">
						<a href="" class="button">프로젝트 등록</a>
					</h1>
					<h1 class="button">
						<a href="${ctxName}/project/projectSearch">프로젝트 검색</a>
					</h1>
					<h1 class="button">
						<a href="">포트폴리오</a>
					</h1>
					<h1 class="button">
						<a href="">커뮤니티</a>
					</h1>
					<ul class="hidden">
						<li><a href="${ctxName}/board/free/freeBoard">자유게시판</a></li>
						<li><a href="${ctxName}/board/developer/developerBoard">개발자
								게시판</a></li>
						<li><a href="${ctxName}/board/designer/designerBoard">디자이너
								게시판</a></li>
					</ul>
					<h1 class="button">
						<a href="">마이 프로젝트</a>
					</h1>
					<h1 class="button">
						<a href="">제휴센터 소개</a>
					</h1>
					<h1 class="button">
						<a href="">고객문의</a>
					</h1>
					<h1 class="button">
						<a href="">관리자 메뉴</a>
					</h1>
				</nav>
			</aside>