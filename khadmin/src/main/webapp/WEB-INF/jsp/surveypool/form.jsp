<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<form name="form1" action="surveypoolAdd" method="post"
	enctype="multipart/form-data">

	<!-- 
	<input type="hidden" name="sn" value="${surveypool.sn}"> <input
		type="hidden" name="svyno" value="${survey.sn}">
 -->

	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">설문 문항 신규</h2>
						<div class="actions panel_actions pull-right">
							<i class="box_toggle fa fa-chevron-down"></i> <i
								class="box_setting fa fa-cog" data-toggle="modal"
								href="#section-settings"></i> <i class="box_close fa fa-times"></i>
						</div>
					</header>
					<div class="content-body">



						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">


								<table id="customers">
									<tr>
										<!--  
										<td class="tdl" style="width: 15%">설문지 종류</td>

										<td style="width: 35%">
											<input name="svtype" type="text"
											class="form-control" value="${survey.svtype}"
											style="width: 100%" >
										</td>

										-->
										<td class="tdl" style="width: 15%">설문지명</td>
										<td style="width: 35%;" colspan="3"><select
											class="form-control" name="svyno" id="svyno"
											style="width: 250px" required>

												<option value="">::설문지 선택::</option>

												<c:forEach var="surveyList" items="${surveyList}"
													varStatus="status">

													<option value="${surveyList.sn}">
														${surveyList.svname}</option>

												</c:forEach>

										</select></td>
									</tr>

									<tr>


										<td class="tdl" style="width: 15%">문항</td>
										<td style="width: 35%"><input name="title"
											value="${surveypool.title}" type="text" class="form-control"
											required></td>


										<td class="tdl" style="width: 15%">문항순서/객,주관식유형</td>
										<td style="width: 35%"><select name="odrno" id="odrno"
											style="width: 160px; height: 30px" required>

												<option value="">::문항번호 선택::</option>

												<c:forEach var="i" begin="1" end="10" step="1">

													<option value="${i}"
														<c:if test="${ i eq surveypool.odrno}">selected</c:if>>
														${i}</option>

												</c:forEach>

										</select> <select name="type1" id="type1"
											style="width: 160px; height: 30px;" required>
												<option value="">::문항 유형 선택::</option>
												<option value="객관식 단일">객관식 단일</option>
												<option value="객관식 복수">객관식 복수</option>
												<option value="일정표">일정표</option>
												<option value="개인정보">개인정보</option>
										</select></td>
									</tr>

									<tr class="bogiTr">


										<td class="tdl" style="width: 15%">보기(지문)</td>
										<td style="width: *" colspan="3">
											<div class="input-btn-wrapper">
												<div class="input-wrapper">
													<label class="container"><input type="checkbox"
														class="chbox" value="Y"> <span class="checkmark"></span>
													</label> <input type="text" class="form-control"
														placeholder="주관식일 경우 체크하세요." required> <i
														class="fa fa-close add-cancel-btn"
														onclick="add.cancelAddBtn(this)"><span class="blind"></span></i>
												</div>
												<button type="button" class="add-btn btn btn-primary">추가</button>
											</div>
										</td>



									</tr>

								</table>

							</div>

						</div>



						<div class="form-group" style="margin-top: 20px">

							<button type="button" class="btn btn-gray" onclick="fn_formRtn()">목록</button>


							<button type="submit" class="btn btn-orange">저장</button>
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
<script type="text/addTemplate" id="addTemplate">
<td class="tdl" style="width: 15%">보기(지문)</td>
<td style="width: *" colspan="3">
	<div class="input-btn-wrapper">
	<div class="input-wrapper">
		<label class="container">
			<input type="checkbox" class="chbox" value="Y">
			<span class="checkmark"></span> 
		</label> 
		<input type="text" class="form-control" placeholder="주관식일 경우 체크하세요." required>
		<i class="fa fa-close add-cancel-btn" onclick="add.cancelAddBtn(this)"><span class="blind"></span></i>
	</div>
	<button type="button" class="add-btn btn btn-primary">추가</button>
	</div>
</td>
</script>
<script src="assets/js/add.js"></script>
<script>
	function fn_formRtn() {
		document.formList.submit();

	}
</script>

<form name="formList" action="surveypoolList" method="post">

	<input type="hidden" name="svyno" value="${survey.sn}"> <input
		type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>
<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />


