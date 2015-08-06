<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

	<main>
		<section>
			<h1>포트폴리오</h1>
	
			<section>
				<h1>포트폴리오 분야 검색</h1>
				<form>
					<fieldset>
						<legend>분야정보</legend>
						<label>검색필드</label> 
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
						</select> 
						<label>검색어</label> 
						<input type="text" /> 
						<input type="submit" value="검색" />
					</fieldset>
				</form>
			</section>
	
			<section>
				<h1>포트폴리오 목록</h1>
				
				<table>
					<thead>
						<tr>
							<th>이미지</th>
							<th>제 목</th>
							<th>작성일</th>
							<th>작성자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${list}">
						<tr>
							<td><a href="portfolioImage"><img src="../images/.png" alt="images"></a></td>
							<td><a href="portfolioImage">${p.title}</a></td>
							<td>
								<fmt:formatDate value="${p.regDate}" pattern="yyyy-MM-dd"/>
							</td>
							<td><a href="portfolioDetail?c=${p.code}&mid=${p.writer}">${p.writerName}</a></td> 
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</section>
	
			<nav>
				<h1>페이지</h1>
				<ul>
					<li><a href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li><a href="">5</a></li>
					<li><a href="">6</a></li>
					<li><a href="">7</a></li>
					<li><a href="">8</a></li>
					<li><a href="">9</a></li>
					<li><a href="">10</a></li>
				</ul>
			</nav>
			
			<section>
				<h1>버튼 목록</h1>
				<ul>
					<!-- <li><input type="submit" value="등록" /></li> 
					<li><input type="submit" value="목록" /></li>-->
					<li><a href="portfolioReg">등록</a></li>
					<li><a href="portfolio">목록</a></li>
				</ul>
			</section>
			
		</section>
		</main>
 