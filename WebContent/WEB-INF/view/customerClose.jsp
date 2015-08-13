<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
	var win=null;
	addEventListener("load",function(){
	var btn=document.getElementById("close");
	resizeTo(100,150);
		btn.onclick=function(){
			close();
		}
	})

</script>
<style>
#close{
	position: absolute;
	bottom: 10px;
	left: 80px;
}	
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p> 전송완료!!</p>
	<input id="close" type="button" value="창닫기">
</body>
</html>