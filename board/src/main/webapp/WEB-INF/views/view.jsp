<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>      
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
		$(function(){
			$("#modi").click(function(){
				location.href = "modify_pwd?seq="+${post.seq};
			});
			$("#delete_btn").click(function(){
				location.href = "delete?seq="+${post.seq};
			});
			
			$("#back").click(function(){
				self.location = "/list?"
						+ "page=${scri.page}&perPageNum=${scri.perPageNum}"
						+ "&searchType=${scri.searchType}&keyword=${scri.keyword}";
			});
			
		})
	</script>
</head>
<body>
	<h1>글 상세페이지</h1>
		<form role="form" method="post" autocomplete="off">
			<input type="hidden" id="page" name="page" value="${scri.page }" readonly="readonly"/>
			<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum }" readonly="readonly"/>
			<input type="hidden" id="searchType" name="searchType" value="${scri.searchType }" readonly="readonly"/>
			<input type="hidden" id="keyword" name="keyword" value="${scri.keyword }" readonly="readonly"/>
			
			<p>
				<input type="hidden" id="seq" name="seq" value="${post.seq }" readonly="readonly"/>
			</p>
			
		</form>
	
	
		<form id="target" action="proc.jsp" method="post">
			<input type="hidden" id="md" name="mode" value="modify">
			<table>
				<tr>
					<td>제목</td>
					<td>${post.title }</td>
				</tr>	
				<tr>
					<td>내용</td>
					<td>${post.content }</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>${post.registuser }</td>
				</tr>
				
				<c:if test="${post.status == 1}">
				<tr>
					<td>공개<input type="radio" name="status" id="public" value=${post.status } checked ></td> 
					<td>비공개<input type="radio" name="status" id="secret" value=${post.status } onclick="return(false);"></td>
				</tr>
				</c:if>
				<c:if test="${post.status == 2}">
				<tr>
					<td>공개<input type="radio" name="status" id="public" value=${post.status } onclick="return(false);"></td> 
					<td>비공개<input type="radio" name="status" id="secret" value=${post.status } checked ></td>
				</tr>
				</c:if>
			</table>
			<br>
				<input type="button" value="수정" id="modi">  <!-- 버튼으로 -->
				<input type="button" id="back" value="목록">
				<input type="button" value="삭제" id="delete_btn">
				
	</form>	
			
		
</body>
</html>