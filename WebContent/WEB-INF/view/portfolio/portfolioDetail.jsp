<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

	<main>
	<section>
		<h1>포트폴리오</h1>
		
		<section>
			<h1>작성자 소개</h1>
			<p>${p.writerIntro}</p>
			<dl>
				<dt>작성자이미지</dt>
				<dd><img src="../images/.png" alt="images"></dd>
				<dt>이름</dt>
				<dd>${p.writerName}</dd>
				<dt>현재상태</dt>
				<dd>${p.state}</dd>
				<dt>경력년수</dt>
				<dd>${p.writerCareer}</dd>
			</dl>
		</section>
		
		<section>
			<h1>사용 툴</h1>
			<dl>
			<dt>언어</dt>
			<c:forEach var="f" items="${list}">
			<dd>${f.fieldName}</dd>
			</c:forEach>
			</dl>
		</section>

		<section>
			<h1>전체 포트폴리오 이미지</h1>
			<table>
					<thead>
						<tr>
							<th>포트폴리오 제목</th>
							<th>이미지</th>				
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