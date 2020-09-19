<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form name="form1" action="hpenvSave" method="post"
	enctype="multipart/form-data">

	<input name="sn" type="hidden" value="${cvo.sn}">


	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">대분류 입력</h2>
						<div class="actions panel_actions pull-right">
							<i class="box_toggle fa fa-chevron-down"></i> <i
								class="box_setting fa fa-cog" data-toggle="modal"
								></i> <i class="box_close fa fa-times"></i>
						</div>
					</header>
					<div class="content-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">

								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">


										<table id="customers">




											<tr>
												<td class="tdl" style="width: 15%">타이틀</td>

												<td style="width: 35%"><input name="title" type="text"
													value="${cvo.title}" class="form-control"></td>


												<td class="tdl" style="width: 15%">순서</td>
												<td style="width: 35%"><input name="ord" type="text"
													value="${cvo.ord}" class="form-control"
													style="width: 120px" maxlength="2"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>



											</tr>

											<tr>
												<td class="tdl" style="width: 15%">태그</td>

												<td style="width: 35%"><input name="cmstag" type="text"
													value="${cvo.cmstag}" class="form-control"></td>


												<td class="tdl" style="width: 15%">노출타입</td>

												<td style="width: 35%"><select id="cmstype"
													style="width: 300px; padding-left: 10px; padding-right: 20px"
													name="cmstype" class="form-control m-bot15">
														<option value="">::노출타입 선택::</option>
														<c:forEach var="selcc" items="${selcc}" varStatus="status">
															<option
																<c:if test="${cvo.cmstype eq selcc.tgcode}">selected</c:if>
																value=<c:out value="${selcc.tgcode}"/>><c:out
																	value="${selcc.tgname}" /></option>
														</c:forEach>
												</select></td>



											</tr>




										</table>


										<div class="form-group" style="margin-top: 10px">

											<button type="button" class="btn btn-gray"
												onclick="fn_formRtn()">목록</button>
											<button type="button" class="btn btn-orange"
												onclick="fn_formSv()">저장</button>


										</div>

									</div>

								</div>


							</div>
						</div>
					</div>
				</section>
			</div>





		</section>
	</section>
	<!-- END CONTENT -->

</form>
<script>
	function fn_formSv() {

		document.form1.submit();

	}

	function fn_formRtn() {
		document.formList.submit();

	}
</script>


<form name="formList" action="hpenvList" method="post">
	<input type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>


<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />