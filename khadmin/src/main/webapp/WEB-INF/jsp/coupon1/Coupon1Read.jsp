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
					
					<input name="cu_no" type="hidden" value="${couponInfo.cu_no}">
											
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
											readonly
											class="form-control" value="${couponInfo.cu_number}"
											style="width: 220px; border: 1px solid #ee1111" id="field-6">
										</td>
										
										<td class="tdl" style="width: 10%">대상</td>

										<td style="width: *" colspan="3">
										
										<select class="form-control" name="cu_opt2">
										
										<option value="">전체</option>
										<option value="1" <c:if test="${couponInfo.cu_opt2 eq '1'}">selected</c:if>>1학점</option>
										<option value="2" <c:if test="${couponInfo.cu_opt2 eq '2'}">selected</c:if>>2학점</option>
										<option value="3" <c:if test="${couponInfo.cu_opt2 eq '3'}">selected</c:if>>3학점</option>
										<option value="4" <c:if test="${couponInfo.cu_opt2 eq '4'}">selected</c:if>>4학점</option>
										
										
										
										
										</select>
										</td>

									</tr>
									<tr>
										<td class="tdl" style="width: 9%">쿠폰제목</td>

										<td style="width: *" colspan="3"><input name="cu_subject"
											type="text" class="form-control"
											value="${couponInfo.cu_subject}" id="field-6"></td>

										<td class="tdl">사용여부</td>

										<td><input readonly name="cu_status" type="text"
											class="form-control" value="${couponInfo.cu_status}"
											style="width: 140px"
											id="field-6"></td>

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
											class="form-control"
											value="${couponInfo.cu_opt1}${couponInfo.cu_opt4}"
											id="field-6" style="width: 140px"></td>
									</tr>
								</table>

<div class="form-group">&nbsp;</div>

								<div class="form-group">

									<button type="button" class="btn btn-gray"
										onclick="fn_formRtn()">목록</button>
									<button type="button" class="btn btn-orange"
										onclick="fn_formSv()">저장</button>
										
										<button type="button" class="btn btn-purple"
												onclick="fn_formDel()">삭제</button>
									
								</div>

							</div>

						</div>
					</form>
					<script>
						function fn_formSv() {
							document.form1.submit();

						}
						function fn_formRtn() {
							document.formList.submit();

						}
						function fn_formDel() {
							document.form1.action="coupon1Delete";
							document.form1.submit();

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