<%@page import="com.jass.preate.dao.MemberDao"%>
<%@page import="com.jass.preate.dao.mybatis.MyBatisMemberDao"%>
<%@page import="com.jass.preate.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDao memberDao = new MyBatisMemberDao();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>preate</title>
</head>
<body>
	<section>
		<h1>웹 페이지 메시지</h1>
		<form>
			<fieldset>
				<legend>아이디입력요청<%%></legend>
				<p>먼저 아이디를 입력하세요</p>
				<label>ID입력요청</label> <input type="submit" value="확인" />
			</fieldset>
		</form>
	</section>
</body>
</html>