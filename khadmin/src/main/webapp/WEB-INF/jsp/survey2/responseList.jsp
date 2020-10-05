<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form id="form1" name="form1" method="post" action="selectVwResponse">
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
						<h2 class="title pull-left">동적 설문응답 목록</h2>
						<div class="actions panel_actions pull-right">
							<ul class="list-unstyled">

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
									<thead>
										<tr>
											<th style="width: 5%">#</th>

											<th style="width: 50%">설문명</th>
											<th style="width: *">응답수</th>




										</tr>
									</thead>
									<tbody>
										<c:forEach var="splist" items="${splist}" varStatus="status">


											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
												</td>

												<td><a
													href="selectVwResponseOne?resvyno=${splist.resvyno}">${splist.svname}</a></td>

												<td>${splist.rescnt}</td>


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
