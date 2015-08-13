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

#project-search{
	margin-left: 30px;
	width: 952px;
	height: 900px;
	border: 1px solid red;
}

#project-search-classify {
	margin-top: 50px;
	margin-bottom: 87px;
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

#project-list{
	margin-left: 46px;
	margin-top: 65px;
}

#project-detail-list ul {
	width: 800px;
	height: 200px;
	border: 1px solid #eeeeee;
}

#project-detail-list li {	
	float: left;
}

#project-detail-list li:FIRST-CHILD {
	width: 800px;
	height: 23px;
	background: #eeeeee;
	padding-top: 8px;
	text-indent: 20px;
}

#project-detail-list li:FIRST-CHILD+li {
	
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
					<ul>
						<li><a href="">★</a> &nbsp;&nbsp;&nbsp; <a
							href="projectDetail?c=${p.code}">${p.title}</a></li>
						<li>번호</li>
						<li>${p.code}</li>
						<li>작성자</li>
						<li>${p.writerName}</li>
						<li>모집분야</li>
						<li>${p.classification}</li>
						<li>남은날짜</li>
						<li><fmt:formatDate value="${p.deadline}"
								pattern="yyyy-MM-dd" /></li>
						<li>기획상태</li>
						<li>${p.planningState}</li>
						<li>예상기간</li>
						<li>30일</li>
						<li>예상비용</li>
						<li>${p.budget}원</li>
						<li>지역1 ${p.area1_1}${p.area1_2}</li>
						<li>지역2 ${p.area2_1}${p.area2_2}</li>
						<li>내용 ${p.content}</li>
						<form>
							<select>
								<option>지원자 ${p.joinCount}명지원</option>
								<c:forEach var="j" items="${p.joinRequest}">
									<option>${j.mid}</option>
								</c:forEach>
							</select>
						</form>
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

		<section>
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
		</section>
	</div>
</section>
</main>
