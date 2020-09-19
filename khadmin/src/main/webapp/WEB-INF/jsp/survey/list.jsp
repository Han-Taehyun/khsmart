<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form id="form1" name="form1" method="post" action="surveyList">
	<input type="hidden" name="orderKeyword" id="orderKeyword"
		value="${searchVO.orderKeyword}" /> <input type="hidden" name="srch"
		id="srch" value="SRCH" />

	<!-- START CONTENT -->
	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">설문 목록</h2>
						<div class="actions panel_actions pull-right">
							<ul class="list-unstyled">
								<li
									style="float: left; display: inline-block; vertical-align: middle; padding-top: 10px">
									<select class="form-control" name="svtype" id="svtype"
									style="width: 250px">

										<option value="0">::설문 분류 선택::</option>

										<c:forEach var="listrel3" items="${listrel3}"
											varStatus="status">

											<option value="${listrel3.svtype}"
												<c:if test="${ param.svtype eq listrel3.svtype}">selected</c:if>>
												${listrel3.svytypename}</option>

										</c:forEach>

								</select>&nbsp;&nbsp;
								</li>
								<li style="float: left;"></li>
								<li style="float: left;">&nbsp;&nbsp;
									<button type="button" class="btn btn-primary "
										onclick="fn_formSubmit()">검색</button>
									<button type="button" class="btn btn-orange"
										onclick="fn_formGo()">신규</button>
								</li>




							</ul>
						</div>
					</header>
					<div class="content-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">

								<table class="table">
									<thead>
										<tr>
											<th style="width: 5%">#</th>
											<th style="width: 15%">분류</th>
											<th style="width: 15%">설문명</th>
											<th style="width: *">설문내용</th>

											<th style="width: 10">문항(질문) 수</th>


										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}"
											varStatus="status">


											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
												</td>

												<td><c:out value="${listview.svytypename}" /></td>
												<td><a href="surveyRead?sn=${listview.sn}">${listview.svname}</a></td>
												<td><c:out value="${listview.svmemo}" /></td>

												<td><c:out value="${listview.smcnt}" /></td>



											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>


							<jsp:include page="/WEB-INF/jsp/common/pagingforSubmit.jsp" />





						</div>
					</div>
				</section>
			</div>





		</section>
	</section>
	<!-- END CONTENT -->

</form>

<script>
	function fn_formSubmit() {
		document.form1.action = "surveyList";
		document.form1.submit();
	}
</script>

<script>
	function fn_formGo() {
		document.form1.action = "surveyForm";
		document.form1.submit();
	}
</script>

<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
