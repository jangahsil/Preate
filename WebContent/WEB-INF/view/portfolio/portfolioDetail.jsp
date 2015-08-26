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

#writer-info {

	margin-top: 20px;
	background: url("../resource/images/portfolio/portfolio-title-writerinform.png")
		no-repeat center;
	margin-left:29px;
	width: 956px;
	height: 31px;
}


#introduce-title {
	width: 956px;
	margin-left:200px;
	/* text-align:center; */
	height: 50px;
	line-height: 50px;
	
	/* border : 1px solid black; */
}

#introduce {
	margin-left: 200px;
	width: 956px;
	/* border : 1px solid red; */
	/* margin-left: 29px; */
	height: 200px;
}


#writer-image {
	
	border :1px solid blue;
	width: 150px;
	height: 150px;
	float:left;

}

#writer-intro{
	margin-left: 150px;
	width:200px;
	height:150px;
	/* border : 1px solid red; */
	float:left;
}

#writer-intro dt {
	margin-top: 5px;
	
}

#writer-intro dd{
	margin-top: 5px;
}

#writer-intro dt:FIRST-CHILD {

	/* border :1px solid blue; */
	height:15px;
	background: url("../resource/images/portfolio/portfolio-contents-name.png")
		no-repeat;

}

#writer-intro dt:FIRST-CHILD+dd+dt {
	/* border :1px solid blue; */
	height:15px;
	background: url("../resource/images/portfolio/portfolio-contents-currentstate.png")
		no-repeat;

}

#writer-intro dt:FIRST-CHILD+dd+dt+dd+dt {
	height: 15px;
	/* border :1px solid blue; */
	background: url("../resource/images/portfolio/portfolio-contents-career.png")
		no-repeat;

}

#tools dt:FIRST-CHILD {
	/* border :1px solid blue; */
	height:15px;
	background: url("../resource/images/portfolio/portfolio-contents-usedtool.png")
		no-repeat;
}

#tools {
	width: 200px;
	height: 150px;
	/* border :1px solid green; */
	float:left;
}

#tools dd{
	margin-top:5px;
}

#total-image {
	margin-top: 20px;
	margin-left: 29px;
	background: url("../resource/images/portfolio/portfolio-title-portfolio.png")
		no-repeat center;
	/* margin-left:29px; */
	width: 956px;
	height: 31px;
}

#total-portfolio-list {
	
	margin-left:60px;
} 

#total-portfolio-list img {
	width:150px;
	height:150px;
}


#total-portfolio-list dl{
	margin:5px;
	width:956;
	float:left;
}

#total-portfolio-list dt{
	text-align:center;
	border:1px solid blue;
	width:200px;

}

#total-portfolio-list dd {
	border:1px solid blue;
	width:200px;
	height:150px;
	
}


.text-move {
	text-indent: -999px;
}




</style>
	<main id="main">
	<div id="visual"></div>
	<section id="main-content">
		<h1 class="hidden">포트폴리오</h1>
		
		<div id="writer-info"></div>
		
		<section id=introduce-title>
			<h1 class="hidden">작성자 소개</h1>
			<p>${p.writerIntro}</p>
		</section>
		
		<section id=introduce>
			<div class="center">
				<dl id="writer-image">
					<dt class="hidden">작성자이미지</dt>
					<dd><img src="../images/.png" alt="images"></dd>
				</dl>
				
				<dl id="writer-intro">
					<dt class="text-move">이름</dt>
					<dd>${p.writerName}</dd>
					<dt class="text-move">현재상태</dt>
					<dd>${p.state}</dd>
					<dt class="text-move">경력년수</dt>
					<dd>${p.writerCareer}</dd>
				</dl>
				
				<dl id="tools">
					<dt class="text-move">사용 툴</dt>
					<c:forEach var="f" items="${list}">
					<dd>${f.fieldName}</dd>
					</c:forEach>
				</dl>
			</div>
		</section>
		
		<div id="total-image"></div>
		<section id="total-portfolio-list">
			
			<h1 class="hidden">전체 포트폴리오</h1>
				<dl>
					<c:forEach var="p" items="${list2}">
					<dt>${p.title}</dt>
					<dd id="portfolio-image"><img src="${ctxName}/resource/upload/portfolio/${p.portImage}"></dd>
					</c:forEach>
					
					<%-- <a href="portfolioTotalImage?c=${p.code}"></a> --%>
				</dl>
				
			<%-- <table>
					<thead>
						<tr>
							<th>포트폴리오 제목</th>
							<th>이미지</th>				
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${list2}">
						<tr>
							<td>뷰티아리아갤러리</td>
							<td></td>
						</tr>
						</c:forEach>
					</tbody>
			</table> --%>
		</section>
	</section> 
	</main>	