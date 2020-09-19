<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<!-- START CONTENT -->
<section id="main-content" class=" ">
	<section class="wrapper" style='margin-top:60px;display:inline-block;width:100%;padding:15px 0 0 15px;'>

		

		<div class="col-lg-12">
			<section class="box ">
				<header class="panel_header">
					<h2 class="title pull-left">Basic Table</h2>
					<div class="actions panel_actions pull-right">
						<i class="box_toggle fa fa-chevron-down"></i> 
						<i class="box_setting fa fa-cog" data-toggle="modal" href="#section-settings"></i>
						<i class="box_close fa fa-times"></i>
					</div>
				</header>
				<div class="content-body">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">

							<table class="table">
								<thead>
									<tr>
										<th>#</th>
										<th>번호</th>
										<th>순서</th>
										<th>코드</th>
										<th>이름</th>
										
										<th>사용여부</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="listview" items="${listview}" varStatus="status">


										<tr>
											<td>
												<c:out value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
											</td>

											<td>
												<c:out value="${listview.kjcode}" />
											</td>
											<td>
												<c:out value="${listview.jobcode}" />
											</td>
											<td>
												<c:out value="${listview.jobname}" />
											</td>
											<td>
												<c:out value="${listview.jobname}" />
											</td>
											
											<td>
												<c:out value="${listview.jobname}" />
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

						</div>

						<form id="form1" name="form1" method="post">
							<jsp:include page="/WEB-INF/jsp/common/pagingforSubmit.jsp" />

							
						</form>

						<script>
							function fn_formSubmit() {
								document.form1.submit();
							}
						</script>


					</div>
				</div>
			</section>
		</div>





	</section>
</section>
<!-- END CONTENT -->

<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />