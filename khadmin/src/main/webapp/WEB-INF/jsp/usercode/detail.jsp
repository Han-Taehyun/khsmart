<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<form name="form1" action="codetSave" method="post"
	enctype="multipart/form-data">

	<input type="hidden" name="id" value="${codet.id}">


	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">코드 상세</h2>
						<div class="actions panel_actions pull-right"></div>
					</header>
					<div class="content-body">

						<div style="font-size: 13px; margin-bottom: 10px">* 코드 변경 시
							시스템에 영향을 줄수 있습니다.</div>

						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">


								<table id="customers">

									<tr>


										<td class="tdl" style="width: 15%">대분류(사용자지정못함)</td>

										<td style="width: 35%"><select class="form-control"
											name="code1" id="code1" style="width: 250px">
												<option value="">::코드 중 분류 선택::</option>
												<c:forEach var="usercodeList" items="${usercodeList}"
													varStatus="status">
													<option value="${usercodeList.code1}"
														<c:if test="${usercodeList.code1 eq codet.code1}">selected</c:if>>${usercodeList.code1}</option>
												</c:forEach>
										</select></td>


										<td class="tdl" style="width: 15%">중분류(코드상 1차분류)</td>
										<td style="width: 35%"><input name="code2" type="text"
											class="form-control" value="${codet.code2}"
											style="width: 100%"></td>
									</tr>

									<tr>


										<td class="tdl" style="width: 15%">소분류(코드상 2차분류)</td>

										<td style="width: 35%"><input name="code3" type="text"
											class="form-control" value="${codet.code3}"
											style="width: 100%"></td>


										<td class="tdl" style="width: 15%">코드(10자이내 영문자:중복불가)</td>
										<td style="width: 35%"><input id="code" name="code"
											type="text" value="${codet.code}"
											style="width: 200px; border: 1px solid #ee2222"
											maxlength="10">&nbsp; <input type="button"
											value="중복조회" onclick="chkuni()"
											style="border: 1px solid #999"> <script>
											function chkuni(){
												if ( document.getElementById("code").value == "" ) {
													alert("코드값을 입력해주세요");
													document.getElementById("code").focus();
												}
												else
												{
													document.hiddenCall.code.value = document.getElementById("code").value;
													
													document.hiddenCall.submit();
												}
											}
											</script></td>
									</tr>

									<tr>


										<td class="tdl" style="width: 15%">코드명칭(3차 실사용부분)</td>
										<td style="width: *" colspan="3"><input name="codename"
											value="${codet.codename}" type="text" class="form-control"></td>

									</tr>


								</table>

							</div>

						</div>



						<div class="form-group" style="margin-top: 20px">

							<button type="button" class="btn btn-gray" onclick="fn_formRtn()">목록</button>

							<button type="button" class="btn btn-purple"
								onclick="fn_formDel()">삭제</button>

							<button type="button" class="btn btn-orange"
								onclick="fn_formSv()">저장</button>
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
	function fn_formDel() {
		

	}
</script>

<form name="formList" action="usercodeList" method="post">


	<input type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>

<form name="hiddenCall" action="selCodeUni" method="post"
	target="_hid_edumgt_">
	<input type="hidden" name="code" value="">
</form>

<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />


