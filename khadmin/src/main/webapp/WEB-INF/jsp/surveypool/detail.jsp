<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<form name="form1" action="surveypoolSave" method="post"
	enctype="multipart/form-data">

	<input type="hidden" name="sn" value="${surveypool.sn}"> <input
		type="hidden" name="svyno" value="${survey.sn}">


	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box">
					<header class="panel_header">
						<h2 class="title pull-left">설문 문항 상세</h2>
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


										<td class="tdl" style="width: 15%">설문지 종류</td>

										<td style="width: 35%"><c:forEach var="code"
												items="${usercodeList}">
												<c:if test="${survey.svtype eq code.code}">
													<input name="svtype" type="text" class="form-control"
														value="${code.codename}" style="width: 100%" readonly>
												</c:if>
											</c:forEach></td>


										<td class="tdl" style="width: 15%">설문지명</td>
										<td style="width: 35%"><input name="svname" type="text"
											class="form-control" value="${survey.svname}"
											style="width: 100%" readonly></td>
									</tr>

									<tr>


										<td class="tdl" style="width: 15%">문항</td>
										<td style="width: 35%"><input name="title"
											value="${surveypool.title}" type="text" class="form-control"
											required></td>


										<td class="tdl" style="width: 15%">문항순서/객,주관식유형</td>
										<td style="width: 35%"><select name="odrno" id="odrno"
											style="width: 160px; height: 30px" required>

												<option value="0">::문항번호 선택::</option>

												<c:forEach var="i" begin="1" end="10" step="1">

													<option value="${i}"
														<c:if test="${ i eq surveypool.odrno}">selected</c:if>>
														${i}</option>

												</c:forEach>



										</select> <select name="type1" id="type1"
											style="width: 160px; height: 30px;" required>
												<option value="">:문항 유형 선택::</option>

												<option value="객관식 단일"
													<c:if test="${'객관식 단일' eq surveypool.type1}">selected</c:if>>객관식
													단일</option>
												<option value="객관식 복수"
													<c:if test="${ '객관식 복수' eq surveypool.type1}">selected</c:if>>객관식
													복수</option>
												<option value="일정표"
													<c:if test="${ '일정표' eq surveypool.type1}">selected</c:if>>일정표</option>
												<option value="개인정보"
													<c:if test="${ '개인정보' eq surveypool.type1}">selected</c:if>>개인정보</option>
										</select></td>

									</tr>

									<c:forEach var="list" items="${bogiList}" varStatus="status">
										<tr class="bogiTr">
											<td class="tdl" style="width: 15%">보기(지문)</td>
											<td style="width: *" colspan="3">
												<div class="input-btn-wrapper">
													<div class="input-wrapper">
														<label class="container"><input type="checkbox"
															class="chbox" value="Y"
															<c:if test="${list.bogiType eq 'Y'}">checked</c:if>>
															<span class="checkmark"></span> </label> <input type="text"
															class="form-control" value="${list.bogi}"
															placeholder="주관식일 경우 체크하세요." required> <i
															class="fa fa-close add-cancel-btn"
															onclick="add.cancelAddBtn(this)"><span class="blind"></span></i>
													</div>
													<c:if test="${status.count == fn:length(bogiList)}">
														<button type="button" class="add-btn btn btn-primary">추가</button>
													</c:if>
												</div>
											</td>
										</tr>
									</c:forEach>
								</table>

							</div>

						</div>



						<div class="form-group" style="margin-top: 20px">

							<button type="button" class="btn btn-gray" onclick="fn_formRtn()">목록</button>


							<button type="button" class="btn btn-purple"
								onclick="fn_formDel()">삭제</button>

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
	function fn_formSv() {

		if (document.form1.odrno.value == '0') {
			alert("문항번호 정확히 해주세요.");
			document.form1.odrno.focus();

		} else {

			if (document.form1.title.value == '') {
				alert("정보 입력 정확히 해주세요.");
				document.form1.title.focus();
			} else {
				document.form1.submit();
			}
		}

	}

	function fn_formRtn() {
		document.formList.submit();

	}
	function fn_formDel() {
		var result = confirm('정말 삭제하시겠습니까?');
		if(result){
			document.form1.action = "surveypoolDelete";
			document.form1.submit();
		}else{
			return;
		}
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


