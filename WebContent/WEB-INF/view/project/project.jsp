<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />

<style>

/* ----------------------------- 비쥬얼 상단  ----------------------------------*/
#visual {
	margin-left: 29px;
	width: 956px;
	height: 62px;
	background: url("${ctxName}/resource/images/project/project-title.png")
		no-repeat center;
}


/* ----------------------------- 프로젝트 검색  ----------------------------------*/

#project-search{
	margin-left: 30px;
	width: 952px;
	height: 900px;
	border: 1px solid red;
}


#project-search-classify {
	margin-top: 50px;
	float: left;
}


#real-search-form input:FIRST-CHILD {
	width: 150px;
	height: 17px;
}

#real-search-form input[type="submit"] {
	width: 54px;
	height: 24px;
	background: url("${ctxName}/resource/images/project/btn-search.png")
		no-repeat center;
}

#project-search-option {
	margin-top: 4px;
	margin-left: 600px;
	margin-bottom: 40px;
	float: left;
}

#project-insearch-form {
	float: left;
}

.button {
	display: inline-block;
	border: 0;
	text-indent: -100px;
	overflow: hidden;
}



/* -----------------------------프로젝트 목록  ----------------------------------*/
#project-list{
	margin-left: 46px;
	margin-top: 88px;
}

#project-detail-list{
	width: 800px;
	border: 1px solid purple;
}

#subject{
	width: 800px;
	height: 23px;
	background: #eeeeee;
	padding-top: 8px;
	text-indent: 20px;
	float: left;
}

#content1{
	width: 596px;
	height: 50px;
	border-top: 1px solid #eeeeee;
	border-left: 1px solid #eeeeee;
	float:left;
	background: red;
}

#content2{
	width: 596px;
	height: 50px;
	border-left: 1px solid #eeeeee;
	background: yellow;
	float: left;
}

#content3{
	width: 596px;
	height: 50px;
	border-left: 1px solid #eeeeee;
	border-bottom: 1px solid #eeeeee;
	background: green;
	float: left;
	margin-bottom: 30px;
}

#img-box{
	border: 1px solid #eeeeee;
	width: 201px;
	height:150px;
	background: blue;
	float: right;
}

/* ---------------------------content1--------------------------- */
#content1 li:FIRST-CHILD {
	width: 38px;
	height: 14px;
	background: url("${ctxName}/resource/images/project/project-contents-writer.png")
		no-repeat center;
	float:left;
}

#content1 li:FIRST-CHILD+li{
	float:left;
}

#content1 li:FIRST-CHILD+li+li {
	width: 50px;
	height: 14px;
	background: url("${ctxName}/resource/images/project/project-contents-recruitment.png")
	no-repeat center;
	float:left;
}

#content1 li:FIRST-CHILD+li+li+li{
	float:left;
}


#content1 li:FIRST-CHILD+li+li+li+li {
	width: 50px;
	height: 14px;
	background: url("${ctxName}/resource/images/project/project-contents-recruitment.png")
	no-repeat center;
	float:left;
}



/* content2 */
#content2 li:FIRST-CHILD {
	width: 48px;
	height: 14px;
	background: url("${ctxName}/resource/images/project/project-contents-planstate.png")
	no-repeat center;
	float:left;
}

#content2 li:FIRST-CHILD+li{
	float:left;
}

#content2 li:FIRST-CHILD+li+li {
	width: 50px;
	height: 14px;
	background: url("${ctxName}/resource/images/project/project-contents-expecteddate.png")
	no-repeat center;
	float:left;
}

#content2 li:FIRST-CHILD+li+li+li{
	float:left;
}

#content2 li:FIRST-CHILD+li+li+li+li {
	width: 50px;
	height: 14px;
	background: url("${ctxName}/resource/images/project/project-contents-expectbudget.png")
	no-repeat center;
	float:left;
}




/* content3 */
#content3 li:FIRST-CHILD {
	width: 30px;
	height: 14px;
	background: url("${ctxName}/resource/images/project/project-contents-area.png")
	no-repeat center;
	float: left;
}

#content3 li:FIRST-CHILD+li{
	float:left;
}

