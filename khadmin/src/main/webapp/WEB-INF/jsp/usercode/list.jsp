<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />
<form id="form1" name="form1" method="post" action="usercodeList">
	<!--input type="hidden" name="orderKeyword" id="orderKeyword" value="${searchVO.orderKeyword}" /> <input type="hidden"
    name="srch" id="srch" value="SRCH" /-->
	<!-- START CONTENT -->
	<section id="main-content" class=" ">
		<section class="wrapper"
			style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>
			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">코드 목록</h2>
						<div class="actions panel_actions pull-right">
							<ul class="list-unstyled">
								<li
									style="float: left; display: inline-block; vertical-align: middle; padding-top: 10px"><select
									class="form-control" name="code2" id="code2"
									style="width: 250px">
										<option value="">::코드 중 분류 선택::</option>
										<c:forEach var="list" items="${code2List}" varStatus="status">
											<option value="${list.code2}"
												<c:if test="${list.code2 eq searchVO.code2}">selected</c:if>>${list.codename}</option>
										</c:forEach>
								</select>&nbsp;&nbsp;</li>
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
											<th style="width: 15%">코드</th>
											<th style="width: *">코드명</th>
											<th style="width: 20%">대분류</th>
											<th style="width: 20%">중분류</th>
											<th style="width: 20%">소분류</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${listView}" varStatus="status">
											<tr>
												<td><c:choose>
														<c:when test="${searchVO.rowStart > 1}">
                                ${status.index + 11}
                              </c:when>
														<c:otherwise> ${status.index + 1} </c:otherwise>
													</c:choose></td>
												<td><a href="usercodeRead?id=${list.id}"><c:out
															value="${list.code}" /></a></td>
												<td>${list.codename}</td>
												<td>${list.code1}</td>
												<td>${list.code2}</td>
												<td>${list.code3}</td>
												
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
    document.form1.action = "usercodeList";
    document.form1.submit();
  }
</script>
<script>
  function fn_formGo() {
    document.form1.action = "codetForm";
    document.form1.submit();
  }
</script>

<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />