<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페스티켓</title>
	<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/searchResult.css">
	<script type="text/javascript" src="/resources/js/festival.js"></script>
</head>
<body style="background-color: #eeeeee;">
<!-- 헤더 -->
	<%@ include file="include/header.jsp" %>
<!-- 헤더 끝 -->

<div class="container">
<div class="container_1">
<div class="continer_select">
  <div style="float: left;">
	<h2 class="title">'<b>${search_word }</b>' 에 대한 검색결과는 총 <b>${totalCount }</b>건 입니다.</h2>
  </div>
  <!-- 선택하면 정렬 기능 추가 필요 -->
	<form action="searchOrderBy" onsubmit="return validateForm()">
	<div style="float: right;">
		<div class="selectorBtn">
		<input type="hidden" value="${search_word }" name="keyword">
			<button type="submit" id="orderBtn">정렬</button>
		</div>
		<div class="selector">
			<select class="form-select form-select-sm" name="orderOption" aria-label=".form-select-sm example">
			  <option disabled selected value="">정렬선택</option>
			  <option value="startRecent" >시작 날짜 빠른 순</option>
			  <option value="startLate" >시작 날짜 느린 순</option>
			  <option value="endRecent">종료 날짜 빠른 순</option>
			  <option value="endLate">종료 날짜 느린 순</option>
			</select>
		</div>
	</div>
	</form>
</div>

<!-- 검색결과 리스트 시작 -->
	<div class="container_2">
		<table class="table">
			<tbody>
				<c:choose>
					<c:when test="${totalCount > 0 }">
					  <c:forEach items="${searchListDtos }" var="search">
					  <!-- eventNum 넘기기 -->
					  <input type="hidden" value="${search.eventNum }">
					    <tr>
					    	<c:choose>
			  					<c:when test="${search.main_img.startsWith('http')}">
						      <td scope="row" id="eventImgCell"><img src="${search.main_img }" class="listImg"
						      	onclick="script:window.location.href='rvView?selectedEvent=${search.eventNum }'">
						      </td>
						    </c:when>
							  <c:otherwise>
							    <td scope="row" id="eventImgCell">
									<img src="/resources/upload_main_img/${search.main_img.substring(search.main_img.indexOf('upload_main_img/') + 'upload_main_img/'.length())}"
										onclick="script:window.location.href='rvView?selectedEvent=${search.eventNum }'" class="listImg">
								</td>
							  </c:otherwise>
							</c:choose>
					      <td id="tableCenter">
					      	<p id="eventTitle">${search.title }</p>
					      	<p id="eventDetail"><b>장 소:</b> ${search.place }</p>
						  	<p id="eventDetail"><b>기 간:</b> ${search.eventDate }</p>
						  	<p id="eventDetail"><b>관람가:</b>
						  		<c:choose>
								  	<c:when test="${search.eventPrice  == null}">무료</c:when>
								  	<c:otherwise>${search.eventPrice }</c:otherwise>
							  	</c:choose>
						  	</p>
					      </td>
					      <!-- 세션으로 관리자는 버튼 value="수정하기" -->
					      <c:choose>
						      <c:when test="${sessionId eq 'admin'}">
						      		<td id="reserve"><input type="button" value="수정하기" onclick="script:window.location.href='adminModify?selectedEvent=${search.eventNum }'"></td>
						      </c:when>
						      <c:otherwise>
						      		<td id="reserve"><input type="button" value="예매하기" onclick="script:window.location.href='rvView?selectedEvent=${search.eventNum }'"></td>
						      </c:otherwise>
					      </c:choose>
					    </tr>
					  </c:forEach>
			  		</c:when>
			  		<c:otherwise>
	                    <div id="noResult">'<b>${search_word }</b>'에 대한 검색결과가 없습니다.</div>
		            </c:otherwise>
			  	</c:choose>
			</tbody>
		</table>
		
<!-- 페이징 -->
	<div class="container" id="PagingNum">
		
		<c:if test="${pageMaker.prev }">
			<a href="searchOrderBy?keyword=${search_word }&orderOption=${param.orderOption}&pageNum=${pageMaker.startPage-5 }"><c:out value="${'<' }"></c:out></a>&nbsp;&nbsp;&nbsp;
		</c:if>
		
		<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num">
			<c:choose>
				<c:when test="${currPage == num }">
					<span style="font-weight: bold;">${num }</span>&nbsp;&nbsp;&nbsp;
				</c:when>
				<c:otherwise>
					<a href="searchOrderBy?keyword=${search_word }&orderOption=${param.orderOption}&pageNum=${num }">${num }</a>&nbsp;&nbsp;&nbsp;
				</c:otherwise>
			</c:choose>
		</c:forEach>
		
		<c:if test="${pageMaker.next }">
			<a href="searchOrderBy?keyword=${search_word }&orderOption=${param.orderOption}&pageNum=${pageMaker.startPage+5 }"><c:out value="${'>' }"></c:out></a>
		</c:if>
	</div>
	
<!-- 페이징 끝 -->
		
	</div>
<!-- 검색결과 리스트 끝 -->


	</div>
</div>

<!-- 푸터 -->
	<%@ include file="include/footer.jsp" %>
<!-- 푸터 끝 -->

</body>
</html>