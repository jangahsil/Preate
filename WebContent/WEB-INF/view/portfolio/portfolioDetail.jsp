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

#introduce-title{
	width: 956px;
	padding-left:29px;
	text-align:center;
	line-height: 50px;
	height: 50px;
	border : 1px solid black;
}

#introduce {
	
	width: 956px;
	/* border : 1px solid red; */
	/* margin-left: 29px; */
	height: 200px;
}

.center {
	margin:0 auto;
}

#writer-image{
	border :1px solid blue;
	width: 200px;
	height: 150px;
	float:left;

}

#writer-intro{
	/* padding-left: 50px; */
	
	width:300px;
	height:150px;
	border : 1px solid red;
	float:left;
}

#tools {
	width: 300px;
	height: 150px;
	border :1px solid green;
	float:left;

}


</style>


	<main id="main">
	<div id="visual"></div>
	<section id="main-content">
		<h1 class="hidden">포트폴리오</h1>
		
		<section id=introduce-title>
			<h1 class="hidden">작성자 소개</h1>
			<p>${p.writerIntro}</p>
		</section>
		
		<section id=introduce>
			<div class="center">
				<dl id="writer-image">
					<dt class="hidden">작성자이미지</dt>
					<dd><img src="../images/.png" alt="images" width=150 height=100></dd>
				</dl>
				
				<dl id="writer-intro">
					<dt>이름</dt>
					<dd>${p.writerName}</dd>
					<br><br>
					<dt>현재상태</dt>
					<dd>${p.state}</dd>
					<br><br>
					<dt>경력년수</dt>
					<dd>${p.writerCareer}</dd>
				</dl>
				
				<dl id="tools">
					<dt>사용 툴</dt>
					<br>
					<c:forEach var="f" items="${list}">
					<dd>${f.fieldName}</dd>
					</c:forEach>
				</dl>
			</div>
			
		</section>

		<section id=totalPortfolio>
			<h1>전체 포트폴리오</h1>
			<table>
					<thead>
						<tr>
							<th class="hidden">포트폴리오 제목</th>
							<th class="hidden">이미지</th>				
						</tr>
					</thead>
					<tbody>
						<%-- <c:forEach var="p" items="${list2}"> --%>
						<tr>
							<td>뷰티아리아갤러리</td>
							<!--  //해당 작성자가 등록한 포트폴리오 전체를 보여줘야함!-->
							<td><a href="portfolioTotalImage?c=${p.code}" ><img src="../images/.png"  alt="images"></a></td>
						</tr>
						<%-- </c:forEach> --%>
					</tbody>
			</table>
		</section>
	</section>
	</main>	