<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
 


<style>

#detail-image img {
	width:800px;
	height:600px;
}

.hidden {
	display: none;
}

</style>


	<main>
	<section>
		<h1 class="hidden">포트폴리오</h1>
		
		<section id="detail-image">
			<h1 class="hidden">포트폴리오 상세 이미지</h1>
			<p class="hidden">이미지가 아직안떠요ㅠㅠ</p>
			<dl>
				<dt class="hidden">이미지</dt>
				<dd>
					<img src="${ctxName}/resource/upload/portfolio/${p.portImage}">
				</dd>
			</dl>
		</section>
	</section>
	</main>