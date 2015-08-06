<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />

	<header id="header">
		<div class="content-wrapper">
			<section>
				<div id="logo">
					<h1 class="button">
						<a href="${ctxName}/index">Preate</a>
					</h1>
				</div>

				<div id="login-area">
					<h1 class="hidden">머릿말</h1>
					<nav id="member-menu">
						<h1 class="hidden">회원메뉴</h1>
						<ul>
							<security:authorize ifNotGranted="ROLE_USER">
							<li><a href="${ctxName}/myPage/login" class="button login-button">로그인</a></li>
							</security:authorize>
							<security:authorize ifAnyGranted="ROLE_USER">
							<li><a href="${ctxName}/j_spring_security_logout"  class="button logout-button">로그아웃</a></li>
							</security:authorize>
							<security:authorize ifNotGranted="ROLE_USER">
							<li><a href="${ctxName}/myPage/join" class="button join-button">회원가입</a></li>
							</security:authorize>
							<li><a href="" class="button mypage-button">마이페이지</a></li>
						</ul>
					</nav>
				</div>
			</section>
		</div>
	</header>