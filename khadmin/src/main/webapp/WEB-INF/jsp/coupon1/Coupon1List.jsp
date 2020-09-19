<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<!-- START CONTENT -->
<section id="main-content" class=" ">
	<section class="wrapper"
		style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>
		<form id="form1" name="form1" method="post">
			<input type="hidden" name="orderKeyword" id="orderKeyword"
				value="<c:out value="${fn:trim(searchVO.orderKeyword)}" />" /> <input
				type="hidden" name="cu_no" id="cu_no" value="" />


			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">쿠폰리스트</h2>
						<div class="pull-right" style="padding-top: 10px">

							<ul class="list-unstyled" style="width: 100%">

								<li style="float: left;"><input type="checkbox"
									name="searchType" value="cu_subject"
									<c:if test="${fn:indexOf(searchVO.searchType, 'cu_subject')!= -1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType1">쿠폰명</label>&nbsp;&nbsp;

									<input type="checkbox" name="searchType" value="cu_number"
									<c:if test="${fn:indexOf(searchVO.searchType, 'cu_number')!=-1}">checked="checked"</c:if> />
									<label class="chkselect" for="searchType2">쿠폰번호</label>&nbsp;&nbsp;
								</li>
								<li style="float: left;"><input type="text"
									style="width: 200px; height: 28px; padding: 0px"
									name="searchKeyword"
									value='<c:out value="${searchVO.searchKeyword}"/>'></li>
								<li style="float: left;">&nbsp;&nbsp;
									<button type="button" class="btn btn-primary "
										onclick="fn_formSubmit()">검색</button>
									<button type="button" class="btn btn-orange"
										onclick="fn_formGo()">신규</button>

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


											<th>#</th>


											<th style='width: *'>쿠폰명</th>

											<th style='width: 15%'>쿠폰번호</th>

											<th style='width: 10%'>사용여부</th>




											<th style='width: 15'>기간</th>

											<th style='width: 15%'>적용</th>

											<th style='width: 10%'>대상</th>



										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}"
											varStatus="status">

											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
												</td>

												<td><a href=javascript:fn_readGo('<c:out value="${listview.cu_no}" />')><c:out
															value="${listview.cu_subject}" /></a></td>

												<td><c:out value="${listview.cu_number}" /></td>


												<td><c:out value="${listview.cu_status}" /></td>




												<td><c:out value="${listview.cu_use_day}" />~<c:out
														value="${listview.cu_use_time}" /></td>

												<td><c:out value="${listview.cu_opt1}" /> <c:out
														value="${listview.cu_opt4}" /></td>

												<td>${listview.cu_opt2}</td>


											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>



							<div class="col-md-12 col-sm-12 col-xs-12"
								style='border-top: 2px solid #d8d8d8; padding-top: 20px;'>


								<jsp:include page="/WEB-INF/jsp/common/pagingforSubmit.jsp" />

							</div>
		</form>

		<script>
			function fn_formSubmit() {
				document.form1.submit();
			}
		</script>

		<script>
			function fn_formExSubmit() {
				document.form1.action="coupon1Excel";
				document.form1.target="_new";
				document.form1.submit();
			}
		</script>

		<script>
			function fn_orderKey(_a) {
				document.form1.orderKeyword.value = _a;
				document.form1.submit();
			}
		</script>


		<script>
			function fn_formGo() {
				location.href = "coupon1Form";
			}
		</script>

		<script>
			function fn_readGo(_a) {
				document.form1.cu_no.value = _a;
				document.form1.action = "coupon1Read";
				document.form1.submit();
			}
		</script>


		</div>
		</div>
	</section>
	</div>




</section>
</section>

<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />