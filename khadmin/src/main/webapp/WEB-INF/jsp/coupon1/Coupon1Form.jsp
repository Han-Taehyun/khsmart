<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<!-- START CONTENT -->
<section id="main-content" class=" ">
	<section class="wrapper"
		style='margin-top: 40px; display: inline-block; width: 100%;'>


		<div class="col-lg-12">
			<section class="box ">
				<header class="panel_header">
					<h2 class="title pull-left">쿠폰입력</h2>
					<div class="actions panel_actions pull-right"></div>
				</header>
				<div class="content-body">
					<form name="form1" action="coupon1Save" method="post" enctype="multipart/form-data">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">

								<table id="customers">
									<tr>
										<input name="cu_kind" type="hidden"
											class="form-control" readonly value="포인트관련" id="field-1"
											style="width: 180px">
										
										<input name="cu_category"
											type="hidden" class="form-control" readonly value="할인쿠폰"
											id="field-6" style="width: 180px">

										<td class="tdl" style="width: 10%">쿠폰번호</td>

										<td style="width: *" ><input name="cu_number" type="text"
											class="form-control" value="${couponInfo.cu_number}"
											readonly
											style="width: 220px; border: 1px solid #ee1111" id="field-6">
										</td>
										
										<td class="tdl" style="width: 10%">대상</td>

										<td style="width: *" colspan="3">
										
										<select class="form-control" name="cu_opt2">
										
										<option value="">전체</option>
										
										</select>
										</td>

									</tr>
									<tr>
										<td class="tdl" style="width: 9%">쿠폰제목</td>

										<td style="width: *" colspan="5"><input name="cu_subject"
											type="text" class="form-control" value="" id="field-6">
										</td>

									</tr>


									<tr>
										<td class="tdl">시작일</td>

										<td><input name="cu_use_day" type="text"
											class="form-control datepicker" data-format="yyyy-mm-dd"
											value="${couponInfo.cu_use_day}" style="width: 170px">



										</td>
										<td class="tdl">종료일</td>

										<td><input name="cu_use_time" type="text"
											value="<c:out value="${couponInfo.cu_use_time}"/>"
											class="form-control datepicker" data-format="yyyy-mm-dd"
											style="width: 170px"></td>


										<td class="tdl">적용</td>

										<td><input name="cu_opt1" type="text"
											class="form-control" value="" id="field-6"
											style="width: 140px"></td>
									</tr>


								</table>

								<div class="form-group">&nbsp;</div>

								<div class="form-group">
									<button type="button" class="btn btn-gray"
										onclick="fn_formRtn()">목록</button>
									<button type="button" class="btn btn-orange"
										onclick="fn_formSv()">저장</button>
								</div>

							</div>

						</div>
					</form>
					<script>
						function fn_formSv() {
							if (document.form1.cu_number.value == ""
									|| document.form1.cu_subject.value == "") {
								alert("관리자로서 업무에 충실히 정확히 입력하세요.");

							} else {
								document.form1.submit();
							}

						}
						function fn_formRtn() {
							document.formList.submit();

						}
					</script>
				</div>
			</section>
		</div>

	</section>
	
	<form name="formList" action="coupon1List" method="post">
		<input type="hidden" name="searchType"
			value="<c:out value="${searchVO.searchType}"/>"> <input
			type="hidden" name="searchKeyword"
			value="<c:out value="${searchVO.searchKeyword}"/>"> <input
			type="hidden" name="orderKeyword"
			value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
			type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
	</form>
	

	<!-- START CONTENT -->
	<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />