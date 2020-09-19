<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />


<!-- START CONTENT -->
<section id="main-content" class=" ">
	<section class="wrapper"
		style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



		<div class="col-lg-12">
			<section class="box ">
				<header class="panel_header">
					<h2 class="title pull-left">CMS 대분류</h2>
					<div class="pull-right" style="padding-top: 10px">
						<ul class="list-unstyled" style="width: 100%">




							<li style="float: left;">
								<button type="button" class="btn btn-orange"
									onclick="fn_formGo()">신규</button>
									&nbsp;&nbsp;
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
										<th>#</th>
										
										<th>순서</th>
										<th>타이틀</th>
										<th>태그</th>
										
										<th>강좌노출방식</th>


									</tr>
								</thead>
								<tbody>
									<c:forEach var="listview" items="${listview}"
										varStatus="status">


										<tr>
											<td><c:out
													value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
											</td>

											
											<td><c:out value="${listview.ord}" /></td>
											<td><a href="hpenvRead?sn=${listview.sn}">${listview.title}</a></td>
											<td><c:out value="${listview.cmstag}" /></td>
											
											<td><c:out value="${listview.cmstypename}" /></td>


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

						<script>
				          function fn_formGo() {
				            
				            document.form1.action = "hpenvForm";
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