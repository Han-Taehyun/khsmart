<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<form name="form1" action="codetSave" method="post"
	enctype="multipart/form-data">

	<input type="hidden" name="sn" value="${codet.sn}">


	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">코드 상세</h2>
						<div class="actions panel_actions pull-right">
							<i class="box_toggle fa fa-chevron-down"></i> <i
								class="box_setting fa fa-cog" data-toggle="modal"
								href="#section-settings"></i> <i class="box_close fa fa-times"></i>
						</div>
					</header>
					<div class="content-body">

						<div style="font-size:13px;margin-bottom:10px">* 코드 변경 시 시스템에 영향을 줄수 있습니다.</div>
						
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">


								<table id="customers">
									<tr>


										<td class="tdl" style="width: 15%">코드 분류</td>

										<td style="width: 35%"><input name="category" type="text"
											class="form-control" value="${codet.category}"
											style="width: 100%"></td>


										<td class="tdl" style="width: 15%">코드</td>
										<td style="width: 35%"><input name="code" type="text"
											class="form-control" value="${codet.code}"
											style="width: 150px; border: 1px solid #ee2222"></td>
									</tr>

									<tr>


										<td class="tdl" style="width: 15%">코드설명</td>
										<td style="width: *" colspan="3"><input name="cname"
											value="${codet.cname}" type="text" class="form-control"></td>

									</tr>

									<tr>


										<td class="tdl" style="width: 15%">메모</td>
										<td style="width: *" colspan="3"><input name="cdesc"
											value="${codet.cdesc}" type="text" class="form-control"></td>

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
		if (document.form1.category.value == '') {
			alert("코드 분류 입력 정확히 해주세요.");
			document.form1.category.focus();
		} else {
			if (document.form1.code.value == '') {
				alert("코드 정보 입력 정확히 해주세요.");
				document.form1.code.focus();
			} else {
				document.form1.submit();
			}
		}

	}
	function fn_formRtn() {
		document.formList.submit();

	}
	function fn_formDel() {
		document.form1.action = "codetDelete";
		document.form1.submit();

	}
</script>

<form name="formList" action="usercodeList" method="post">

	<input type="hidden" name="category"
		value="${codet.category}"> 
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