#content3 li:FIRST-CHILD+li+li {
	width: 24px;
	height: 14px;
	background: url("${ctxName}/resource/images/project/project-contents-cont.png")
	no-repeat center;
	float:left;
}

</style>




<main id="main">
<section id="main-content">
	<div id="visual" overflow="visible"></div>

	<h1 class="hidden">프로젝트 검색</h1>
	<div id="project-search">

		<nav id="project-search-classify" class="clearfix">
			<h1 class="hidden">프로젝트 검색 분류</h1>
			<select id="project-search-option">
				<option>전체</option>
				<option>개발</option>
				<option>디자인</option>

			</select>

			<h1 class="hidden">프로젝트 검색 폼</h1>
			<form id="project-insearch-form">
				<fieldset id="real-search-form">
					<input type="text" /> <input type="submit" value="검색"
						class="button" />
				</fieldset>
			</form>
		</nav>

		<section id="project-list">
			<h1 class="hidden">프로젝트 목록</h1>
			<div id="project-detail-list">
				<c:forEach var="p" items="${list}">
					<ul id="subject">
						<li><a href="">★</a> &nbsp;&nbsp;&nbsp; 
						<a href="projectDetail?c=${p.code}">${p.title}</a>
						</li>
					</ul>
								
					<ul id="content1">
						<li></li>
						<li>${p.writerName}</li>
						<li></li>
						<li>${p.classification}</li>
						<li></li>
						<li><fmt:formatDate value="${p.deadline}"
								pattern="yyyy-MM-dd" /></li>
					</ul>
					
					<ul id="img-box">
						
					</ul>
					
					<ul id="content2">
						<li></li>
						<li>${p.planningState}</li>
						<li></li>
						<li>30일</li>
						<li></li>
						<li>${p.budget}원</li>
					</ul>
					
					<ul id="content3">
						<li></li>
						<li> ${p.area1_1}${p.area1_2}</li>
						<li></li>
						<li> ${p.content}</li>
<%-- 						<form>
							<select>
								<option>${p.joinCount}명지원</option>
								<c:forEach var="j" items="${p.joinRequest}">
									<option>${j.mid}</option>
								</c:forEach>
							</select>
						</form> --%>
					</ul>
				</c:forEach>
			</div>
			<!-- 수정끝 -->

			<table id="project-table">
				<!-- 			<thead>
				<tr>
					<th>제목</th>
					<th>스크랩</th>
					<th>번호</th>
					<th>작성자</th>
					<th>모집분야</th>
					<th>남은날짜</th>
					<th>기획상태</th>
					<th>예상기간</th>
					<th>예상비용</th>
					<th>지역1</th>
					<th>지역2</th>
					<th>내용</th>
					<th>지원자</th>
				</tr>
			</thead> -->
				<%-- <tbody>
				<c:forEach var="p" items="${list}">
					<tr>
						<td><a href="projectDetail?c=${p.code}">${p.title}</a></td>
						<td>스크랩 true</td>
						<td>번호 &nbsp;&nbsp; ${p.code}
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						작성자 ${p.writerName}
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						모집분야 ${p.classification}</td>
 						<td>작성자 ${p.writerName}</td>
						<td>남은날짜 <fmt:formatDate value="${p.deadline}"
								pattern="yyyy-MM-dd" /></td>
						<td>기획상태 ${p.planningState}</td>
						<td>예상기간 30일</td>
						<td>예상비용 ${p.budget}원</td>
						<td>지역1 ${p.area1_1}${p.area1_2}</td>
						<td>지역2 ${p.area2_1}${p.area2_2}</td>
						<td>내용 ${p.content}</td>
						<td>
							<form>
								<select>
									<option>지원자 ${p.joinCount}명지원</option>
									<c:forEach var="j" items="${p.joinRequest}">
										<option>${j.mid}</option>
									</c:forEach>
								</select>
							</form>
						</td>
					<tr>
				</c:forEach>
			</tbody> --%>
			</table>
		</section>

<!-- 		<section>
			<h1>필요기술</h1>
			<table>
				<thead>
					<tr>
						<th>필요기술</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>php</td>
					</tr>
					<tr>
						<td>javascript</td>
					</tr>
					<tr>
						<td>HTML</td>
					</tr>
				</tbody>
			</table>
		</section> -->
	</div>
</section>
</main>
