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
					<h2 class="title pull-left">FAQ</h2>
					<div class="actions panel_actions pull-right">
						<ul class="list-unstyled">
							<li style="float: left;"><input type="checkbox"
								name="searchType" value="question"
								<c:if test="${fn:indexOf(searchVO.searchType, 'question') != -1}">checked="checked"</c:if> />
								<label class="chkselect" for="searchType1">질문</label>&nbsp;&nbsp;

								<input type="checkbox" name="searchType" value="answer"
								<c:if test="${fn:indexOf(searchVO.searchType, 'answer') !=-1}">checked="checked"</c:if> />
								<label class="chkselect" for="searchType2">답변</label>&nbsp;&nbsp;
							</li>
							<li style="float: left;"><input type="text"
								style="width: 150px; height: 31px" name="searchKeyword"
								value='<c:out value="${searchVO.searchKeyword}"/>'
								onkeydown="if(event.keyCode == 13) { fn_formSubmit();}">
							</li>
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
										<th>#</th>
										<th>헤더</th>
										<th>순서</th>
										<th>질문</th>
										<th>mp4</th>
										<th>Youtube</th>


									</tr>
								</thead>
								<tbody>
									<c:forEach var="listview" items="${listview}"
										varStatus="status">


										<tr>
											<td><c:out
													value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" />
											</td>

											<td><c:out value="${listview.faqhdr}" /></td>
											<td><c:out value="${listview.odrno}" /></td>
											<td><c:out value="${listview.question}" /></td>
											<td><c:out value="${listview.mp4url}" /></td>
											<td><c:out value="${listview.ytburl}" /></td>


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
							
							function fn_formGo() {
					            
					            document.form1.action = "careerForm";
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