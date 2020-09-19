<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<form name="form1" action="surveySave" method="post"
	enctype="multipart/form-data">

	<input type="hidden" name="sn" value="${surveypool.sn}">


	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">설문 상세</h2>
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


										<td class="tdl" style="width: 15%">설문 분류</td>

										<td style="width: 35%"><input name="svtype" type="text"
											class="form-control" value="${surveypool.svtype}"
											style="width: 100%"></td>


										<td class="tdl" style="width: 15%">-</td>
										<td style="width: 35%">-</td>
									</tr>

									<tr>


										<td class="tdl" style="width: 15%">설문제목</td>
										<td style="width: *" colspan="3"><input name="svname"
											value="${surveypool.svname}" type="text" class="form-control"></td>

									</tr>

									<tr>


										<td class="tdl" style="width: 15%">설문설명</td>
										<td style="width: *" colspan="3"><input name="svmemo"
											value="${surveypool.svmemo}" type="text" class="form-control"></td>

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
		if (document.form1.svtype.value == '') {
			alert("분류 입력 정확히 해주세요.");
			document.form1.svtype.focus();
		} else {
			if (document.form1.svname.value == '') {
				alert("정보 입력 정확히 해주세요.");
				document.form1.svname.focus();
			} else {
				document.form1.submit();
			}
		}

	}
	function fn_formRtn() {
		document.formList.submit();

	}
	function fn_formDel() {
		document.form1.action = "surveyDelete";
		document.form1.submit();

	}
</script>

<form name="formList" action="surveyList" method="post">

	<input type="hidden" name="svtype"
		value="${surveypool.svtype}"> 
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


