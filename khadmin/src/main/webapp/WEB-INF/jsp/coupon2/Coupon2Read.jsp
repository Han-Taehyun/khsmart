<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<!-- START CONTENT -->
<section id="main-content" class=" ">
	<section class="wrapper"
		style='margin-top: 40px; display: inline-block; width: 100%;'>


		<div class="col-lg-12">
			<section class="box ">
				<header class="panel_header">
					<h2 class="title pull-left">문항상세</h2>
					<div class="actions panel_actions pull-right"></div>
				</header>
				<div class="content-body">
					<form name="form1" action="coupon1Save" method="post">

						<input type="hidden" name="searchType"
							value="<c:out value="${searchVO.searchType}"/>"> <input
							type="hidden" name="searchKeyword"
							value="<c:out value="${searchVO.searchKeyword}"/>"> <input
							type="hidden" name="orderKeyword"
							value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
							type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">


						<input type="hidden" name="id"
							value="<c:out value="${couponInfo.id}"/>">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">


								<div class="form-group">
									<label class="form-label" for="field-1">과목코드</label>

									<div class="controls">
										<input name="lcode" type="text" class="form-control"
											value="<c:out value="${couponInfo.lcode}"/>" id="field-1"
											style="width: 200px">
									</div>
								</div>
								
								<div class="form-group">
									<label class="form-label" for="field-1">시험SET</label>

									<div class="controls">
										<input name="setp" type="text" class="form-control"
											value="<c:out value="${couponInfo.setp}"/>" id="field-6"
											style="width: 50px">
									</div>
								</div>
								
								<div class="form-group">
									<label class="form-label" for="field-1">번호</label>

									<div class="controls">
										<input name="num" type="text" class="form-control"
											value="<c:out value="${couponInfo.num}"/>" id="field-6"
											style="width: 50px">
									</div>
								</div>


								<div class="form-group">
									<label class="form-label " for="field-1">문항제목</label>

									<div class="controls">


										<textarea name="ltitle" class="form-control" cols="5"
											id="field-2"><c:out value="${couponInfo.ltitle}" /></textarea>
									</div>
								</div>

								<div class="form-group">
									<label class="form-label" for="field-1">정답</label>

									<div class="controls">
										<input name="ok" type="text" class="form-control"
											value="<c:out value="${couponInfo.ok}"/>" id="field-3"
											style="width: 50px">
									</div>
								</div>
								
								<div class="form-group">
									<label class="form-label " for="field-1">해설</label>

									<div class="controls">


										<textarea name="memo" class="form-control" cols="5"
											id="field-4"><c:out value="${couponInfo.memo}" /></textarea>
									</div>
								</div>
								
								<div class="form-group">
									<label class="form-label " for="field-1">지문1</label>

									<div class="controls">


										<textarea name="hi1" class="form-control" cols="5"
											id="field-4"><c:out value="${couponInfo.hi1}" /></textarea>
									</div>
								</div>
								
								<div class="form-group">
									<label class="form-label " for="field-1">지문2</label>

									<div class="controls">


										<textarea name="hi2" class="form-control" cols="5"
											id="field-4"><c:out value="${couponInfo.hi2}" /></textarea>
									</div>
								</div>
								
								<div class="form-group">
									<label class="form-label " for="field-1">지문3</label>

									<div class="controls">


										<textarea name="hi3" class="form-control" cols="5"
											id="field-4"><c:out value="${couponInfo.hi3}" /></textarea>
									</div>
								</div>
								
								<div class="form-group">
									<label class="form-label " for="field-1">지문4</label>

									<div class="controls">


										<textarea name="hi4" class="form-control" cols="5"
											id="field-4"><c:out value="${couponInfo.hi4}" /></textarea>
									</div>
								</div>
								
								<div class="form-group">
									<label class="form-label " for="field-1">지문5</label>

									<div class="controls">


										<textarea name="hi5" class="form-control" cols="5"
											id="field-4"><c:out value="${couponInfo.hi5}" /></textarea>
									</div>
								</div>


								<div class="form-group" style="visibility: hidden">
									> <label class="form-label" for="field-1">첨부파일</label>
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


										<input type="file" name="uploadfile"  />
									</div>
								</div>

								<div class="form-group">

									<button type="button" class="btn btn-gray"
										onclick="fn_formRtn()">목록</button>
									<button type="button" class="btn btn-orange"
										onclick="fn_formSv()">저장</button>

									<button type="button" class="btn btn-purple"
										onclick="fn_formDel()">삭제</button>
								</div>

							</div>

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
							document.form1.action="coupon1Delete";
							document.form1.submit();

						}
					</script>
				</div>
			</section>
		</div>

	</section>


	<form name="formList" action="coupon1List" method="post">
		<input type="hidden" name="searchType"
			value="<c:out value="${searchVO.searchType}"/>"> <input
			type="hidden" name="searchKeyword"
			value="<c:out value="${searchVO.searchKeyword}"/>"> <input
			type="hidden" name="orderKeyword"
			value="<c:out value="${fn:trim(searchVO.orderKeyword)}"/>"> <input
			type="hidden" name="page" value="<c:out value="${pageVO.page}"/>">
	</form>


	<!-- START CONTENT -->
	<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />