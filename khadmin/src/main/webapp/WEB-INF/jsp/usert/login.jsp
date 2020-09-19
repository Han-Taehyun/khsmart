<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html class=" ">
<head>

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<title>UltariSchool :: Admin</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />


<!-- CORE CSS FRAMEWORK - START -->
<link href="/khadmin/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet"
	type="text/css" media="screen" />
<link href="/khadmin/assets/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<link href="/khadmin/assets/plugins/bootstrap/css/bootstrap-theme.min.css"
	rel="stylesheet" type="text/css" />
<link href="/khadmin/assets/fonts/font-awesome/css/font-awesome.css"
	rel="stylesheet" type="text/css" />
<link href="/khadmin/assets/css/animate.min.css" rel="stylesheet"
	type="text/css" />
<link href="/khadmin/assets/plugins/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" type="text/css" />
<!-- CORE CSS FRAMEWORK - END -->

<!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START -->
<link href="/khadmin/assets/plugins/icheck/skins/square/orange.css"
	rel="stylesheet" type="text/css" media="screen" />
<!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END -->


<!-- CORE CSS TEMPLATE - START -->
<link href="/khadmin/assets/css/style.css" rel="stylesheet" type="text/css" />
<link href="/khadmin/assets/css/responsive.css" rel="stylesheet" type="text/css" />
<!-- CORE CSS TEMPLATE - END -->
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class=" login_page" style="opacity: 1.0 !important; filter: alpha(opacity = 80); background-color: #999">




	<div class="login-wrapper">
		<div id="login"
			class="login loginpage col-lg-offset-4 col-lg-4 col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-offset-2 col-xs-8"
			>

			<div style="width: 100%; text-align: center; padding: 20px">
				<img src="/khadmin/images/logo.png" style="width:100%">
			</div>
			
			<form name="loginform" id="loginform" action="login" method="post">
				<p>
					<label for="user_login" style="color:#fff">관리자 아이디<br /> <input type="text"
						name="userid" id="user_login" class="input" value="superadmin" size="20" /></label>
				</p>
				<p>
					<label for="user_pass" style="color:#fff">관리자 비번<br /> <input type="password"
						name="userpw" id="user_pass" class="input" value="1111" size="20" /></label>
				</p>




				<p class="submit">
					<input type="submit" name="wp-submit" id="wp-submit"
						class="btn btn-primary btn-block" 
						value="로그인" />
				</p>




			</form>


			<script>
                function login(){
                	if ( document.loginform.userid.value == '' || 
                			document.loginform.userpw.value == '' ) {alert("아이디/비번 입력 바랍니다.");}else{
                	document.loginform.action = "login";
                	document.loginform.submit();}
                	
                }
                
                </script>




		</div>
	</div>





	<!-- LOAD FILES AT PAGE END FOR FASTER LOADING -->


	<!-- CORE JS FRAMEWORK - START -->
	<script src="/khadmin/assets/js/jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="/khadmin/assets/js/jquery.easing.min.js" type="text/javascript"></script>
	<script src="/khadmin/assets/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="/khadmin/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
	<script
		src="/khadmin/assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"
		type="text/javascript"></script>
	<script src="/khadmin/assets/plugins/viewport/viewportchecker.js"
		type="text/javascript"></script>
	<!-- CORE JS FRAMEWORK - END -->


	<!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START -->
	<script src="/khadmin/assets/plugins/icheck/icheck.min.js"
		type="text/javascript"></script>
	<!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END -->


	<!-- CORE TEMPLATE JS - START -->
	<script src="/khadmin/assets/js/scripts.js" type="text/javascript"></script>
	<!-- END CORE TEMPLATE JS - END -->

	<!-- Sidebar Graph - START -->
	<script src="/khadmin/assets/plugins/sparkline-chart/jquery.sparkline.min.js"
		type="text/javascript"></script>
	<script src="/khadmin/assets/js/chart-sparkline.js" type="text/javascript"></script>
	<!-- Sidebar Graph - END -->

</body>
</html>

