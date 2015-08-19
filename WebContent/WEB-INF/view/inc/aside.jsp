<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<script type="text/javascript">
	var win=null;
	function btnopen(){
		var docWidth=window.innerWidth;
		var docHeight=window.innerHeight;
		win=open("${pageContext.request.contextPath}/customer","고객문의","position=fixed,left=300px,top=300px,width=600px,height=400px");
	}
	addEventListener("load",function(){
		var btn=document.getElementById("customer");
		btn.onclick=btnopen;
	});
</script>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
 
			<aside id="aside">
				<h1 class="hidden">메인메뉴</h1>
				<nav>
					<h1>
						<a href="${ctxName}/project/projectReg" class="button project-reg-button">프로젝트 등록</a>
					</h1>
					<h1>
						<a href="${ctxName}/project/project" class="button project-search-button">프로젝트 검색</a>
					</h1>
					<h1>
						<a href="${ctxName}/portfolio/portfolio" class="button portfolio-button">포트폴리오</a>
					</h1>
					<h1>
						<a href="${ctxName}/board/free/freeBoard" class="button cummunity-button">커뮤니티</a>
					</h1>
					<ul class="hidden">
						<li><a href="${ctxName}/board/free/freeBoard">자유게시판</a></li>
						<li><a href="${ctxName}/board/developer/developerBoard">개발자
								게시판</a></li>
						<li><a href="${ctxName}/board/designer/designerBoard">디자이너
								게시판</a></li>
					</ul>
					<h1>
						<a href="${ctxName}/myPage/Project" class="button my-project-button">마이 프로젝트</a>
					</h1>
					<h1>
						<a href="${ctxName}/partnerCenter/partnerCenter" class="button advertise-button">제휴센터 소개</a>
					</h1>
					<h1>
						<input type="button"  class="button customer-qna-button hidden" id="customer" >
						<p class="hidden">고객문의</p>
					</h1>
					<h1>
						<security:authorize ifAnyGranted="ROLE_ADMIN">
						<a href="${ctxName}/management/memberManagement" 
						class="button management-button">
						관리자 메뉴</a>
						</security:authorize>
					</h1>
				</nav>
			</aside>