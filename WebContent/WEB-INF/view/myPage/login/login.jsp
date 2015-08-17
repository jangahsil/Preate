<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<c:set var="ctxName" value="${pageContext.request.contextPath}" />
<style>
#visual {
	margin-left: 29px;
	width: 956px;
	height: 62px;
	background: white;
}

#login-field {
	margin-left: 240px;
	margin-right: auto;
	padding-top: 180px;
	width: 459px;
	height: 299px;
	background: url("${ctxName}/resource/images/myPage/login/login-bg.png")
		no-repeat center;
} 

#login-field div {
	padding-left: 82px;
	padding-right: 10px;
}

#login-field a {
	padding-right: 12px;
}

#login-form {
	float: left;
	margin-top: 15px;
}

#serve-login-menu{
	margin-top : 10px;
	margin-left: 41px;
}

#submit-login{
	margin-top: 13px;
}

.button {
	display: inline-block;
	border: 0;
	text-indent: -100px;
	overflow: hidden;
}

.button:hover {
	cursor: pointer;
}

.idfind-button {
	width: 53px;
	height: 13px;
	background:
		url("${ctxName}/resource/images/myPage/login/login-idfind.png")
		no-repeat center;
}

.passwordfind-button {
	width: 63px;
	height: 13px;
	background:
		url("${ctxName}/resource/images/myPage/login/login-passwordfind.png")
		no-repeat center;
}

.join-join-button {
	width: 42px;
	height: 13px;
	background:
		url("${ctxName}/resource/images/myPage/login/login-join.png")
		no-repeat center;
}

.login-login-button {
	width: 63px;
	height: 69px;
	background: url("${ctxName}/resource/images/myPage/login/login-btn.png")
		no-repeat center;
	float: left;
}

.label{
	width: 80px;
	height: 20px;
	padding-right: 10px;
	font-size: 10pt;
	font-weight: bold;
}

.id-label{
	padding-left: 15px;
}


.text{
	width: 150px;
	height: 25px;
}

#login {
	width: 956px;
	height: 700px;
}

#pwd{
	margin-left:2px;
}

#input-pwd{

}

</style>


<!DOCTYPE html>
<html>
<head>

<script type="text/javascript">
addEventListener("load",function(){
	var btn =document.querySelector("#login-btn");
	
	btn.onclick=function(){
		var id = document.querySelector("#input-id");
		var pwd=document.querySelector("#input-pwd");
		var blank = /[\s]/g;
		var special=/[`~!@#$%^&*|\\\'\";:\/?]/gi;
		
		//공백 체크
		if(id.value == "" || pwd.value == ""){
			alert("아이디와 패스워드를 입력 하세요");
		return false;
	};
		if (blank.test(id.value) == true) {
			alert("아이디에 공백이 있습니다");
			return false;
		}
		;
		if (blank.test(pwd.value) == true) {
			alert("패스워드에 공백이 있습니다");
			return false;
		}
		;
		//특수문자 입력 체크

		if(special.test(id.value) == true){
			alert("아이디에 특수문자는 입력할수없습니다.");
			return false;
		}

		
	};
	
});

	
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<main id="main">
<section id="main-content">
	<div id="visual"></div>

	<h1 class="hidden">로그인</h1>
	<form action="${ctxName}/j_spring_security_check" method="post">
		<section id="login">
			<fieldset id="login-field">
				<div id="login-form">
					<label class="label id-label">아이디</label> 
					<input id="input-id"name="j_username" class="text" /> 
					<br>
					<br> 
					<label id= "pwd" class="label password-label">비밀번호</label> 
					<input id="input-pwd"name="j_password" type="password" class="text" />
				</div>
				<div id="submit-login" class="clearfix">
					<input id="login-btn" type="submit" class="button login-login-button" value="로그인" />
				</div>
				<div id="serve-login-menu">
					<br> 
					<a href="" class="button idfind-button">아이디찾기</a> 
					<a href="" class="button passwordfind-button">비밀번호찾기</a> 
					<a href="" class="button join-join-button">회원가입</a>
				</div>

			</fieldset>
		</section>
	</form>
</section>
</main>
