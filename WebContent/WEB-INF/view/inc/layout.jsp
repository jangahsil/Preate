<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<link href="${ctxName}/resource/css/style.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="../js/modernizr.js"></script>
<meta charset="UTF-8">
<title>preate</title>
<style>
</style>
</head>
<body>
	<!-- 헤더영역 -->
	<tiles:insertAttribute name="header" />

	<div id="body">
		<div class="content-wrapper">
			<!-- 메뉴부분 -->
			<tiles:insertAttribute name="aside" />

			<!-- 바디부분 -->
			<tiles:insertAttribute name="body" />
		</div>
	</div>

	<!-- 푸터부분 -->
	<tiles:insertAttribute name="footer" />
</body>
</html>