<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

            <section id="main-content" class=" ">
                <section class="wrapper" style='margin-top:60px;display:inline-block;width:100%;padding:15px 0 0 15px;'>

                    

		<div class="col-lg-12">
			<section class="box ">
				<header class="panel_header">
					<h2 class="title pull-left">Code Info</h2>
					<div class="actions panel_actions pull-right">
						<i class="box_toggle fa fa-chevron-down"></i> <i
							class="box_setting fa fa-cog" data-toggle="modal"
							href="#section-settings"></i> <i class="box_close fa fa-times"></i>
					</div>
				</header>
				<div class="content-body">
					
					
					
					

							<form name="form1" action="codeSave" method="post"
								enctype="multipart/form-data">




						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">


								<table id="customers">
									<tr>


										<td class="tdl" style="width: 15%">상위코드</td>

										<td style="width: 35%"><select class="form-control"
											name="code1">
												<c:forEach var="listsel" items="${listsel}"
													varStatus="status">

													<option value='${listsel.code1}' 
													<c:if test="${code1 eq listsel.code1}">
													selected</c:if>>
													[${listsel.code1}] ${listsel.code1memo}</option>

												</c:forEach>

										</select></td>


										<td class="tdl" style="width: 15%">코드</td>
										<td style="width: 35%"><input name="code2" type="text"
											class="form-control" style="width: 100px"></td>
									</tr>
									
									<tr>


										<td class="tdl" style="width: 15%">코드설명</td>
										<td style="width: *" colspan="3">
										<input name="title" type="text" class="form-control"></td>
								
								</tr>
								
								<tr>


										<td class="tdl" style="width: 15%">메모</td>
										<td style="width: *" colspan="3">
										<input name="memo" type="text" class="form-control"></td>
								
								</tr>
								</table>

							</div>

						</div>

					



										<div class="form-group" style="display:none">
											<label class="form-label" for="field-1">첨부파일</label>
											<div class="controls">
												<c:forEach var="listview" items="${listview}"
													varStatus="status">
													<input type="checkbox" name="fileno"
														value="<c:out value="${listview.fileno}"/>">
													<a
														href="fileDownload?filename=<c:out value="${listview.filename}"/>&downname=<c:out value="${listview.realname }"/>">
														<c:out value="${listview.filename}" />
													</a>
													<c:out value="${listview.size2String()}" />
													<br />
												</c:forEach>


												<input type="file" name="uploadfile" multiple="" />
											</div>
										</div>

										<div class="form-group" style="margin-top:20px">

											<button type="button" class="btn btn-gray"
												onclick="fn_formRtn()">목록</button>
											<button type="button" class="btn btn-orange"
												onclick="fn_formSv()">저장</button>
										</div>

									
							
							
							</form>
							<script>
						function fn_formSv() {
							if ( document.form1.code2.value == '' ) {
								alert("해당 정보 입력 정확히 해주세요.");
								document.form1.code2.focus();
								
							}else{document.form1.submit();}
							

						}
						function fn_formRtn() {
							document.formList.submit();

						}
					</script>

						</div>
					</div>
				</div>
			</section>
		</div>


	<form name="formList" action="codeList" method="post">
		<input type="hidden" name="searchType"
			value="<c:out value="${searchVO.searchType}"/>"> <input
			type="hidden" name="searchKeyword"
			value="<c:out value="${searchVO.searchKeyword}"/>"> <input
			type="hidden" name="orderKeyword"
			value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
			type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
	</form>


	</section>
</section>
<!-- END CONTENT -->

<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />


