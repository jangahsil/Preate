<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />

	<header id="header">
		<div class="content-wrapper">
			<section>
				<div id="logo">
					<h1 class="button">
						<a href="">Preate</a>
					</h1>
				</div>

				<div id="login-area">
					<h1 class="hidden">머릿말</h1>
					<nav id="member-menu">
						<h1 class="hidden">회원메뉴</h1>
						<ul>
							<li><a href="${ctxName}/myPage/login"
								class="button login-button">로그인</a></li>
							<li><a href="${ctxName}/myPage/joinBasic"
								class="button join-button">회원가입</a></li>
							<li><a href="" class="button mypage-button">마이페이지</a></li>
						</ul>
					</nav>
				</div>
			</section>
		</div>
	</header>