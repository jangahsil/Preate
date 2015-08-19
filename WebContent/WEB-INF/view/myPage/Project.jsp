<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<style>
#visual {
	margin-left: 29px;
	width: 956px;
	height: 62px;
	background: url("../resource/images/myPage/mypage-project-title.png")
		no-repeat center;
}

#project-content {
	margin-left: 16px;
	width: 925px;
}

.project-list {
	
}
/* 관심프로젝트 */
#project-attention {
	width: 925px;
	height: 44px;
	background: url("../resource/images/myPage/myprj-title-interest.png")
		no-repeat center;;
}

#attention-table {
	width: 925px;
	height: 200px;
	border: 1px solid green;
}

#attention-table tr {
	float: left;
	margin-left: 30px;
	margin-top: 30px;
}

#attention-table th {
	padding-right: 30px;
}

#project-progress {
	margin-right: 100px;
	width: 925px;
	height: 44px;
	background: url("../resource/images/myPage/myprj-title-progress.png")
		no-repeat center;
}

#progress-table {
	width: 925px;
	height: 200px;
	border: 1px solid green;
}

#progress-table th {
	padding-left: 30px;
}

#project-end {
	
	float: right;
	margin-left: 120px;
	width: 925px;
	height: 44px;
	background: url("../resource/images/myPage/myprj-title-end.png")
		no-repeat center;
	/* border: 1px solid red; */
}

#project-end tr {
	margin-left: 30px;
	margin-top: 30px;
	border: 1px solid red;
	float: left;
}

#end-table {

	width: 925px;
	height: 200px;
	border: 1px solid green;
}

#end-table th {
	padding-left: 30px;
}
</style>


<main id="main">
<section id="main-content">
	<div id="visual"></div>
	<section>
		<div id="project-content">
			<h1 class="project-list"></h1>
			<form>
				<fieldset>
					<legend id="project-attention"></legend>
					<table id="attention-table">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>모집분야</th>
								<th>남은날짜</th>
								<th>기획상태</th>
								<th>예상기간</th>
								<th>예상비용</th>
								<th>지역</th>
								<th>세부 지역</th>
								<th>내용</th>
								<th>지원자</th>

							</tr>
						</thead>
						<tbody>
							<%-- <c:forEach var="n" items="${list}">
				<tr>
					<td>${n.code}</td>
					<td><a href="projectSearchDetail.jsp?c=${n.code}">${n.title}</a></td>
					<td>${n.writer}</td>
					<td>${n.classification }</td>
					<td>${n.endDate}</td>
					<td>${n.planningState}</td>
					<td><fmt:formatDate value="${n.regDate}" pattern="YYYY-MM-dd"/></td>
					<td>${n.budget}</td>
					<td>${n.area1_1}</td>
					<td>${n.area1_2}</td>
					<td>${n.content}</td>
					<td>${n.joinCount}</td>
				</tr>
			</c:forEach> --%>
						</tbody>
					</table>
					<br> <input type="submit" value="더 자세히 보기" />

				</fieldset>

				<fieldset>
					<legend id="project-progress"></legend>

					<table id="progress-table">
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>모집분야</th>
								<th>남은날짜</th>
								<th>기획상태</th>
								<th>예상기간</th>
								<th>예상비용</th>
								<th>지역</th>
								<th>세부 지역</th>
								<th>내용</th>
								<th>지원자</th>

							</tr>
						</thead>
						<tbody>
							<%-- <c:forEach var="n" items="${list}">
				<tr>
					<td>${n.code}</td>
					<td><a href="projectSearchDetail.jsp?c=${n.code}">${n.title}</a></td>
					<td>${n.writer}</td>
					<td>${n.classification }</td>
					<td>${n.endDate}</td>
					<td>${n.planningState}</td>
					<td><fmt:formatDate value="${n.regDate}" pattern="YYYY-MM-dd"/></td>
					<td>${n.budget}</td>
					<td>${n.area1_1}</td>
					<td>${n.area1_2}</td>
					<td>${n.content}</td>
					<td>${n.joinCount}</td>
				</tr>
			</c:forEach> --%>
						</tbody>
					</table>
					<br> <input type="submit" value="더 자세히 보기" />
				</fieldset>

				<fieldset>
					<legend id="project-end"></legend>
					<table id="end-table">
						<tbody>
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>모집분야</th>
								<th>남은날짜</th>
								<th>기획상태</th>
								<th>예상기간</th>
								<th>예상비용</th>
								<th>지역</th>
								<th>세부 지역</th>
								<th>내용</th>
								<th>지원자</th>

							</tr>
						</thead>

						<tbody>
							<c:forEach var="n" items="${list}">
								<tr>
									<%-- <td>${n.code}</td>
					<td><a href="projectSearchDetail.jsp?c=${n.code}">${n.title}</a></td>
					<td>${n.writer}</td>
					<td>${n.classification }</td>
					<td>${n.endDate}</td>
					<td>${n.planningState}</td>
					<td><fmt:formatDate value="${n.regDate}" pattern="YYYY-MM-dd"/></td>
					<td>${n.budget}</td>
					<td>${n.area1_1}</td>
					<td>${n.area1_2}</td>
					<td>${n.content}</td>
					<td>${n.joinCount}</td>
								<td>${n.code}</td>
								<%-- <td>${n.mid}</td> --%>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					</tbody>
					<br> <input type="submit" value="더 자세히 보기" /> <br> <input
						type="submit" value="등록" />
				</fieldset>
			</form>
		</div>
	</section>
</section>
</main>