<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script type="text/javascript">

	addEventListener("load",function(){
		
		var btnCheck = document.querySelector("#btn-check");
		
		btnCheck.onclick = function(){
			
				alert("z");
		};
	});

</script>

<div>
	<form action="answer" method="post">
		<ul>
			<li>제목</li>
			<li><input id="text" type="text" name="title"></li>
			<li>내용</li>
			<li><input id="text2" type="text" name="content"></li>
			<li><input id="btn-check"  type="submit" value="전송"></li>
		</ul>
	</form>
</div>
