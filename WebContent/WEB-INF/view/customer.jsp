<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resource/css/customer/customer.css" rel="stylesheet"
	type="text/css" />
	<script type="text/javascript">
		addEventListener("load",function(){
			
			var btn=document.getElementById("cancel");
			btn.onclick=function(){
					win=open("alert","","width=100px,height=100px");
				};
		});
		
	</script>
<script type="text/javascript" src="../js/modernizr.js"></script>

<title>고객문의</title>
</head>
<body>
<form action="" method="post" name="check">
	<fieldset>
	<label class="title button">제목 </label>
	<input id="text" type="text" name="title">
	</fieldset>
	<div id="content-form">
	<ul>
		<li class="button content" >내용</li>
	<li><textarea id="text" rows="" cols="" name="content"></textarea></li>
	</ul>
	</div>
	<div id="reg-button">
	<input class="button" type="submit" value="작성" />
	<input id="cancel" class="button" type="button" value="취소" />
	</div>
	</form>
	
</body>
</html>