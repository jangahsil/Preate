<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<header>
			<h1><a href="">Preate</a></h1>
			
			<section>
				<h1>머릿말</h1>
				<nav>
					<h1>회원메뉴</h1>
					<ul>
						<li><a href="">로그인</a></li>
						<li><a href="">회원가입</a></li>
						<li><a href="">마이페이지</a></li>
					</ul>
				</nav>
			</section>
		</header>
		
		<aside>
			<h1>메인메뉴</h1>
			<nav>
				<h1><a href="">프로젝트 등록</a></h1>
				<h1><a href="${ctxName}/project/projectSearch">프로젝트 검색</a></h1>
				<h1><a href="">포트폴리오</a></h1>
				<h1><a href="">커뮤니티</a></h1>
				<ul>
					<li><a href="${ctxName}/board/free/freeBoard">자유게시판</a></li>
					<li><a href="${ctxName}/board/developer/developerBoard">개발자 게시판</a></li>
					<li><a href="${ctxName}/board/designer/designerBoard">디자이너 게시판</a></li>
				</ul>
				<h1><a href="">마이프로젝트</a></h1>
				<h1><a href="">제휴센터 소개</a></h1>
				<h1><a href="">고객문의</a></h1>
				<h1><a href="">관리</a></h1>
			</nav>
		</aside>
		
		<main>
			<section>
				<h1>시작페이지</h1>
				
				<section>
					<h1><a href="project/projectSearch">프로젝트 목록</a></h1>
					<table>
						<thead>
							<tr>
								<th>스크랩</th>
								<th>번호</th>
								<th>제목</th>
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
						</thead>
						<tbody>
							<c:forEach var="p" items="${list}">
							<tr>
								<td>true</td>
								<td>${p.code}</td>
								<td><a href="project/projectDetail?c=${p.code}">${p.title}</a></td>
								<td>${p.writerName}</td>
								<td>${p.classification}</td>
								<td><fmt:formatDate value="${p.deadline}" pattern="yyyy-MM-dd"/></td>
								<td>${p.planningState}</td>
								<td>30일</td>
								<td>${p.budget}원</td>
								<td>${p.area1_1} ${p.area1_2}</td>
								<td>${p.area2_1} ${p.area2_2}</td>
								<td>${p.content}</td>
								<td>
									<form>
										<select>
											<option>${p.joinCount}명지원</option>
											<option>지원자1</option>
											<option>지원자2</option>
											<option>지원자3</option>
										</select>
									</form>
								</td>
							<tr>
							</c:forEach>
						</tbody>
					</table>
				</section>
				
				<section>
					<h1><a href="contest/contest">공모전 목록</a></h1>
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성일</th>
								<th>시작일</th>
								<th>종료일</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="con" items="${list2}">
							<tr>
								<td>${con.code}</td>
								<td><a href="contest/contestDetail?c=${con.code}">${con.title}</a></td>
								<td>${con.writerNick}</td>
								<td><fmt:formatDate value="${con.regDate}" pattern="yyyy-MM-dd"/></td>
								<td><fmt:formatDate value="${con.startDate}" pattern="yyyy-MM-dd"/></td>
								<td><fmt:formatDate value="${con.endDate}" pattern="yyyy-MM-dd"/></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</section>
				
				<section>
					<h1><a href="management/notice">공지사항 목록</a></h1>
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>게시판</th>
								<th>제목</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="n" items="${list3}">
							<tr>
								<td>${n.code}</td>
								<td>${n.boardClassification}</td>
								<td><a href="management/noticeDetail?c=${n.code}">${n.title}</a></td>
								<td>
									<fmt:formatDate value="${n.regDate}" pattern="yyyy-MM-dd"/>
								</td>
								<td>${n.hit}</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</section>
			</section>
		</main>
	</body>
</html>