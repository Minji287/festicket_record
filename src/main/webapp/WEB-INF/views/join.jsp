<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페스티켓</title>
	<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/header.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/join.css">
	<script src="/resources/js/join.js"></script>
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<center>
		<table border="0" cellspacing="0" cellpadding="20" width="40%">	
			<tr>
				<br><br>
				<td class="contentbox">
					<center>
					<img src="/resources/img/festicket_logo.png" width="30%"> 
					<br><br>
						<h5><b> 회원가입 </b></h5>
						<form action="joinOk" method="post" name="join_frm">
							<table border="0" cellspacing="0" cellpadding="10">
								<tr>
									<td class="content_text">아이디
									<input class="inputbox01" type="text" name="userId" placeholder="아이디"></td>
								</tr>
								<tr>
									<td class="content_text">비밀번호
									<input class="inputbox01" type="password" name="userPassword" placeholder="비밀번호"></td>
								</tr>
								<tr>
									<td class="content_text">비밀번호확인
									<input class="inputbox01" type="password" name="userPassword_check" placeholder="비밀번호확인"></td>
								</tr>
								<tr>
									<td class="content_text">이름
									<input class="inputbox01" type="text" name="name" placeholder="이름"></td>
								</tr>
								<tr>
									<td class="content_text">이메일
									<input class="inputbox01" type="text" name="email" placeholder="이메일"></td>
								</tr>
								<tr>
									<td class="content_text">휴대폰번호
									<input class="inputbox01" type="text" name="userPhone" placeholder="휴대폰번호"></td>
								</tr>
			
								<tr>
									<td colspan="2" align="center">
										<input class="content_btn01" type="submit" value="가입완료" onclick="return joinCheck()" >&nbsp;&nbsp;
										<input class="content_btn02" type="button" value="취소" onclick="script:window.location.href='index'" >
									</td>										
								</tr>
							</table>
						</form>
					</center>
				</td>
			</tr>
		</table>
	</center>
	
	<%@ include file="include/footer.jsp" %>
</body>
</html>