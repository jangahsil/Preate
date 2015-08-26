<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

<style>

#visual {
	/* border: 1px solid blue; /*여기*/ 
	margin-left: 29px;
	width: 956px;
	height: 62px;
	background: url("../resource/images/portfolio/portfolio-title.png")
		no-repeat center;
} 


/*---------------------------------검색창---------------------------*/

#portfolio-search {	
	margin-left:700px;	
}

/*-------------------------버튼------------------------------------*/

.portfolio-btn-search {
	
	width: 44px;
	height: 24px;
	background: url("../resource/images/portfolio/portfolio-btn-search.png")
		no-repeat center;
}

.portfolio-reg-button {

	margin-left:775px;
	margin-right:15px;
	width:54px;
	height:23px;
	background: url("../resource/images/portfolio/portfolio-btn-reg.png")
			no-repeat center;
	float:left;

}


.portfolio-list-button {
	width:54px;
	height:23px;
	background: url("../resource/images/portfolio/portfolio-btn-list.png")
			no-repeat center;

}

/*------------------------포트폴리오 목록 테이블 부분------------------------------------*/

#portfolio-table table {
	/* width: inherit; */
	width: 956px;
	/* border: 1px solid red; /*여기*/
}

#portfolio-table tr {
    /*float:left옵션을 tr에 준다*/
    float:left;
}

#portfolio-table td {
 /* 	border: 1px solid green;여기 */
	width: 276px;
	display: inline-block;
	padding: 20px;
	text-align: center;
	height: 220px;
	line-height: 20px;
	background: url("../resource/images/portfolio/portfolio-contents-image.png")
		no-repeat center;
}

/*---------------------------------페이지-------------------------------------*/
#pager{
	margin-top: 0px;
	text-align: center;
	font-size: 13px;
	
}
#pager div{
	display: inline-block;
}
#pager li{
	float: left;
    width: 20px;
    height: 20px;
    line-height: 20px;
    text-align: center;
}
#pager li:FIRST-CHILD a{
	font-weight: bold;
}
/*----------------------------------------------------------------------------*/
#portfolio-table img
{
	/* margin-top:10px; */
	width:180px;
	height:140px;
}

</style>

<script type="text/javascript">

function showDialog(url) {
    //장막 div 생성
    var screen = document.createElement("div"); 
    //dlg를 bady에 추가 ; 
    screen.style.position = "fixed";   //스크롤 내려도 장막 전체 유지.
    screen.style.left = "0px";
    screen.style.top = "0px";
    screen.style.width = "100%";
    screen.style.height = "100%";
    screen.style.background = "black";
    screen.style.opacity = "0.5";

    document.body.appendChild(screen);

    //반응형 웹-브라우저의 크기 구하기
    var docwidth = window.innerWidth;
    var docheight = window.innerHeight;
       //alert(docheight);//899
    var width = 700;
    var height = 500;

    var left = (docwidth - width) / 2;
       //alert(left)
    var top = (docheight - height) / 2;
       //alert(top);//290

 
       
    //팝업창 div 생성
    var view = document.createElement("div");

    //view를 bady에 추가 ; 
    view.style.position = "fixed";   //스크롤 내려도 view 유지
    view.style.left = left + "px";
    view.style.top = top + "px";
    view.style.width = width + "px";   //inherit로 수정?
    view.style.height = height + "px";   //inherit로 수정?
    view.style.background = "rgb(255,255,0)";
    //view.style.opacity="0.5";
    view.style.textAlign = "center";   //가로 중앙 정렬
    //view.style.lineHeight = height+"px";   //세로 중앙 정렬
    

    document.body.appendChild(view);
    
    //15.08.18   
/*-------------view에 로딩이미지 출력-------------------*/
     /*   var imgLoader = document.createElement("img");
       imgLoader.src = "../images/ajax-loader.gif";
    
       view.appendChild(imgLoader); */
       
    
/* ---------닫기 버튼 만들기------------------------------------ */
        var btnClose = document.createElement("input");
        btnClose.type= "button";
        btnClose.value = "X";
        btnClose.style.position = "absolute";
        btnClose.style.right = "-10px";
        btnClose.style.top = "-10px";
        btnClose.onclick = function(){
           document.body.removeChild(view);   //viewWrapper로 수정
           document.body.removeChild(screen);
        };
        //view.appendChild(btnClose);
        
        //document.body.appendChild(btnClose);//viewWrapper
    
/* -----------동기형 요청------------------------------------------ */
  
  //엑티브x 로드
     /* var request = new window.XMLHttpRequest();
     //var xhr = new ActiveXObject("Microsoft.XMLHTTP");//익스플로저 7.0 이하 과거버전
     request.open("GET","partial1.jsp", false);//비동기가 기본. false 쓰면 동기형
     request.send(null);
     
     alert(request.responseText); */

     
/* ---------비동기형 요쳥-------------------------------------------- */ 
    var request = new XMLHttpRequest();
     //var xhr = new ActiveXObject("Microsoft.XMLHTTP");//익스플로저 7.0 이하 과거버전
     //request.open("GET","partial1.jsp", true);//비동기가 기본(true). false 쓰면 동기형
    
     
     request.onreadystatechange = function(){
        if(request.readyState == 4)   {//데이터 뿌리기. 작업 완료되면 실행
           //alert(request.responseText);
           //view.removeChild(imgLoader);
           view.innerHTML = request.responseText;   //html 연결. +=는 추가(html을 꺼내서 누적), =는 기존거 대신 그냥
           view.appendChild(btnClose);
        }
        
     }
     
     request.open("GET",url, true);   //showDialog 함수 url 쓴거
     request.send(null);
/*  -------------여기까지 비동기 요청---------------------------------- */


}

 window.addEventListener("load", function() {
    
    var btnShowDlg = document.querySelector("#portfolio-table img");
    //for(var i=0; i< btnShowDlg.length; i++){
    /* [i] */btnShowDlg.onclick = function() {
    	
    	var imgAlt = btnShowDlg.alt;
    	//alert(btnShowDlg.src);
       showDialog("portfolioImage?c=" + imgAlt);   //바디도 없는 빈 조각파일 만들기(view에 나올 내용)
    };
    

  
 });

  
