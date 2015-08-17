<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/> 
<style>
#visual {
	/* border: 1px solid blue; /*여기*/
	margin-left: 29px;
	width: 956px;
	height: 62px;
	background: url("../resource/images/portfolio/portfolio-title.png")
		no-repeat center;
}

#portfolio-reg-form {
	margin-left: 320px;
}

.text-position{
	padding-top:15px;
}

#title {
	
	width:110px;
	height: 15px;
	background: url("../resource/images/portfolio/portfolio-contents-subject.png")
		no-repeat;
}

#endDate {
	width:110px;
	height: 15px;
	background: url("../resource/images/portfolio/portfolio-contents-projectenddate.png")
		no-repeat;
}
	
#state {
	width:110px;
	height: 15px;
	background: url("../resource/images/portfolio/portfolio-contents-currentstate.png")
		no-repeat;
}

#image {
	width:110px;
	height: 15px;
	background: url("../resource/images/portfolio/portfolio-contents-portfolioimg.png")
		no-repeat;
}

.text-move
{
	text-indent:-999px;
}

/*------------------버튼----------------------*/

.protfolio-btn-reg {
	margin-top:50px;
	margin-left:120px;
	width: 54px;
	height: 23px;
	background: url("../resource/images/portfolio/portfolio-btn-reg.png")
		no-repeat;
	float:left;
	
}

.portfolio-btn-cancel {
	margin-top: 50px;
	margin-left: 20px;
	width: 54px;
	height: 23px;
	background: url("../resource/images/portfolio/portfolio-btn-cancel.png")
		no-repeat;

}

/*-------------------------------------------*/
</style>
  
	<main id="main">
		<div id="visual"></div>
			<section id="main-content">
				<h1 class="hidden">포트폴리오 등록</h1>
			
				<section id="portfolio-reg-form">
					<h1 class="hidden">포트폴리오 등록폼</h1>
					<form action="" method="post" enctype="multipart/form-data">
						
						<fieldset class="text-position">
							<legend class="hidden">제목 입력</legend>
							<label class="text-move button" id="title">제목</label>
							<input name="title" type="text"/>
						</fieldset>
						
						<fieldset class="text-position">
							<legend class="hidden">프로젝트종료일입력</legend>
							<label class="text-move button" id="endDate">프로젝트종료일</label>
							<input name="endDate" type="datetime" value="0000-00-00" maxlength="10"/>
						</fieldset>
						
						<fieldset class="text-position">	
							<legend class="hidden">현재상태입력</legend>
							<label class="text-move button" id="state">현재상태</label>
								<select name="state">
									<option>개인</option>
									<option>팀</option>
								</select>
						</fieldset>
						
						<fieldset class="text-position">	
							<legend class="hidden">포트폴리오 이미지첨부</legend>
							<label  class="text-move button" id="image">포트폴리오 이미지</label>
							<input name="imageFile" type="file" />
						</fieldset>
						
						<div>
							<h1 class="hidden">버튼 목록</h1>
							<ul>
						<!-- 	<li><a href="portfolioReg" class="button reg-button">등록</a></li>
							<li><a href="portfolio" class="button list-button">목록</a></li> -->
							<li><input type="submit" value="등록" class="button protfolio-btn-reg" /></li>
							<li><a href="portfolio" class="button portfolio-btn-cancel">취소</a></li>
							</ul>
						</div>
						
					</form>
				</section>
			</section>
	</main>
    