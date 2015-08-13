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
	
	margin-left:320px;
}

#portfolio-title dt{
	width: 100px;
	float:left;
	/* border: 1px solid blue; */
	background: url("../resource/images/portfolio/portfolio-contents-subject.png")
		no-repeat;
}

#portfolio-end-date dt{
	width: 100px;
	float:left;
	/* border: 1px solid blue; */
	background: url("../resource/images/portfolio/portfolio-contents-projectenddate.png")
		no-repeat;
}
#portfolio-state dt{
	width: 100px;
	float:left;
	/* border: 1px solid blue; */
}
#portfolio-image dt{
	width: 100px;
	float:left;
	/* border: 1px solid blue; */
}


.text-move{
	text-indent: -999px;
}

dd {
 	margin-top:20px;
}

/*------------------버튼----------------------*/


/*-------------------------------------------*/

</style>
  
	<main id="main">
		<div id="visual"></div>
			<section id="main-content">
				<h1 class="hidden">포트폴리오 등록</h1>
			
				<section id="portfolio-reg-form">
					<h1 class="hidden">포트폴리오 등록폼</h1>
					<form action="" method="post" enctype="multipart/form-data">
						<fieldset>
							<legend class="hidden">포트폴리오 정보 입력창</legend>
							
							<dl id="portfolio-title">
								<dt class="text-move">제목</dt>
								<dd>
									<input name="title" type="text"/>
								</dd>
							</dl>
							
							<dl id="portfolio-end-date">
								<dt class="text-move">프로젝트종료일</dt>
								<dd>
									<input name="end" type="datetime" onfocus="this.value=''; return true" value="0000-00-00"  maxlength="10"/>
								</dd>
							</dl>
							
							<dl id="portfolio-state">
								<dt>현재상태</dt>
								<dd>
									<select name="state">
										<option>개인</option>
										<option>팀</option>
									</select>
								</dd>
							</dl>
							
							<dl id="portfolio-image">	
						
								<dt>포트폴리오 이미지</dt>
								<dd>
									<input name="file" type="file" />
								</dd>
							</dl>
							
							<div>
								<input type="submit" value="등록" />
								<input type="submit" value="취소" />
									<a class="btn-cancel button" href="notice">취소</a>
							</div>
						</fieldset>
					</form>
				</section>
			</section>
	</main>
    