<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<form name="form1" action="surveypoolSave" method="post" enctype="multipart/form-data">

	<input type="hidden" name="sn" value="${surveypool.sn}">
	<input type="hidden" name="svyno" value="${survey.sn}">


	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
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

										<td style="width: 35%"><input name="svtype" type="text"
											class="form-control" value="${survey.svtype}"
											style="width: 100%" readonly></td>


										<td class="tdl" style="width: 15%">설문지명 </td>
										<td style="width: 35%"><input name="svname" type="text"
											class="form-control" value="${survey.svname}"
											style="width: 100%" readonly></td>
									</tr>

									<tr>


										<td class="tdl" style="width: 15%">문항</td>
										<td style="width: 35%" ><input name="title"
											value="${surveypool.title}" type="text" class="form-control"></td>

									


										<td class="tdl" style="width: 15%">문항순서/객,주관식유형</td>
										<td style="width: 35%" >
										
										<select name="odrno" id="odrno" style="width: 160px;height:30px">

												<option value="0">::문항번호 선택::</option>

												<c:forEach var="i" begin="1" end="10" step="1">

												<option value="${i}"
												<c:if test="${ i eq surveypool.odrno}">selected</c:if>>
												${i}
												</option>

												</c:forEach>
												
												

										</select>
										
										<select name="type1" id="type1" style="width: 160px;height:30px;" onchange="toggleSel(this)">

												<option value="0">::객,주관식 유형 선택::</option>


												<option value="객관식" <c:if test="${ '객관식' eq surveypool.type1}">selected</c:if>>객관식</option>
												<option value="주관식" <c:if test="${ '주관식' eq surveypool.type1}">selected</c:if>>주관식</option>


										</select>
										
										<script>
										function toggleSel(_this){
											
											if ( _this.value == '객관식' || _this.value == '0' ) {
												document.getElementById("bogi2").style.display = "block";
												document.getElementById("bogi3").style.display = "block";
												document.getElementById("bogi4").style.display = "block";
												document.getElementById("bogi5").style.display = "block";
											}
											
											if ( _this.value == '주관식') {
												document.getElementById("bogi2").style.display = "none";
												document.getElementById("bogi3").style.display = "none";
												document.getElementById("bogi4").style.display = "none";
												document.getElementById("bogi5").style.display = "none";
											}
											
										}
										</script>
										
										</td>

									</tr>
									
									
									
									<tr>


										<td class="tdl" style="width: 15%">보기1(지문)</td>
										<td style="width: *" colspan="3"><input name="bogi1" id="bogi1"
											value="${surveypool.bogi1}" type="text" class="form-control"></td>

									</tr>
									
									<tr>


										<td class="tdl" style="width: 15%">보기2(지문)</td>
										<td style="width: *" colspan="3"><input name="bogi2" id="bogi2"
											value="${surveypool.bogi2}" type="text" class="form-control"></td>

									</tr>
									<tr>


										<td class="tdl" style="width: 15%">보기3(지문)</td>
										<td style="width: *" colspan="3"><input name="bogi3" id="bogi3"
											value="${surveypool.bogi3}" type="text" class="form-control"></td>

									</tr>
									<tr>


										<td class="tdl" style="width: 15%">보기4(지문)</td>
										<td style="width: *" colspan="3"><input name="bogi4" id="bogi4"
											value="${surveypool.bogi4}" type="text" class="form-control"></td>

									</tr>
									<tr>


										<td class="tdl" style="width: 15%">보기5(지문)</td>
										<td style="width: *" colspan="3"><input name="bogi5" id="bogi5"
											value="${surveypool.bogi5}" type="text" class="form-control"></td>

									</tr>
									
								</table>

							</div>

						</div>



						<div class="form-group" style="margin-top: 20px">

							<button type="button" class="btn btn-gray" onclick="fn_formRtn()">목록</button>
							
							
							<button type="button" class="btn btn-purple" onclick="fn_formDel()">삭제</button>
							
							<button type="button" class="btn btn-orange" onclick="fn_formSv()">저장</button>
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
		document.form1.action = "surveypoolDelete";
		document.form1.submit();

	}
</script>

<form name="formList" action="surveypoolList" method="post">

	<input type="hidden" name="svyno" value="${survey.sn}">
	<input
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


