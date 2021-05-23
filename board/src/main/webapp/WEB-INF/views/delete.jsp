<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="delete_pro" method="post">
		<h2>아이디와 비밀번호를 입력해주세요</h2>
		<!-- 아이디  : <input id="registuser" name="registuser" type="text"><br/> -->
		비밀번호 <input id="password" name="password" type="password">
		<%-- <input type="hidden" id="status" name="status" value=<%=status %>>
		<input type="hidden" id="seq" name="seq" value="<%=seq %>">  --%>
		<input type="submit" value="submit">
	</form>
</body>
</html>