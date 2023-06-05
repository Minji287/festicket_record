<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/resources/css/csBoardList.css">
<script src="/resources/js/bootstrap.min.js"></script>
<title>페스티켓</title>
</head>
<body>
	<!-- 헤더 -->
	<%@ include file="include/header.jsp" %>
	<!-- 헤더 끝-->

	<!-- 게시글 리스트 -->
	<div class="container">
	<div class="container_1">
	<div id="csBoard_page_form">
		<h2 class="csBoardTitle">고객센터</h2>
		<table class="table table-hover" id="csListTable">
			<thead>
				<tr>
			      <th scope="col">번호</th>
			      <th scope="col">제목</th>
			      <th scope="col">작성자</th>
			      <th scope="col">작성일</th>
			      <th scope="col">조회수</th>
	    		</tr>
	  		</thead>
	  		<tbody class="table-group-divider">
		  		<c:forEach items="${csList }" var="csList"  begin="0" end="11">
				    <tr>
				      <th scope="row">${csList.c_idx }</th>
				      <td><a href="#">${csList.c_title }</a></td>
				      <td>${csList.c_userId }</td>
				      <td><fmt:formatDate value="${csList.c_writeDate }" pattern="yyyy-MM-dd"/></td>
				      <td>${csList.c_hit }</td>
				    </tr>
			  	</c:forEach>
	  		</tbody>
	  	</table>	  		
	 <!-- 게시글 리스트 끝 -->
	 
	 <!-- 검색, 등록 -->
	 <div class="container" style="padding-top: 10px">
	 <div class="search_board_area">
	 <div class="search_board">
	 	<input class="search_board_box" type="text">
		<input class="search_board_img" type="image" src="/resources/img/search_board_btn.png" alt='검색하기'>
	 </div>
	 <div class="button">
		<input type="button" class="btn" onclick="script:window.location.href='csBoardWrite'" value="등록">
	 </div>
	 </div>
	 </div>
	 <!-- 검색, 등록 끝 -->
	
	 <!-- 페이징 -->
	 <div class="container" id="pagingNum">
		
			<c:out value="${'<' }"></c:out>
			 1 2 3 4 5 
			<c:out value="${'>' }"></c:out>
		<!-- 
		<c:if test="${pageMaker.prev }">
			<a href="list?pageNum=${pageMaker.startPage-5 }"><c:out value="${'<' }"></c:out></a>&nbsp;&nbsp;&nbsp;
		</c:if>
		
		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num">
			<c:choose>
				<c:when test="${currPage == num }">
					<span style="color: #FFFFFF; background-color: #000000; font-weight: bold;">${num }</span>&nbsp;&nbsp;&nbsp;
				</c:when>
				<c:otherwise>
					<a href="list?pageNum=${num }">${num }</a>&nbsp;&nbsp;&nbsp;
				</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<c:if test="${pageMaker.next }">
			<a href="list?pageNum=${pageMaker.startPage+5 }"><c:out value="${'>' }"></c:out></a>
		</c:if>
		 -->
	</div>
	<!-- 페이징 끝 -->

	</div>
	</div>
	</div>
	
	<!-- 푸터 -->
	<%@ include file="include/footer.jsp" %>
	<!-- 푸터 끝 -->
</body>
</html>