</script>


	
	<main id="main">
		<div id="visual"></div>
		<section id="main-content">
			<h1 class="hidden">포트폴리오</h1>
	
			<section class="search-form">
				<h1 class="hidden">포트폴리오 분야 검색</h1>
				<form>
					<fieldset>
						<!-- <legend class=hidden>분야정보</legend>
						<label class="hidden">검색필드</label> 
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
						</select>  -->
						<label class="hidden">검색어</label> 
						<input id="portfolio-search" type="text" /> 
						<input class="button portfolio-btn-search" type="submit" value="검색" />
					</fieldset>
				</form>
			</section>
	
			<section id="portfolio-table">
				<h1 class="hidden">포트폴리오 목록</h1>
				
				<table>
					<thead class="hidden">
						<tr class="hidden">
							<th class="hidden">이미지</th>
							<th class="hidden">제 목</th>
							<th class="hidden">작성일</th>
							<th class="hidden">작성자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" items="${list}">
						<tr>
						<td>
							<%-- <a href="portfolioImage?c=${p.code}">  --%>
							<img alt="${p.code}" src="${ctxName}/resource/upload/portfolio/${p.portImage}"/><!-- </a> -->
							<%-- <img id="port-image" src="${ctxName}/resource/upload/portfolio/${p.fileName}"/></a> --%>
							<br>
							<a href="portfolioImage?c=${p.code}">${p.title}</a>
							<br>
							<fmt:formatDate value="${p.regDate}" pattern="yyyy-MM-dd"/>
							<br>
							<a href="portfolioDetail?c=${p.code}&mid=${p.writer}&writer=${p.writer}">${p.writerName}</a>
							<%-- <a href="portfolioDetail?c=${p.code}&mid=${p.writer}&writer=${p.writer}">${p.writerName}</a> --%>
						</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</section>
	
			<section id="button-list">
				<h1 class="hidden">버튼 목록</h1>
				<ul>
					<!-- <li><input type="submit" value="등록" /></li> 
					<li><input type="submit" value="목록" /></li>-->
					<li><a href="portfolioReg" class="button portfolio-reg-button">등록</a></li>
					<li><a href="portfolio" class="button portfolio-list-button">목록</a></li>
				
				</ul>
			</section>
			
			<nav id="pager">
				<div>
				<h1 class="hidden">페이지</h1>
				<ul>
					<li><a href="">1</a></li>
					<li><a href="">2</a></li>
					<li><a href="">3</a></li>
					<li><a href="">4</a></li>
					<li><a href="">5</a></li>
				</ul>
				</div>
			</nav>
			
		</section>
		</main>
 

 
