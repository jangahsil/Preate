
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

	<main>
	<section>
	
	<table border="2px", bordercolor="black"> 
		<tr>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		</tr>
		
		<tr>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		</tr>
		
		
		<tr>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		</tr>
		
		<tr>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		</tr>
		
		<tr>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		<th>1</th>
		</tr>
		
		</table>
		
		<h1 class = "search-id">아이디 찾기</h1>
		<form>
			<fieldset>
				<legend>관심 프로젝트</legend>
				<tr>
				<th>프로젝트 제목</th>
				</tr>
				
				<tr>
				<th>제출일자</th>
				</tr>
				
				<tr>
				<th>도구</th>
				</tr>
				
			<c:forEach var="n" items="${list}">
					<tr>
						<td>${n.title}</td>
						<td><a href="projectSearchDetail.jsp?c=${n.code}">${n.title}</a></td>
						<td>${n.endDate}</td>
						<%-- <td><fmt:formatDate value="${n.regDate}" pattern="YYYY-MM-dd"/></td> --%>
						<td>${n.content}</td>
					</tr>
			</c:forEach>
				<br> <input type="submit" value="더 자세히 보기" />
			</fieldset>
			
			<fieldset>
				<legend>관심 프로젝트</legend>
				<tr>
				<th>프로젝트 제목</th>
				</tr>
				
				
				<tr>
				<th>제출일자</th>
				</tr>
				
				<tr>
				<th>도구</th>
				</tr>
				
				<br> <input type="submit" value="더 자세히 보기" />
			</fieldset>
			
			<fieldset>
				<legend>진행중인 프로젝트</legend>
				<tr>
				<th>프로젝트 제목</th>
				</tr>
				
				<tr>
				<th>제출일자</th>
				</tr>
				
				<tr>
				<th>도구</th>
				</tr>
				
				<br> <input type="submit" value="더 자세히 보기" />
			</fieldset>
			
			<fieldset>
				<legend>종료된 프로젝트</legend>
				<tr>
				<th>프로젝트 제목</th>
				</tr>
				
				<tr>
				<th>제출일자</th>
				</tr>
				
				<tr>
				<th>도구</th>
				</tr>
				
				<tr>
				<th>포트폴리오</th>
				</tr>
				
				
				
				
				<br> <input type="submit" value="더 자세히 보기" />
				<br> <input type="submit" value="등록" />
			</fieldset>
		</form>
	</section>
	</main>
	
	
