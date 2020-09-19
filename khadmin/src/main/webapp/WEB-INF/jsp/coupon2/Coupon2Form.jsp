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
					<h2 class="title pull-left">문항입력</h2>
					<div class="actions panel_actions pull-right"></div>
				</header>
				<div class="content-body">
					<form name="form1" action="coupon1Save" method="post">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">


								<div class="form-group">
									<label class="form-label" for="field-1">과목코드</label>

									<div class="controls">
										<input name="lcode" type="text" class="form-control"
											id="field-1" style="width: 200px">
									</div>
								</div>
								
								<div class="form-group">
									<label class="form-label" for="field-1">시험SET</label>

									<div class="controls">
										<input name="setp" type="text" class="form-control"
											value="" id="field-6"
											style="width: 50px">
									</div>
								</div>

								<div class="form-group">
									<label class="form-label" for="field-1">번호</label>

									<div class="controls">
										<input name="num" type="text" class="form-control" value=""
											id="field-6" style="width: 50px">
									</div>
								</div>


								<div class="form-group">
									<label class="form-label " for="field-1">문항제목</label>

									<div class="controls">


										<textarea name="ltitle" class="form-control" cols="5"
											id="field-2"></textarea>

									</div>
								</div>

								<div class="form-group">
									<label class="form-label" for="field-1">정답</label>

									<div class="controls">
										<input name="ok" type="text" class="form-control" id="field-3"
											style="width: 50px">
									</div>
								</div>

								<div class="form-group">
									<label class="form-label " for="field-1">해설</label>

									<div class="controls">


										<textarea name="memo" class="form-control" cols="5"
											id="field-4"></textarea>
									</div>
								</div>

								<div class="form-group">
									<label class="form-label " for="field-1">지문1</label>

									<div class="controls">


										<textarea name="hi1" class="form-control" cols="5"
											id="field-4"></textarea>
									</div>
								</div>

								<div class="form-group">
									<label class="form-label " for="field-1">지문2</label>

									<div class="controls">


										<textarea name="hi2" class="form-control" cols="5"
											id="field-4"></textarea>
									</div>
								</div>

								<div class="form-group">
									<label class="form-label " for="field-1">지문3</label>

									<div class="controls">


										<textarea name="hi3" class="form-control" cols="5"
											id="field-4"></textarea>
									</div>
								</div>

								<div class="form-group">
									<label class="form-label " for="field-1">지문4</label>

									<div class="controls">


										<textarea name="hi4" class="form-control" cols="5"
											id="field-4"></textarea>
									</div>
								</div>

								<div class="form-group">
									<label class="form-label " for="field-1">지문5</label>

									<div class="controls">


										<textarea name="hi5" class="form-control" cols="5"
											id="field-4"></textarea>
									</div>
								</div>


								<div class="form-group" style="visibility: hidden">
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

								<div class="form-group">

									<button type="button" class="btn btn-orange"
										onclick="fn_formSv()">저장</button>
								</div>

							</div>

						</div>
					</form>
					<script>
						function fn_formSv() {
							document.form1.submit();

						}
					</script>
				</div>
			</section>
		</div>

	</section>

	<!-- START CONTENT -->
	<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />