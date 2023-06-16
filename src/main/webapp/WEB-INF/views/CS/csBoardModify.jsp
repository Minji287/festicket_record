<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/csBoardWrite.css">
    <script src="/resources/js/bootstrap.min.js"></script>
    <title>페스티켓</title>
</head>

<body>
    <!-- 헤더 -->
    <%@ include file="../include/header.jsp"%>
    <!-- 헤더 끝 -->

    <!-- 게시글 작성 폼 -->
    <div class="container">
        <div class="container_1">
            <div id="csBoard_page_form">
                <h2 class="csBoardTitle">고객센터</h2>
                <form action="csBoardModifyOk" method="post" id="detail_form">
               		<input type="hidden" name="c_idx" value="${csBoardDto.c_idx }">
                    <input type="hidden" name="c_userId" value="${csBoardDto.c_userId }">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">제목</span> <input type="text" class="form-control" aria-describedby="basic-addon1" value="${csBoardDto.c_title }" name="c_title">
                    </div>

                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">작성자</span> <input type="text" class="form-control" aria-describedby="basic-addon1" value="${csBoardDto.c_userId }" name="c_userId" readonly="readonly">
                    </div>

                    <div class="input-group">
                        <textarea class="form-control" placeholder="문의사항을 입력해주세요." aria-label="With textarea" name="c_content">${csBoardDto.c_content }</textarea>
                    </div>

                    <!-- 수정, 취소 버튼 -->
                    <div class="container" style="padding-top: 10px">
                        <div class="button_area">
                            <div class="button_submit">
                                <input type="submit" class="btn" id="button_submit" value="수정">
                            </div>
                            <div class="button_cancel">
                                <input type="button" class="btn" id="button_cancel" onclick="script:window.location.href='csBoardList'" value="취소">
                            </div>
                        </div>
                    </div>
                    <!-- 수정, 취소 버튼 끝 -->
                </form>
            </div>
        </div>
    </div>
    <!-- 게시글 작성 끝 -->

    <!-- 푸터 -->
    <%@ include file="../include/footer.jsp"%>
    <!-- 푸터 끝 -->
</body>

</html>