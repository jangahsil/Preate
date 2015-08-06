<%@page import="com.jass.preate.vo.Project"%>
<%@page import="java.util.List"%>
<%@page import="com.jass.preate.dao.mybatis.MyBatisProjectDao"%>
<%@page import="com.jass.preate.dao.ProjectDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
	ProjectDao projectDao = new MyBatisProjectDao();
	List<Project> list = projectDao.getProjects(1);
%>
	<main>
	<section>
		<h1>프로젝트 검색</h1>

		<section>
			<h1>프로젝트 검색 폼</h1>
			<form>
				<fieldset>
					<legend>프로젝트 검색</legend>
					<label>프로젝트 검색</label> <input type="text" /> <input type="submit"
						value="검색" />
				</fieldset>
			</form>
		</section>


		<nav>
			<h1>프로젝트 검색 분류</h1>
			<ul>
				<li><a href="">전체</a></li>
				<li><a href="">개발</a></li>
				<li><a href="">디자인</a></li>
			</ul>
		</nav>

		<section>
			<h1>프로젝트 목록</h1>
			<table>
				<thead>
					<tr>
						<th>스크랩</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>모집분야</th>
						<th>남은날짜</th>
						<th>모집여부</th>
						<th>모집 상세분야</th>
						<th>예상기간</th>
						<th>예상비용</th>
						<th>지역</th>
						<th>내용</th>
						<th>지원자</th>

					</tr>
				</thead>
				<tbody>
				
				<% for(int i=0; i<1; i++){ %>
					<tr>
						<td>X</td>
						<td><a href="ProjectSearchDetail.html">${n.title}</a></td>
						<td>${n.writer}</td>
						<td>${n.classification}</td>
						<td>${n.deadline}</td>
						<td>${n.planningState}</td>
						<td>개발>웹</td>
						<td>30일</td>
						<td>${budget}원</td>
						<td>${n.area1_1},${n.area2_1}</td>
						<td>${n.content}</td>
						<td>
							<form>
								<select>
									<option>+3명지원</option>
									<option>지원자1</option>
									<option>지원자2</option>
									<option>지원자3</option>
								</select>

							</form>
						</td>
					<tr>
					<% } %>
				</tbody>
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
		
		
	</section>
	</main>
	<footer>
		<section></section>
	</footer>

</body>
</html>