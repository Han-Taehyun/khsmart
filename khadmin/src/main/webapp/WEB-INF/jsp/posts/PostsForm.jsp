﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form name="form1" action="PostSave" method="post"
	enctype="multipart/form-data">

	<input name="sn" type="hidden" value="${posts1Info.sn}">

	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>

			

			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">공지사항 입력</h2>
						<div class="actions panel_actions pull-right">
							<i class="box_toggle fa fa-chevron-down"></i> <i
								class="box_setting fa fa-cog" data-toggle="modal"
								href="#section-settings"></i> <i class="box_close fa fa-times"></i>
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

												<td style="width: 85%"><input name="title" type="text"
													value="${posts1Info.title}" class="form-control"></td>
											</tr>

											<tr>






												<td class="tdl" style="width: 15%">내용</td>

												<td style="width: 85%"><textarea name="post"
														class="form-control bootstrap-wysihtml5-textarea"
														style="width: 100%; height: 180px; font-size: 13px; line-height: 20px; padding: 5px;">${posts1Info.post}</textarea>

												</td>
											</tr>

											<tr>


												<td class="tdl" style="width: 15%">메모</td>

												<td style="width: 85%"><input rows=5 name="memo"
													type="text" value="${posts1Info.memo}" class="form-control"></td>




											</tr>

										</table>



										<div class="form-group" style="display: block">
											
											<div class="controls">
											<label class="form-label" for="field-1">첨부파일</label>
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


<form name="formList" action="PostList" method="post">
	<input type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>


<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />