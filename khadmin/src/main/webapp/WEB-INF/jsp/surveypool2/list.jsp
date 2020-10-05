<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form id="form1" name="form1" method="post" action="surveypoolNMLListEDM">
	<input type="hidden" name="orderKeyword" id="orderKeyword"
		value="${searchVO.orderKeyword}" />  <input type="hidden" name="srch" id="srch"
		value="SRCH" />

	<!-- START CONTENT -->
	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">설문 문항 목록</h2>
						<div class="actions panel_actions pull-right">
							<ul class="list-unstyled">
								<li
									style="float: left; display: inline-block; vertical-align: middle; padding-top: 10px">
									<select class="form-control" name="svyno" id="svyno"
									style="width: 250px">

										<option value="0">::설문지 선택::</option>

										<c:forEach var="listrel3" items="${listrel3}"
											varStatus="status">

											<option value="${listrel3.sn}"
												<c:if test="${ param.svyno eq listrel3.sn}">selected</c:if>>
												${listrel3.svname}</option>

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
											<th style="width:5%">#</th>
											<th style="width:*">문항</th>
											
											<th style="width:8%">유형</th>
											
											
											<th style="width:5%">문항순서</th>
											
											<th style="width:10%">보기1</th>
											<th style="width:10%">보기2</th>
											<th style="width:10%">보기3</th>
											<th style="width:10%">보기4</th>
											<th style="width:10%">보기5</th>
											

										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}"
											varStatus="status">


											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
												</td>

												<td><a href="surveypoolNMLReadEDM?sn=${listview.sn}">${listview.title}</a></td>
												
												<td>${listview.type1}</td>
												
												<td>${listview.odrno}</td>
												
												<c:if test="${listview.type1 == '객관식'}">
												
												<td><c:out value="${listview.bogi1}" /></td>
												<td><c:out value="${listview.bogi2}" /></td>
												<td><c:out value="${listview.bogi3}" /></td>
												<td><c:out value="${listview.bogi4}" /></td>
												<td><c:out value="${listview.bogi5}" /></td>
												
												</c:if>
												
												<c:if test="${listview.type1 == '주관식'}">
												
												
												<td colspan=5>${listview.bogi1}</td>
												
												
												</c:if>
												
												

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
	document.form1.action = "surveypoolNMLListEDM";
	document.form1.submit();
	}
</script>

<script>
	function fn_formGo() {
		document.form1.action = "surveypoolNMLFormEDM";
		document.form1.submit();
	}
</script>

<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />

