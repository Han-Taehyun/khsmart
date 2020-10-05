<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<section id="main-content" class=" ">
	<section class="wrapper"
		style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



		<div class="col-lg-12">
			<section class="box ">
				<header class="panel_header">
					<h2 class="title pull-left">문의 상세</h2>
					<div class="actions panel_actions pull-right">
						
					</div>
				</header>
				<div class="content-body">

					<form name="form1" action="bbsSave" method="post"
						enctype="multipart/form-data">

						<input name="sn" type="hidden" class="form-control" value="${bbs.sn}">


						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">


								<table id="customers">
									

									<tr>


										<td class="tdl" style="width: 15%">문의/제안제목</td>
										<td style="width: *" colspan="3"><input name="title"
											type="text" class="form-control" value="${bbs.title}"></td>

									</tr>
									
									
									<tr>


										<td class="tdl" style="width: 15%">작성자명</td>
										<td style="width: 35%"><input name="userid"
											type="text" class="form-control" value="${bbs.userid}"></td>
											
										<td class="tdl" style="width: 15%">연락처</td>
										<td style="width: 35%"><input name="mobile"
											type="text" class="form-control" value="${bbs.mobile}"></td>

									</tr>
									
									<tr>


										
											
										<td class="tdl" style="width: 15%">작성일자</td>
										<td style="width: 35%"><input name="wdate"
											type="text" class="form-control" value="${bbs.wdate}"></td>
											
										<td class="tdl" style="width: 15%">-</td>
										<td style="width: 35%">-</td>

									</tr>

									<tr>


										<td class="tdl" style="width: 15%">내용</td>
										<td style="width: *" colspan="3"><textarea name="memo1"
											class="form-control" style="height:300px" rows="5">${bbs.memo1}</textarea></td>

									</tr>
									
									<tr>


										<td class="tdl" style="width: 15%">답변/처리내역</td>
										<td style="width: *" colspan="3"><textarea name="ansyn"
											class="form-control" style="height:300px" rows="5">${bbs.ansyn}</textarea></td>

									</tr>
								</table>

							</div>

						</div>





						<div class="form-group" style="display: none">
							<label class="form-label" for="field-1">첨부파일</label>
							<div class="controls">
								<c:forEach var="listview" items="${listview}" varStatus="status">
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

						<div class="form-group" style="margin-top: 20px">

							<button type="button" class="btn btn-gray" onclick="fn_formRtn()">목록</button>
							
							<button type="button" class="btn btn-purple"
												onclick="fn_formDel()">삭제</button>
								
							<button type="button" class="btn btn-orange"
								onclick="fn_formSv()">저장</button>
						</div>




					</form>
					<script>
						function fn_formSv() {
							document.form1.submit();
						}
						function fn_formRtn() {
							document.formList.submit();

						}
						function fn_formDel() {
							document.form1.action = "bbsDelete";
							document.form1.submit();

						}
					</script>

				</div>
		</div>
		</div>
	</section>
	</div>


	<form name="formList" action="bbsList" method="post">
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


