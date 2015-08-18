<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="../resource/css/management/title.css" rel="stylesheet" type="text/css" />
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<script type="text/javascript">
	function AnswerDialog(url) {
		var docwidth = window.innerWidth;
		var docheight = window.innerHeight;

		var width = 700;
		var height = 500;

		var left = (docwidth - width) / 2;
		var top = (docheight - height) / 2;

		var screen = document.createElement("div");

		screen.style.position = "fixed";
		screen.style.background = "black";
		screen.style.width = "100%";
		screen.style.height = "100%";
		screen.style.left = "0";
		screen.style.top = "0";
		screen.style.opacity = "0.3";

		document.body.appendChild(screen);

		var dialog = document.createElement("div");

		dialog.style.position = "fixed";
		dialog.style.background = "rgb(255,255,255)";
		dialog.style.width = "500px";
		dialog.style.height = "300px";
		dialog.style.left = left + "px";
		dialog.style.top = top + "px";

		document.body.appendChild(dialog);

		var view = document.createElement("div");

		view.style.background = "rgb(255,255,255)";

		dialog.appendChild(view);

		var imgLoader = document.createElement("img");
		imgLoader.src = "images/ajax-loader.gif";

		dialog.appendChild(imgLoader);

		var btnClose = document.createElement("input");
		btnClose.type = "button";
		btnClose.value = "x";
		btnClose.style.position = "absolute";
		btnClose.style.right = "0px";
		btnClose.style.top = "0px";

		btnClose.onclick = function() {

			document.body.removeChild(screen);
			document.body.removeChild(dialog);
		};
		
		dialog.appendChild(btnClose);

		var request = new window.XMLHttpRequest();

		request.open("GET", url, true);
		request.send(null);

		request.onreadystatechange = function() {
			if (request.readyState == 4) {

				dialog.removeChild(imgLoader);
				view.innerHTML = request.responseText;
			};
		}

	}

	addEventListener("load", function() {
		
		var btnAnswer = document.querySelectorAll(".btn-answer");

		for(var i =0 ; i < btnAnswer.length ; i++){
			
		btnAnswer[i].onclick = function() {
			
			AnswerDialog("answer");
			
		};
		};

	});
</script>
<script type="text/javascript" src="../js/modernizr.js"></script>

<style>
</style>

<main id="main">
<section id="main-content">
	<h1 class="hidden">고객문의관리창</h1>
	<p class="manage-title"></p>
	<div id="contents">
		<p>관리</p>
		<p>원하는 관리 메뉴를 선택하세요</p>

		<nav>
			<h1 class="hidden">관리 메뉴</h1>
			<ul class="ma-menu clearfix">
				<li><a href="${ctxName}/management/memberManagement">회원관리</a></li>
				<li><a href="${ctxName}/management/noticeManagement">공지 관리</a></li>
				<li class="select">고객문의</a></li>
				<li>제휴업체 관리</li>
			</ul>
		</nav>

		<section>
			<h1 class="hidden">검색폼</h1>
			<form class="s-form clearfix" method="post">
				<select name="field">
					<option value="title">제목</option>
					<option value="writer">작성자</option>
				</select>
				<p class="hidden">문의목록</p>
				<label>검색</label><input type="text" name="query"><input type="submit" value="검색" />
			</form>
		</section>

		<article>
			<h1 class="hidden">문의 목록폼</h1>
			<table>

				<thead>
					<tr>
						<th>체박</th>
						<th>번호</th>
						<th>제목</th>
						<th>작성자</th>
						<th>날짜</th>
						<th>악숀</th>
				</thead>

				<tbody>

					<c:forEach var="n" items="${list}">
						<tr>
							<td><input type="checkbox"></td>
							<td>${n.code}</td>
							<td><a href=customerServiceDetail?c=${n.code}> ${n.title}</a></td>
							<td>${n.writer}</td>
							<td><fmt:formatDate value="${n.regDate}" pattern="yyyy-MM-dd" /></td>
							<td>

								<form method="post" action="customerDelete?c=${n.code}">

									<!-- 팝업창 업데이트 coming soon -->
									<input class="btn-answer" type="button" value="답변" /> <input type="submit" value="삭제" />
								</form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- </form> -->
		</article>

		<section>
			<h3 class="hidden">페이지</h3>
			<ul class="pager">
				<li><a href="customerService?page=1">1</a></li>
				<li><a href="customerService?page=2">2</a></li>
				<li><a href="customerService?page=3">3</a></li>
				<li><a href="customerService?page=4">4</a></li>
				<li><a href="customerService?page=5">5</a></li>
			</ul>
		</section>
	</div>
</section>
</main>
</div>
</div>
</body>
</html>