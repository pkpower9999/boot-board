<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="write_pro" id="form_target" method="post" modelAttribute="boardVO">
		<input type="hidden" name="mode" value="regist">
		<form:input path="seq" type="hidden" id="seq"/>
			<table>
					<tr>
						<td><h1>글작성</h1></td>
					</tr>
					<tr>
						<td>제목</td>
						<td><form:input path="title" id="title"/></td>
					</tr>	
					<tr>
						<td>내용</td>
						<td><form:textarea path="content" id="content"/></td>
					</tr>
					<tr>
						<td>이름</td>
						<td><form:input path="registuser" id="name"/></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><form:input path="password" id="password"/></td>
					</tr>
					<tr>
						<td>공개<form:radiobutton path="status"  id="status" value="1"/></td>
						<td>비공개<form:radiobutton path="status"  id="status" value="0"/></td>
					</tr>
			</table>
	
		
		<form:button id="registBtn" value="등록"/>
		<form:button id="back" value="취소"/>
	
	</form:form>
</body>
</html>