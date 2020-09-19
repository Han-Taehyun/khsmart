<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form id="form1" name="form1" method="post" action="vwtableinfoList">
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
						<h2 class="title pull-left">테이블 목록</h2>
						<div class="actions panel_actions pull-right">
							<ul class="list-unstyled">
								<li
									style="float: left; display: inline-block; vertical-align: middle; padding-top: 10px">
									<select class="form-control" name="tablename" id="tablename"
									style="width: 400px">

										<option value="0">::테이블 선택::</option>

										<c:forEach var="listrel3" items="${listrel3}"
											varStatus="status">

											<option value="${listrel3.tablename}"
												<c:if test="${ param.tablename eq listrel3.tablename}">selected</c:if>>
												${listrel3.tablename} [ ${listrel3.tablecomment} / ${listrel3.tablerows} 건 ] </option>

										</c:forEach>

								</select>&nbsp;&nbsp;
								</li>
								<li style="float: left;"></li>
								<li style="float: left;">&nbsp;&nbsp;
									<button type="button" class="btn btn-primary "
										onclick="fn_formSubmit()">검색</button>
									
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
											<th style="width:20%">컬럼명</th>
											<th style="width:15%">타입</th>
											<th style="width:10%">키</th>
											<th style="width:*">설명</th>


										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}"
											varStatus="status">


											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
												</td>

												<td><c:out value="${listview.columnname}" /></td>
												<td>${listview.columntype}</td>
												<td><c:out value="${listview.columnkey}" /></td>
												<td><c:out value="${listview.columncomment}" /></td>


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
	document.form1.action = "vwtableinfoList";
	document.form1.submit();
	}
</script>



<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />