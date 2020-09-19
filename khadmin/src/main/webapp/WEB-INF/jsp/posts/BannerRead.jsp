﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form name="form1" action="BannerUp" method="post"
	enctype="multipart/form-data">
	<input name="sn" type="hidden" value="${bannerInfo.sn}">

	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">배너 상세</h2>
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
													value="${bannerInfo.title}" class="form-control"></td>
											</tr>

											<tr>


												<td class="tdl" style="width: 15%">내용</td>

												<td style="width: 85%">
												<textarea name="post"
														
														style="width: 100%; height: 180px; font-size: 13px; line-height: 20px; padding: 5px;">${bannerInfo.post}</textarea>
												</td>
											</tr>

											<tr>


												<td class="tdl" style="width: 15%">링크</td>

												<td style="width: 85%"><input name="alink" type="text"
													value="${bannerInfo.alink}" class="form-control"></td>

											</tr>

										</table>

										<div class="form-group" style="margin-top: 10px">
										
										<c:if test="${bannerInfo.imgfile ne ''}">
											<c:if test="${fn:indexOf(bannerInfo.imgfile, 'jpg')!= -1}">
												<img src="/images/${bannerInfo.imgfile}" width="110">
											</c:if>

											<c:if test="${fn:indexOf(bannerInfo.imgfile, 'png')!= -1}">
												<img src="/images/${bannerInfo.imgfile}" width="110">
											</c:if>

											<c:if test="${fn:indexOf(bannerInfo.imgfile, 'PNG')!= -1}">
												<img src="/images/${bannerInfo.imgfile}" width="110">
											</c:if>

											<c:if test="${fn:indexOf(bannerInfo.imgfile, 'JPG')!= -1}">
												<img src="/images/${bannerInfo.imgfile}" width="110">
											</c:if>

											
										</c:if>
										<c:if test="${bannerInfo.imgfile eq ''}">-</c:if>
										
										</div>
										
										
										<div class="form-group" style="display: block;maring-top:10px">
											
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


												<input type="file" name="uploadfile"  />
											</div>
										</div>

										

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
		document.form1.action = "BannerDelete";
		document.form1.submit();

	}
</script>

<form name="formList" action="BannerList" method="post">
	<input type="hidden" name="searchType"
		value="<c:out value="${searchVO.searchType}"/>"> <input
		type="hidden" name="searchKeyword"
		value="<c:out value="${searchVO.searchKeyword}"/>"> <input
		type="hidden" name="orderKeyword"
		value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
		type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
</form>

<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />