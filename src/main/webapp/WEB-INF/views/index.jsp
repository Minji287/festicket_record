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
	<link rel="stylesheet" type="text/css" href="/resources/css/style.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
	<script src="/resources/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 헤더 -->
		<%@ include file="include/header.jsp" %>
	<!-- 헤더 끝 -->
	
	<!-- 롤링배너 -->
	<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel" style="margin: 50px 0px 0px">
	  <div class="carousel-indicators">
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
	    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  	  </div>
	  <div class="carousel-inner">
	    <div class="carousel-item active" >
	      <img src="/resources/img/rolling_banner_01.jpg" class="d-block w-100">
	    </div>
	    <div class="carousel-item">
	      <img src="/resources/img/rolling_banner_02.jpg" class="d-block w-100">
	    </div>
	   	<div class="carousel-item">
	      <img src="/resources/img/rolling_banner_03.jpg" class="d-block w-100">
	    </div>
	  </div> 
	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	</div>
	<!-- 롤링배너 끝-->
	
	<!-- 페스티벌 5개 이미지, 자치구, 행사분류, 행사명 넘김 -->
		<div class="container" id="card_container">
	<div class="top5">
		페스티벌
	</div>
		<div class="card-group center-block" id="cardBox">
			<div class="row justify-content-center">
			<c:forEach items="${festival_5 }" var="festival"  begin="0" end="4">
		  <div class="col" style="float: none; margin 0 auto">
		  <input type="hidden" value="${festival.eventNum }">
		    <div class="card" id="cardList">
		      <img src="${festival.main_img }" class="card-img-top" id="card_img"
		      		onclick="script:window.location.href='rvView?selectedEvent=${festival.eventNum }'"><!-- 상세페이지로 이동 -->
		      <div class="card-body">
		        <h5 class="card-title">${festival.title }</h5>
		        <h6 class="card-subtitle">서울/${festival.gunName }</h6>
				<p class="card-text"><small class="text-muted">${festival.type }</small></p>
		      </div>
		    </div>
		  </div>
		  </c:forEach>
		 </div>
		 </div>
		</div>
	<!-- 이미지, 디테일 넘김 끝 -->
	
	<!-- 전시 5개 이미지, 자치구, 행사분류, 행사명 넘김 -->
		<div class="container" id="card_container">
	<div class="top5">
		전시
	</div>
		<div class="card-group center-block" id="cardBox">
			<div class="row justify-content-center">
			<c:forEach items="${exhibition_5 }" var="exhibition"  begin="0" end="4">
		  <div class="col" style="float: none; margin 0 auto">
		    <div class="card" id="cardList">
		    <input type="hidden" value="${exhibition.eventNum }">
		      <img src="${exhibition.main_img }" class="card-img-top" id="card_img"
		      	onclick="script:window.location.href='rvView?selectedEvent=${exhibition.eventNum }'"><!-- 상세페이지로 이동 -->
		      <div class="card-body">
		        <h5 class="card-title">
		        	<c:choose>
						<c:when test="${fn:length(exhibition.title) > 31}">
							<c:out value="${fn:substring(exhibition.title, 0, 30)}"></c:out>...
						</c:when>
						<c:otherwise>
							<c:out value="${exhibition.title } }"></c:out>
						</c:otherwise>
					</c:choose>
		        </h5>
		        <h6 class="card-subtitle">서울/${exhibition.gunName }</h6>
				<p class="card-text"><small class="text-muted">${exhibition.type }</small></p>
		      </div>
		    </div>
		  </div>
		  </c:forEach>
		 </div>
		 </div>
		</div>
	<!-- 이미지, 디테일 넘김 끝 -->
	
	<!-- 푸터 -->
		<%@ include file="include/footer.jsp" %>
	<!-- 푸터 끝 -->

</body>
</html>