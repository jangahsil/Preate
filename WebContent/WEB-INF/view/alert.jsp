<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
addEventListener("load",function(){
	
	var btnCancel = document.getElementById("cancel");
	var btnYes = document.getElementById("yes");
	btnCancel.onclick=function(){
		close();
	};
	btnYes.onclick=function(){
		opener.close();
		close();
	};
	
})
</script>
<style type="text/css">
.button {
	border: 0;
	display: inline-block;
	text-indent: -200px;
	overflow: hidden;
	white-space: nowrap;
}
#yes{
	width:56px;
	height:25px;
	background: url("resource/images/btn-yes.png")no-repeat ;
}
#cancel{
	width:56px;
	height: 25px;
	background: url("resource/images/btn-no.png") no-repeat;
}
p{
padding-left: 20px;
padding-top: 10px;
}
body input{
	margin-left: 40px;
}
#cancel{
margin-left: 20px;}

.button:HOVER {
	cursor: pointer;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>작성을 중단 하시겠습니까?</p>
	<input class="button" id="yes" type="button" value="예">
	<input class="button" id="cancel" type="button" value="아니오">
</body>
</html>