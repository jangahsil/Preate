<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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


/*---------------------------------검색창---------------------------*/
#portfolio-search {	
	margin-left:700px;	
}
/*-------------------------버튼------------------------------------*/

.portfolio-btn-search {
	
	width: 44px;
	height: 24px;
	background: url("../resource/images/portfolio/portfolio-btn-search.png")
		no-repeat center;
}

.portfolio-reg-button {

	margin-left:775px;
	margin-right:15px;
	width:54px;
	height:23px;
	background: url("../resource/images/portfolio/portfolio-btn-reg.png")
			no-repeat center;
	float:left;

}


.portfolio-list-button {
	width:54px;
	height:23px;
	background: url("../resource/images/portfolio/portfolio-btn-list.png")
			no-repeat center;

}

/*-------------------------------------------------------------------*/

/*------------------------포트폴리오 목록 테이블 부분------------------------------------*/
#portfolio-table table {
	/* width: inherit; */
	width: 956px;
	/* border: 1px solid red; /*여기*/
}

#portfolio-table tr {
    /*float:left옵션을 tr에 준다*/
    float:left;
}

#portfolio-table td {
 /* 	border: 1px solid green;여기 */
	width: 276px;
	display: inline-block;
	padding: 20px;
	text-align: center;
	height: 220px;
	line-height: 20px;
	background: url("../resource/images/portfolio/portfolio-contents-image.png")
		no-repeat center;
}
/*---------------------------------------------------------------------------*/

/*---------------------------------페이지-------------------------------------*/
#pager{
	margin-top: 0px;
	text-align: center;
	font-size: 13px;
	
}
#pager div{
	display: inline-block;
}
#pager li{
	float: left;
    width: 20px;
    height: 20px;
    line-height: 20px;
    text-align: center;
}
#pager li:FIRST-CHILD a{
	font-weight: bold;
}
/*----------------------------------------------------------------------------*/


</style>

	<main id="main">
		<div id="visual"></div>
		<section id="main-content">
			<h1 class="hidden">포트폴리오</h1>
	
			<section class="search-form">
				<h1 class="hidden">포트폴리오 분야 검색</h1>
				<form>
					<fieldset>
						<!-- <legend class=hidden>분야정보</legend>
						<label class="hidden">검색필드</label> 
						<select>
							<option>IOS</option>
							<option>Android</option>
							<option>웹</option>
							<option>모바일웹</option>
							<option>응용프로그램</option>
							<option>일러스트</option>
							<option>동영상</option>
							<option>플래시</option>
							<option>게임</option>
							<option>프레임워크</option>
							<option>라이브러리</option>
							<option>모듈</option>
							<option>플러그인</option>
							<option>API</option>
							<option>GIS</option>
							<option>기타</option>
						</select>  -->
						<label class="hidden">검색어</label> 
						<input id="portfolio-search" type="text" /> 
						<input class="button portfolio-btn-search" type="submit" value="검색" />
					</fieldset>
				</form>
			</section>
	
			<section id="portfolio-table">
				<h1 class="hidden">포트폴리오 목록</h1>
				
				<table>
					<thead class="hidden">
						<tr class="hidden">
							<th class="hidden">이미지</th>
							<th class="hidden">제 목</th>
							<th class="hidden">작성일</th>
							<th class="hidden">작성자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${list}">
						<tr>
						<td><br>
							<a id=image href="portfolioImage">
							<img src="../images/.png" alt="images"></a>
							<br><br><br><br><br><br>
							<a href="portfolioImage">${p.title}</a>
							<br>
							<fmt:formatDate value="${p.regDate}" pattern="yyyy-MM-dd"/>
							<br>
							<a href="portfolioDetail?c=${p.code}&mid=${p.writer}">${p.writerName}</a>
						</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</section>
	
			<section id="button-list">
				<h1 class="hidden">버튼 목록</h1>
				<ul>
					<!-- <li><input type="submit" value="등록" /></li> 
					<li><input type="submit" value="목록" /></li>-->
					<li><a href="portfolioReg" class="button portfolio-reg-button">등록</a></li>
					<li><a href="portfolio" class="button portfolio-list-button">목록</a></li>
				
				</ul>
			</section>
			
			<nav id="pager">
				<div>
				<h1 class="hidden">페이지</h1>
				<ul>
					<li><a href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li><a href="">5</a></li>
				</ul>
				</div>
			</nav>
			
		</section>
		</main>
 
