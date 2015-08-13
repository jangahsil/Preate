<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<link href="../resource/css/project/projectReg.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
 addEventListener("load", function() {
		
		var btn = document.getElementById("btn-reg");

		btn.onclick = function() {
			var item = document.getElementById("reg-form")
					.getElementsByTagName("textarea");
			
			var item2 = document.getElementById("data")
					.getElementsByTagName("input");

			for (var i = 0; i < item.length; i++) {
				if (item[i].value == "") {
					alert("다 입력해주세요")
					return false;
				}
				;
			}
			;
		for (var j = 0; j < item2.length; j++) {
				if (item2[j].value== "") {
					alert("다 입력해주세요");
					return false;
				}
				;  
		};
		var radioCheck=document.getElementById("plan-check").getElementsByTagName("input");
		var radioCtn=0;
		for(var i=0; i<radioCheck.length ; i++){
				if(radioCheck[i].checked)
					radioCtn++;
		};
			if(radioCtn != 1){
				alert("기획상태를 선택해주세요");
			return false;
			};
			
		};
	});   
</script>
<script type="text/javascript" src="../js/modernizr.js"></script>

<main id="main">
<section id="main-content">
	<p class="project-title"></p>
	<section>
		<h1 class="hidden">프로젝트 등록</h1>

		<h1 class="hidden">등록 메뉴</h1>
		<form id="content-move" action="" method="post">
			<nav id="reg-form" class="addProject">

				<div class="clearfix">

					<fieldset class="clearfix">
						<label class="text-move button" id="project-title">제목</label>
						<textarea class="input" name="title" maxlength="28"></textarea>
					</fieldset>


					<fieldset class="text-position">
						<label class="text-move button" id="group">모집 구분</label> <select id="float" name="classification" size="10px">
							<option>개발</option>
							<option>디자인</option>
						</select>
					</fieldset>


					<fieldset class="text-position">
						<label class="text-move button" id="total-people">총 인원</label>

						<textarea  class="small-input" name="totalPeople" maxlength="2"></textarea>
						<label class="text-move button" id="myoung"> 명 </label>
					</fieldset>

					<fieldset class="text-position">
						<label class="text-move button" id="need-devel">필요 개발자</label>

						<textarea class="small-input" name="needDeveloper" maxlength="2"></textarea>
						<label class="text-move button" id="myoung"> 명 </label>
					</fieldset>

					<fieldset class="text-position">
						<label id="need-designer" class="text-move button">필요 디자이너</label>
						<textarea class="small-input" name="needDesigner" maxlength="2"></textarea>
						<label class="text-move button" id="myoung"> 명 </label>
					</fieldset>

					<fieldset class="text-position">
						<label id="text-budget" class="text-move button">예산</label>
						<textarea id="budget" name="budget" maxlength="10"></textarea>
						<label class="text-move button" id="won"> 원 </label>
					</fieldset>

					<fieldset class="text-position">
						<label id="text-meeting" class="text-move button">사전 미팅 여부</label> <select name="meeting">
							<option value="true">Y</option>
							<option value="false">N</option>
						</select>
					</fieldset>
				</div>
				<fieldset class="padding">
					<label id="area" class="text-move button">지역</label> <select id="area-se" name="area1_1">
						<option>서울</option>
						<option>경기</option>
						<option>인천</option>
						<option>부산</option>
						<option>대구</option>
						<option>대전</option>
						<option>광주</option>
						<option>울산</option>
						<option>강원</option>
						<option>경남</option>
						<option>경북</option>
						<option>전남</option>
						<option>전북</option>
						<option>충남</option>
						<option>충북</option>
						<option>제주</option>
						<option>세종</option>
					</select>

				</fieldset>
				<fieldset class="padding">
					<label id="detail-address" class="text-move button r-padding">상세주소</label>

					<textarea id="address" name="area1_2" maxlength="25"></textarea>
				</fieldset>
					<div id="data">
				<fieldset class="padding">
					<label id="start-data" class="text-move button r-padding">예상 시작일</label> <input type="datetime" name="start"
						 maxlength="10" />
				</fieldset>

				<fieldset class="padding">
					<label id="end-data" class="text-move button r-padding">모집 마감일</label> <input type="datetime" name="dead"
						 maxlength="10" />
				</fieldset>

				<fieldset class="padding">
					<label id="project-end" class="text-move button r-padding">프로젝트 종료일</label> <input type="datetime" name="end"
						maxlength="10" />
				</fieldset>
				</div>
				<div id="plan-form">
					<p class="text-move padding" id="plan-state">기획상태</p>


					<!------------------------    손보기 ------------------------------------>
					<table>
						<thead>
							<tr>
								<th id="idea"></th>
								<th id="doc"></th>
								<th id="plan"></th>
							</tr>
						</thead>
						<tbody id="plan-check">
							<tr>
								<td><input id="idea-btn" type="radio" name="PlanningState" value="아이디어"> <br>좋은 아이디어가 <br>있습니다
								</td>
								<td><input type="radio" name="PlanningState" value="간단히 정리"><br>필요한 내용들을 <br>간단히 정리하였습니다</td>
								<td><input type="radio" name="PlanningState" value="기획문서존재"><br> 상세한 기획문서가<br>존재 합니다</td>
						</tbody>
					</table>
				</div>
				<dl>
					<dt id="detail-text" class="text-move">세부내용</dt>
					<dd>
						<textarea id="input-detail" name="content"></textarea>
					</dd>
					<dd>
						<input id="btn-reg" class="text-move button" type="submit" value="등록">
					</dd>
					<dd>
						<a class="text-move button" id="cancel" href="${ctxName}/index">취소</a>
					</dd>
				</dl>
			</nav>
		</form>
	</section>
</section>
</main>
</div>
</div>
</body>
</html>