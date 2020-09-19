<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class=" ">

<head>

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<title>KHSmart Admin</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- CORE CSS FRAMEWORK - START -->
<link href="assets/plugins/pace/pace-theme-flash.css" rel="stylesheet"
	type="text/css" media="screen" />
<link href="assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/plugins/bootstrap/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/fonts/font-awesome/css/font-awesome.css"
	rel="stylesheet" type="text/css" />
<link href="assets/css/animate.min.css" rel="stylesheet"
	type="text/css" />
<link href="assets/plugins/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" type="text/css" />
<!-- CORE CSS FRAMEWORK - END -->

<!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START -->
<link href="assets/plugins/datepicker/css/datepicker.css"
	rel="stylesheet" type="text/css" media="screen" />
<link
	href="assets/plugins/bootstrap3-wysihtml5/css/bootstrap3-wysihtml5.min.css"
	rel="stylesheet" type="text/css" media="screen" />
<link href="assets/plugins/calendar/fullcalendar.css" rel="stylesheet"
	type="text/css" media="screen" />
<!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END -->


<!-- CORE CSS TEMPLATE - START -->
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
<link href="assets/css/responsive.css" rel="stylesheet" type="text/css" />
<!-- CORE CSS TEMPLATE - END -->



<style>
@import url('//fonts.googleapis.com/earlyaccess/amstelvaralpha.css');

@import url('//fonts.googleapis.com/css?family=Prata&display=swap');

@import
	url('//fonts.googleapis.com/css?family=Noto+Sans+SC&display=swap');

@import url('//fonts.googleapis.com/css?family=Roboto&display=swap');

@import
	url('//fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap');

@import url('//fonts.googleapis.com/earlyaccess/nanumgothic.css');

@import url('//fonts.googleapis.com/earlyaccess/nanummyeongjo.css');

#customers {
	border-collapse: collapse;
	width: 100%;
	font-size: 14px;
	font-family: 'Nanum Gothic', 'Roboto';
}

#customers td, #customers th {
	border: 1px solid #888888;
	padding: 8px;
	font-family: 'Nanum Gothic', 'Roboto';
}

.tdl {
	background-color: #f1f1f1;
	color: #333;
	font-weight: 700;
	text-align: center;
	font-family: 'Nanum Gothic', 'Roboto';
}
</style>

<style>
a[href*="http"] {
	background:
		url('https://mdn.mozillademos.org/files/12982/external-link-52.png')
		no-repeat 100% 0;
	background-size: 16px 16px;
	padding-right: 19px;
}

a:link {
	text-decoration: none;
	font-weight: 700;
	cursor: pointer;
}

a:visited {
	text-decoration: none;
	font-weight: 700;
	cursor: pointer;
}

a:hover {
	text-decoration: underline;
	background-color: #e9e9ff;
	cursor: pointer;
}

a:active {
	text-decoration: underline;
	font-weight: 700;
	background-color: #e9e9ff;
	cursor: pointer;
}
</style>
</head>
<!-- END HEAD -->

<c:if test="${empty sessionScope.USERID}">
	<script>
function goLoginChkSession(){
	alert("로그인 정보가 유실되어 되어 로그인 합니다.");
	document.location.href="/khadmin/login";
}
goLoginChkSession();
</script>
</c:if>

<!-- BEGIN BODY -->
<body style="font-family: 'Nanum Gothic', 'Roboto';">

	<!-- START TOPBAR -->
	<div class='page-topbar '>
		<div class='logo-area' style="background: url(images/logo.png) no-repeat; background-size: contain; background-position: center;"></div>
		<div class='quick-area'>
			<div class='pull-left'>
				<ul class="info-menu left-links list-inline list-unstyled">
					<li class="sidebar-toggle-wrap"><a href="#"
						data-toggle="sidebar" class="sidebar_toggle"> <i
							class="fa fa-bars" style="font-size: 18px"></i>
					</a></li>
				</ul>
			</div>
			<div class='pull-right'>
				<ul class="info-menu right-links list-inline list-unstyled">
					<li class="profile"><a href="#" data-toggle="dropdown"
						class="toggle"> <span>관리자 <i class="fa fa-angle-down"></i></span>
					</a>
						<ul class="dropdown-menu profile animated fadeIn">

							
							<li class="last"><a href="/khadmin/logout"> <i
									class="fa fa-lock"></i> Logout
							</a></li>
						</ul></li>
					<li class="chat-toggle-wrapper" style="padding-right: 20px">
						&nbsp;&nbsp;&nbsp;</li>
				</ul>
			</div>
		</div>

	</div>
	<!-- END TOPBAR -->
	<!-- START CONTAINER -->
	<div class="page-container row-fluid">

		<!-- SIDEBAR - START -->
		<div class="page-sidebar ">


			<!-- MAIN MENU - START -->
			<div class="page-sidebar-wrapper" id="main-menu-wrapper">