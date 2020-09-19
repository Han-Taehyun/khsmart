<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />



<form id="form1" name="form1" method="post">
	<input type="hidden" name="orderKeyword" id="orderKeyword"
		value="${searchVO.orderKeyword}" /> <input type="hidden" name="sn"
		id="sn" value="" /> <input type="hidden" name="srch" id="srch"
		value="SRCH" />

	<section id="main-content" class=" ">
		<section class="wrapper" style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>

			<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>
				<div class="page-title" style="display: none">

					<div class="pull-left">
						<h1 class="title">권한 관리</h1>
					</div>


				</div>
			</div>
			<div class="clearfix"></div>


			<div class="col-lg-12">
				<section class="box ">




					<header class="panel_header">
						<h2 class="title pull-left">권한별 메뉴사용</h2>
						<div class="pull-right" style="padding-top: 10px">
							<ul class="list-unstyled">
								<li style="float: left;"><select name="srchusertype"
									style="width: 200px; height: 35px; padding: 5px; padding-bottom: 10px; font-size: 13px">


										<option value="SA"
											<c:if test="${searchVO.srchusertype eq 'SA'}">selected</c:if>>웹슈퍼관리자(SA)</option>



								</select></li>
								<li style="float: left;">&nbsp;&nbsp; <input type="button"
									class="btn btn-primary " onclick="fn_formSubmit()" value="검색">


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

											<th style="width: 25%">프로그램명</th>


											<th style="width: 25%">View JSP</th>

											<th style="width: 25%">사용여부</th>


											<th style="width: *">관리</th>







										</tr>
									</thead>
									<tbody>
										<c:forEach var="listview" items="${listview}"
											varStatus="status">


											<tr>

												<td><c:out value="${listview.progmemo}" /></td>

												<td><c:out value="${listview.progname}" /></td>

												<td><c:if test="${listview.usertype ne '-'}">적용 중[O]</c:if>
													<c:if test="${listview.usertype eq '-'}">미적용 중[X]</c:if></td>

												<td><c:if test="${listview.usertype ne '-'}">
														<a
															href="MemberPermiDel?sn=${listview.sn}&srchusertype=${searchVO.srchusertype}"
															style="border: 2px solid #dd3939; padding: 6px">삭제</a>
													</c:if> <c:if test="${listview.usertype eq '-'}">
														<a
															href="MemberPermiAdd?progname=${listview.progname}&srchusertype=${searchVO.srchusertype}"
															style="border: 2px solid #5588aa; padding: 6px">적용</a>
													</c:if></td>






											</tr>
										</c:forEach>
									</tbody>
								</table>

							</div>



							<div class="col-md-12 col-sm-12 col-xs-12"
								style='border-top: 2px solid #d8d8d8; padding-top: 20px;'>
								<jsp:include page="/WEB-INF/jsp/common/pagingforSubmit.jsp" />
							</div>
						</div>
					</div>


				</section>

			</div>
		</section>
</form>

<script>
	function fn_formSubmit() {
		document.form1.action = "MemberPermi";
		document.form1.submit();
	}
</script>



<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />

