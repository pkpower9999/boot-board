<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<table border="1">
		<tr>
				<td>ROWNUM</td>
				<td>제목</td>
				<td>내용</td>
				<td>등록유저</td>
				<td>등록날짜</td>
				<td>수정한 유저</td>
				<td>수정된 날짜</td>
				<td>상태</td>
		</tr>
		<c:forEach items="${list }" var="post">
			<tr>
				<td>${post.seq }</td>
				<td><a href="/view?seq=${post.seq }">${post.title }</a></td>
				<td>${post.content }</td>
				<td>${post.registuser }</td>
				<td>${post.registdate }</td>
				<td>${post.updateuser }</td>
				<td>${post.updatedate }</td>
				<td>${post.status }</td>
			</tr>
		</c:forEach>
	
	</table>
	<a href="write">글쓰기</a>
	
	<div>
		<c:choose>
		<c:when test="${pageVO.prevPage <= 0 }">
			<span disabled="disabled">
				<a href="#">이전</a>
			</span>
		</c:when>
		<c:otherwise>
			<span>
				<a href="list?page=${pageVO.prevPage }">이전</a>
			</span>
		</c:otherwise>
		</c:choose>
		<c:forEach var='idx' begin="${pageVO.min }" end="${pageVO.max }">
			<c:choose>
			<c:when test="${idx == pageVO.currentPage }">
				<span style="font-weight:bold">
					<a href="list?page=${idx }">${idx }</a>
				</span>
			</c:when>	
			<c:otherwise>
				<span>
					<a href="list?page=${idx }">${idx }</a>
				</span>
			</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<c:choose>
		<c:when test="${pageVO.max >= pageVO.pageCnt }">
			<span disabled>
				<a href="#">다음</a>
			</span>
		</c:when>
		<c:otherwise>
			<span>
				<a href="list?page=${pageVO.nextPage }">다음</a>
			</span>
		</c:otherwise>
		</c:choose>
		
	</div>
	
</body>
</html>