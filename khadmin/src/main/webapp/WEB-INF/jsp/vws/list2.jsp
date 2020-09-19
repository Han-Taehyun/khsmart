<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form id="form1" name="form1" method="post" action="vwsList">
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
						<h2 class="title pull-left">학생별 설문결과 목록</h2>
						<div class="actions panel_actions pull-right">
							<ul class="list-unstyled">
							
							

								<li style="float: left;">

									<button type="button" class="btn btn-orange"
										onclick="history.back()">이전 목록 이동</button>
								</li>



							</ul>
						</div>
					</header>
					<div class="content-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
							
							<table id="customers">
									<tr>


										<td class="tdl" style="width: 15%">프로그램명</td>

										<td style="width: 35%">${protitle}</td>


										<td class="tdl" style="width: 15%">설문지명 </td>
										<td style="width: 35%">${svname}</td>
									</tr>
									
									<tr>


										<td class="tdl" style="width: 15%">강사명</td>

										<td style="width: 35%">${tutorname}</td>


										<td class="tdl" style="width: 15%">학생명 </td>
										<td style="width: 35%">${stuname}</td>
									</tr>
							</table>

							<br>

								<table class="table">
									<thead>
										<tr>
											
											<th style="width:10%">문항순서</th>
											<th style="width:*">문항</th>
											
											
											<th style="width:10">보기1(응답여부)</th>
											<th style="width:10">보기2(응답여부)</th>
											<th style="width:10">보기3(응답여부)</th>
											<th style="width:10">보기4(응답여부)</th>
											<th style="width:10">보기5(응답여부)</th>
											


										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}"
											varStatus="status">


											<tr>
												<td><c:out value="${listview.odrno}" /></td>
												<td>${listview.title}</td>
												
												
												
												
												<c:if test="${listview.type1 eq '주관식'}">
												<td colspan="5">${listview.bogi1}<br><span style="color:#229999">${listview.ans}</span></td>
												</c:if>
												
												<c:if test="${listview.type1 eq '객관식'}">
												<td>${listview.bogi1}</td>
												<td>${listview.bogi2}</td>
												<td>${listview.bogi3}</td>
												<td>${listview.bogi4}</td>
												<td>${listview.bogi5}</td>
												
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
	document.form1.action = "vwsList";
	document.form1.submit();
	}
</script>

<script>
	function fn_formGo() {
		document.form1.action = "vwsForm";
		document.form1.submit();
	}
</script>

<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
