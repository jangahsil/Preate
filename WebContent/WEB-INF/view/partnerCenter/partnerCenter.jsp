<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />

<style>

#visual {
	margin-left: 29px;
	width: 956px;
	height: 62px;
	background: url("${ctxName}/resource/images/project/project-title.png")
		no-repeat center;
}

.partnerCenter-search {
	margin-left:700px;
}

.partnerCenter-btn-search{
	width: 54px;
	height: 25px;
	background: url("${ctxName}/resource/images/partnerCenter/partnerCenter-btn-search.png")
		no-repeat center;
}

/*--------------partnerCenter 테이블 부분----------*/


#partnerCenter-table{

	/* border: 1px solid blue; */
	width:800px;
	height:600px;
}

#partnerCenter-table table {

	width: 956px;
	/* border: 1px solid red; */
}

#partnerCenter-table tr {
    /*float:left옵션을 tr에 준다*/
    float:left;
}

#partnerCenter-table td {
 	/* border: 1px solid green; */
	width: 955px;
	height: 170px;
	display: inline-block;
	margin-top:20px;

}


/* ----------------페이지 부분--------------------- */
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

#test{


}

/*-----------------제휴센터이미지 부분---------*/

#partnerCenter-table img { 

	width:955px;
	height:170px;

}

</style>

<main id="main">
<div id="visual"></div>
<section id="main-content">
	<h1 class="hidden">제휴센터 검색</h1>
	

		 <section>
			<h1 class="hidden">제휴센터 검색 폼</h1>
			<form>
				<fieldset>
					<label class="hidden">검색어</label> 
					<input class="partnerCenter-search" type="text" /> <input class="button partnerCenter-btn-search" type="submit" value="검색"/>
				</fieldset>
			</form>
		</section> 

		<section id="partnerCenter-table">
			<h1 class="hidden">제휴센터 목록</h1>
			<table>
				<thead class="hidden">
					<tr class="hidden">
						<th class="hidden">제휴센터이미지1</th>
						<th class="hidden">제휴센터이미지2</th>
						<th class="hidden">제휴센터이미지3</th>
					</tr>
				</thead>
				<tbody>
				<tr>
					<td><a href="http://www.newlecture.com"><img src="${ctxName}/resource/images/partnerCenter/partnerCenter-image.PNG"/></a></td>
					<td><a href="http://www.newlecture.com"><img src="${ctxName}/resource/images/partnerCenter/partnerCenter-image.PNG"></a></td>
					<td><a href="http://www.newlecture.com"><img src="${ctxName}/resource/images/partnerCenter/partnerCenter-image.PNG"></a></td>
				</tr>
				
				

			</tbody>
			</table>
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

