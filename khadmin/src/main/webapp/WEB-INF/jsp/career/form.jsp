<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form name="form1" action="careerSave" method="post"
	enctype="multipart/form-data">
	<input name="sn" type="hidden" value="${faqinfo.sn}">

	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">FAQ 상세</h2>
						<div class="actions panel_actions pull-right">
							
						</div>
					</header>
					<div class="content-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">

								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">


										<table id="customers">
											<tr>

												<td class="tdl" style="width: 15%">헤더(분류)</td>

												<td style="width: 85%"><input name="faqhdr" type="text"
													value="${faqinfo.faqhdr}" class="form-control"></td>
											</tr>
											
											<tr>


												<td class="tdl" style="width: 15%">순서(위치)</td>

												<td style="width: 85%"><input name="odrno"
													type="text" value="${faqinfo.odrno}"
													class="form-control" style="width:90px"
													maxlength="2"
													onKeyup="this.value=this.value.replace(/[^0-9]/g,'');"></td>

											</tr>

											<tr>


												<td class="tdl" style="width: 15%">질문</td>

												<td style="width: 85%"><input name="question"
													type="text" value="${faqinfo.question}"
													class="form-control"></td>

											</tr>

											<tr>


												<td class="tdl" style="width: 15%">답변</td>

												<td style="width: 85%"><textarea name="answer"
														class="form-control bootstrap-wysihtml5-textarea"
														style="width: 100%; height: 180px; font-size: 13px; line-height: 20px; padding: 5px;">${faqinfo.answer}</textarea>
												</td>
											</tr>
											
											
											<tr>


												<td class="tdl" style="width: 15%">mp4 URL</td>

												<td style="width: 85%"><input name="mp4url"
													type="text" value="${faqinfo.mp4url}"
													class="form-control"></td>

											</tr>
											
											<tr>


												<td class="tdl" style="width: 15%">YouTube URL</td>

												<td style="width: 85%"><input name="ytburl"
													type="text" value="${faqinfo.ytburl}"
													class="form-control"></td>

											</tr>



										</table>


										<div class="form-group" style="margin-top: 10px">

											<button type="button" class="btn btn-gray"
												onclick="fn_formRtn()">목록</button>

											<button type="button" class="btn btn-purple"
												onclick="fn_formDel()">삭제</button>
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

	function fn_formDel() {
		document.form1.action = "careerDelete";
		document.form1.submit();

	}
</script>

<form name="formList" action="careerList" method="post">
	<input type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>

<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />