<%@page import="com.jass.preate.dao.MemberDao"%>
<%@page import="com.jass.preate.dao.mybatis.MyBatisMemberDao"%>
<%@page import="com.jass.preate.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>preate</title>
</head>
<body>
	<section>
		<h1>고객문의 페이지</h1>
		<form>
			<fieldset>
				<legend>제목칸</legend>
				<label>제목</label><input type="text" />
				
				<legend>이메일칸</legend>
				<label>이메일</label><input type="text" />
				
				<legend>내용칸</legend>
				<label>내용</label><input type="text" />
				
				<legend>등록버튼</legend>
				<label>등록</label><input type="submit" value="확인" />
			</fieldset>
		</form>
	</section>
</body>
</html>