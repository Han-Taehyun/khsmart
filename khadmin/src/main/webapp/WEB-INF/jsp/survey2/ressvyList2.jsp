<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html class=" ">

<head>

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8" />
<title>Learning Management System</title>
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
<link href="assets/css/animate.min.css" rel="stylesheet" type="text/css" />
<link href="assets/plugins/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" type="text/css" />
<!-- CORE CSS FRAMEWORK - END -->




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


</style>
</head>

<body>


	<div class="page-container">



		

			
				<section class="wrapper">

					

							<div class="content-body" style="border:1px soild #ee0000">
								<div class="row" >
									<div>

										<table class="table">

											<tr>
												<td
													style="border: 1px solid #999; padding: 20px; height: 30px; width: 15%; background-color: #eee">설문명</td>
												<td
													style="border: 1px solid #999; padding: 20px; height: 30px; width: 35%">${spnml.svname}</td>
												<td
													style="border: 1px solid #999; padding: 20px; height: 30px; width: 15%; background-color: #eee">작성일자</td>
												<td
													style="border: 1px solid #999; padding: 20px; height: 30px; width: 35%">${spnml.wdate}</td>
											</tr>

											<tr>
												<td
													style="border: 1px solid #999; padding: 20px; height: 30px; width: 15%; background-color: #eee">작성자명</td>
												<td
													style="border: 1px solid #999; padding: 20px; height: 30px; width: 35%">${spnml.username}</td>
												<td
													style="border: 1px solid #999; padding: 20px; height: 30px; width: 15%; background-color: #eee">이메일</td>
												<td
													style="border: 1px solid #999; padding: 20px; height: 30px; width: 35%">${spnml.email}</td>
											</tr>
										</table>


										<div
											style="border-bottom: 1px solid #999; height: 20px; padding: 10px; margin-bottom: 10px">&nbsp;</div>



										<table class="table">
											<thead>
												<tr>




													<th style="width: 5%">번호</th>
													<th style="width: 30%">문항제목</th>
													<th style="width: *">응답내용</th>

													





												</tr>
											</thead>
											<tbody>
												<c:forEach var="splist" items="${splist}" varStatus="status">


													<tr>




														<td>${splist.resodr}</td>
														<td>${splist.title}</td>
														<td>${splist.ans}</td>

														


													</tr>
												</c:forEach>
											</tbody>
										</table>

									</div>


								</div>
							</div>
						
				</section>
			

		

		
	</div>



	<script src="assets/js/jquery-1.11.2.min.js" type="text/javascript"></script>
	<script src="assets/js/jquery.form.js" type="text/javascript"></script>
	<script src="assets/js/jquery.easing.min.js" type="text/javascript"></script>
	<script src="assets/plugins/bootstrap/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>
	<script src="assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"
		type="text/javascript"></script>
	<script src="assets/plugins/viewport/viewportchecker.js"
		type="text/javascript"></script>
	<!-- CORE JS FRAMEWORK - END -->


	


	<!-- CORE TEMPLATE JS - START -->
	<script src="assets/js/scripts.js" type="text/javascript"></script>
	<!-- END CORE TEMPLATE JS - END -->



	

</body>

</html>
