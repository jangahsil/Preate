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
		<h1>아이디 중복검사</h1>
		<form>
			<fieldset>
				<legend>아이디입력확인</legend>
				<p>신청하신 아이디는 사용가능한 아이디입니다.</p>
				<label>ID사용가능</label> <input type="submit" value="신청하기;" />
			</fieldset>
		</form>
	</section>
</body>
</html>