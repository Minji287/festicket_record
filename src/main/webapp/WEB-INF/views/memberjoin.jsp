<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페스티켓</title>
	<link rel="stylesheet" type="text/css" href="/resources/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/header.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/memberjoin.css">
</head>
<body>
	<%@ include file="include/header.jsp" %>
	<div class="inner">
	<div class="quick_menu_wrap">
    <div class="title"><h2 class="title_txt">마이페이지</h2></div>
    <ul class="quick_menu_list">
        <li class="quick_menu_item">
            <a href="" class="quick_link">
                <div class="qmemu_box">
                    <span class="qmenu_tit">나의 예매권</span>
                </div>
            </a>
        </li>
        <li class="quick_menu_item">
            <a href="" class="quick_link">
                <div class="qmemu_box">
                    <span class="qmenu_tit">나의 회원정보</span>
                </div>
            </a>
        </li>
    </ul>
	</div>
	
	<div class="help_cont">
<ul class="help_lmenu">
    <li class="has_sub">
        <span class="help_submenu_tit">예매관리</span>
        <ul class="help_submenu">
            <li>
                <a href="">예매확인/취소</a>
            </li>
        </ul>
    </li>
    
    <li class="has_sub">
        <span class="help_submenu_tit">할인혜택</span>
        <ul class="help_submenu">
            <li>
                <a href="">예매권</a>
            </li>
        </ul>
    </li>
    
    <li class="has_sub">
        <span class="help_submenu_tit">활동관리</span>
        <ul class="help_submenu">
            <li>
                <a href="" class="my_lmenu32"> 후기 </a>
            </li>
        </ul>
    </li>

    <li class="has_sub">
        <span class="help_submenu_tit">회원정보관리</span>
        <ul class="help_submenu">
            <li class="on">
                <a href="" class="my_lmenu52">회원정보수정</a>
            </li>
            <li>
                <a href="" class="my_lmenu53">회원탈퇴</a>
            </li>
        </ul>
    </li>
</ul>      
	</div>
	
	<table border="0" cellspacing="0" cellpadding="0" width="0">	
					<tr>
						<td class="contentbox">
							<center>
							<img src = "/resources/img/festicket_logo.png" width="30%"> 
							<br><br>
								<h5><b> 회원탈퇴 </b></h5>
								<table border="0" cellspacing="0" cellpadding="10">
									<form action="joinOk" method="post" name="join_frm">
									<tr>
										<td class="content_text">비밀번호
										<input class="inputbox01" type="password" name="mpw" placeholder="비밀번호"></td>
									</tr>
									<tr>
										<td class="content_text">비밀번호확인
										<input class="inputbox01" type="password" name="mpw_check" placeholder="비밀번호확인"></td>
									</tr>
									<tr>
										<td colspan="2" align="center">
											<input class="content_btn01" type="button" value="탈퇴하기" onclick="">					
										</td>										
									</tr>
									</form>
								</table>
							</center>
						</td>
					</tr>
				</table>
			</div>
	<%@ include file="include/footer.jsp" %>

</body>
</html>