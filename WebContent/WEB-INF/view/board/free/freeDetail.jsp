<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxName" value="${pageContext.request.contextPath}"/>

<style>

#visual {
   /* border: 1px solid blue; */
   margin-left: 29px;
   width: 956px;
   height: 62px;
   background: url("../../resource/images/board/board-free-title.png")
      no-repeat center;
}


.break {
   clear: left;
}

.title {
   border-bottom: 1px solid #e9e9e9;
   border-right: 1px solid #e9e9e9;
   text-align: center;
   /* text-indent: 0px; */
   width: 70px;
   background: #f5f5f5;
}

.attach-title {
   border-bottom: 1px solid #e9e9e9;
   border-right: 1px solid #e9e9e9;
   text-align: center;
   text-indent: 0px;
   width: 90px;
   background: #f5f5f5;
}

.line {

   float: left;
   height: 30px;
   line-height: 30px;
   text-indent: 10px;
   /* text-align:left; */
   /* border-bottom: 1px solid #e9e9e9; */
   /* border-top: 1px solid #e9e9e9; */
   text-weight:bold;
   
}

.bottom-line{
	border-bottom: 1px solid #e9e9e9;	
}

.attach-line {
   float: left;
   height: 20px;
   line-height: 20px;
   text-indent: 10px;
   /* text-align:left; */
   /* border-bottom: 1px solid #e9e9e9; */
   /* border-top: 1px solid #e9e9e9; */
}

/* .text {
   text-weight:bold;
} */
.half {
   width: 205px;
}

.content {
   width: 530px;
   padding: 10px;
   border-bottom: 1px solid #e9e9e9;
   line-height: 1.5;
   border-top: 1px solid #e9e9e9;
   height:200px;
}

.comment-content {
	width: 530px;
   padding: 10px;
   border-bottom: 1px solid #e9e9e9;
   line-height: 1.5;
   border-top: 1px solid #e9e9e9;
}

.detail {
   border-top: 2px solid #e9e9e9;
   width: 553px;
}

.space-top-l {
   margin-top: 49px;
   margin-left: 230px;
}

.full {
   width: 480px;
}

.section-array {
   margin-left: 205px;
   float: left;
}

.dl-array {
   float:left;
}

/*-----------------------------버튼----------------------------*/

.board-btn-recommend {
   
   margin-left:570pX;
   margin-right:10px;
   float:left;
   width:54px;
   height:23px;
   background: url("../../resource/images/board/board-btn-recommend.png")
      no-repeat center;
}



.board-btn-edit {
   margin-right:10px;
   float:left;
   width:54px;
   height:23px;
   background: url("../../resource/images/board/board-btn-edit.png")
      no-repeat center;

}

.board-btn-delete {
   margin-right:10px;
   width:54px;
   height:23px;
   background: url("../../resource/images/board/board-btn-delete.png")
      no-repeat center;

}

.board-btn-submit {
   
   width:54px;
   height:23px;
   background: url("../../resource/images/board/board-btn-submit.png")
      no-repeat center;

}

/*-----------------------------------------------------------*/

/*-----------------댓글목록----------------*/
.array {
 float:left;
 margin-left:400px;
}
/*--------------------------------------*/
</style>
                     
