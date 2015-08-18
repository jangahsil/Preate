<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
addEventListener("load",function(){

	
var title = null;
var content = null;
var btnCheck = document.querySelector("#btn-check");
btnCheck.onclick = function(){
title = document.getElementById("text");
content = document.getElementById("text2");

if (title.value == "") {
	alert("제목을 입력하세요");
	return false;
}
;

if (content.value == "") {
	alert("내용을 입력하세요");
	return false;
};
};

	
});
</script>

<div>
	<form action="" method="post">
		<ul>
			<li>제목</li>
			<li><input id="text" type="text" name="title"></li>
			<li>내용</li>
			<li><input id="text2" type="text" name="content"></li>
			<li><input id="btn-check" type="submit" value="전송"></li>
		</ul>
	</form>
</div>
