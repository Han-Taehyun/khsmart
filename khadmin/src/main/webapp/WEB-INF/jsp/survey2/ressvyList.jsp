<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form id="form1" name="form1" method="post" action="selectVwResponseOne">
	<input type="hidden" name="orderKeyword" id="orderKeyword"
		value="${searchVO.orderKeyword}" /> <input type="hidden" name="srch"
		id="srch" value="SRCH" />

	<!-- START CONTENT -->
	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">응답자별 문항답변 내역</h2>
						<div class="actions panel_actions pull-right">
							<ul class="list-unstyled">


								<li
									style="float: left; display: inline-block; vertical-align: middle; padding-top: 10px">
									<select class="form-control" name="uuid" id="uuid"
									style="width: 600px">

										<option value="0">::응답자 선택::</option>

										<c:forEach var="hhlist" items="${hhlist}" varStatus="status">

											<option value="${hhlist.uuid}">${hhlist.uuid}/
												${hhlist.username} / ${hhlist.email} / ${hhlist.wdate}</option>

										</c:forEach>

								</select>&nbsp;&nbsp;
								</li>

								<li style="float: left;"></li>
								<li style="float: left;">&nbsp;&nbsp;
									<button type="button" class="btn btn-primary "
										onclick="fn_formSubmit()">검색</button>

								</li>




							</ul>
						</div>
					</header>
					<div class="content-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">

								<table class="table">

									<tr>
										<td
											style="border:1px solid #999;padding: 20px; height: 30px; width: 15%; background-color: #eee">설문명</td>
										<td style="border:1px solid #999;padding: 20px; height: 30px; width: 35%">${spnml.svname}</td>
										<td
											style="border:1px solid #999;padding: 20px; height: 30px; width: 15%; background-color: #eee">작성번호</td>
										<td style="border:1px solid #999;padding: 20px; height: 30px; width: 35%">
										<a href="SchoolTrip?uuid=${spnml.uuid}" target="_new">${spnml.uuid}</a>
										</td>
									</tr>

									<tr>
										<td
											style="border:1px solid #999;padding: 20px; height: 30px; width: 15%; background-color: #eee">작성자명</td>
										<td style="border:1px solid #999;padding: 20px; height: 30px; width: 35%">${spnml.username}</td>
										<td
											style="border:1px solid #999;padding: 20px; height: 30px; width: 15%; background-color: #eee">이메일</td>
										<td style="border:1px solid #999;padding: 20px; height: 30px; width: 35%">${spnml.email}</td>
									</tr>
								</table>
								
								
								<div style="border-bottom:1px solid #999;height:20px;padding:10px;margin-bottom:10px">&nbsp;</div>



								<table class="table">
									<thead>
										<tr>




											<th style="width: 5%">응답순서</th>
											<th style="width: 25%">문항제목</th>
											<th style="width: *">응답내용</th>

											<th style="width: 15%">작성일시</th>





										</tr>
									</thead>
									<tbody>
										<c:forEach var="splist" items="${splist}" varStatus="status">


											<tr>




												<td>${splist.resodr}</td>
												<td>${splist.title}</td>
												<td>${splist.ans}</td>

												<td>${splist.wdate}</td>


											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>


							<jsp:include page="/WEB-INF/jsp/common/pagingforSubmit.jsp" />





						</div>
					</div>
				</section>
			</div>





		</section>
	</section>
	<!-- END CONTENT -->

</form>

<script>
	function fn_formSubmit() {
		document.form1.action = "";
		document.form1.submit();
	}
</script>

<script>
	function fn_formGo() {
		document.form1.action = "";
		document.form1.submit();
	}
</script>

<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