<main id="main">

    <div id="visual"></div>
   <section id="main-content">
      <article class="detail space-top-l">
         <h1 class="hidden">게시물 내용</h1>
         <%-- <table>
            <thead>
               <tr>
                  
                  <th>제목</th>
                  <th>작성자</th>
                  <th>작성일</th>
                  <th>추천수</th>
                  <th>조회수</th>
                  <th>내용</th>
               </tr>
            </thead>
            <tbody>
               <tr>
                  
                  <td>${b.title}</td>
                  <td>${b.writer}</td>
                  <td><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd"/></td>
                  <td>${b.recommend}</td>
                  <td>${b.hit}</td>
                  <td>${b.content}</td>
               </tr>
            </tbody>
         </table> --%>
         
         <dl>
            <dt class="hidden">번호</dt>
            <dd class="hidden">${b.code}</dd>
            <dt class="line title break bottom-line">제목</dt>
            <dd class="line full bottom-line">${b.title}</dd>
            <dt class="line title break bottom-line">작성자</dt>
            <dd class="line half bottom-line">${b.writer}</dd>
            <dt class="line title bottom-line">작성일</dt>
            <dd class="line half bottom-line"><fmt:formatDate value="${b.regDate}" pattern="yyyy-MM-dd"/></dd>
            <dt class="line title break bottom-line">추천수</dt>
            <dd class="line half bottom-line">${b.recommend}</dd>
            <dt class="line title bottom-line">조회수</dt>
            <dd class="line half bottom-line">${b.hit}</dd>
            <dt class="hidden">내용</dt>
            <dd class="content break">${b.content}</dd>
            
         </dl>
      </article>
      
      
      <section class="section-array">
         <h1 class="hidden">첨부파일 목록</h1>
         <dl>
            <c:forEach var="file" items="${list2}">
            <dt class="line attach-title break">첨부파일 목록</dt>
            <dd class="attach-line full break"><a href="${ctxName}/download/board?file=${file.name}">${file.name}</a></dd>
            </c:forEach>
         </dl>
      </section>
      
      <section>
         <h1 class="hidden">게시글 버튼 목록</h1>
         <ul>
            <li><a href="${ctxName}/board/free/freeRecommend?c=${b.code}" class="button board-btn-recommend">추천하기</a></li>
            <li><a href="${ctxName}/board/free/freeEdit?c=${b.code}" class="button board-btn-edit">수정</a></li>
            <li><a href="${ctxName}/board/free/freeRemove?c=${b.code}" class="button board-btn-delete">삭제</a></li>
         </ul>
      </section>
      
      <article class="detail space-top-l">
         <h1 class="hidden">댓글</h1>
         <%-- <table>
            <thead>
               <tr>
                  <th class="hidden">번호</th>
                  <th>작성자</th>
                  <th>작성일</th>
                  <th>내용</th>
                  <th class="hidden">수정</th>
                  <th class="hidden">삭제</th>
               </tr>
            </thead>
            <tbody>
               <c:forEach var="comment" items="${list}">
               <tr>
                  <td class="hidden">${comment.code}</td>
                  <td>${comment.writer}</td>
                  <td><fmt:formatDate value="${comment.regDate}" pattern="yyyy-MM-dd"/></td>
                  <td>${comment.content}</td>
                  <td><a href="${ctxName}/board/free/commentEdit/?c=${comment.code}">수정</a></td>
                  <td><a href="${ctxName}/board/free/commentRemove/?c=${comment.code}">삭제</a></td>
               </tr>
               </c:forEach>
            </tbody>
         </table> --%>
          
         <dl class="dl-array">
         <c:forEach var="comment" items="${list}">
            <dt class="hidden">번호</dt>
            <dd class="hidden">${comment.code}</dd>
            <dt class="line"></dt>
            <dd class="line half">${comment.writer}</dd>
            <dt class="line"></dt>
            <dd class="line half"><fmt:formatDate value="${comment.regDate}" pattern="yyyy-MM-dd"/></dd>
            <dt class="hidden">내용</dt>
            <dd class="comment-content break dl-array">${comment.content}</dd>
            <dt class="hidden">수정</dt>
            <dd class="full array"><a href="${ctxName}/board/free/commentEdit/?c=${comment.code}">수정</a></dd>
            <dt class="hidden">삭제</dt>
            <dd class="full array"><a href="${ctxName}/board/free/commentRemove/?c=${comment.code}">삭제</a></dd> 
         </c:forEach>
         </dl> 
         
      </article>
      
      <section class="section-array">
         <h1 class="hidden">댓글 입력</h1>
         <ul>
            <li>작성자 : ABC</li>
            <li>
               <form method="post">
                  <fieldset>
                     <legend class="hidden">댓글 내용 입력</legend>
                     <label>내용</label>
                     <input type="text" name="content"/>
                     <input class="button board-btn-submit" type="submit" value="입력"/>
                  </fieldset>
               </form>
            </li>
         </ul>
      </section>
   </section> 
</main>
