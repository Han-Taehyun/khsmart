<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />
<!-- START CONTENT -->
<section id="main-content" class=" ">
	<section class="wrapper"
		style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>


		<form id="form1" name="form1" method="post" action="chapterList">
			<input type="hidden" name="orderKeyword" id="orderKeyword"
				value="<c:out value="${fn:trim(searchVO.orderKeyword)}" />" /> <input
				type="hidden" name="sn" id="id" value="" /> <input type="hidden"
				name="coid" id="coid" value="" />
			
			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">강의목록</h2>
						<div class="pull-right" style="padding-top: 10px">
							<ul class="list-unstyled" style="width: 100%">



								<li style="float: left;"><select id="selectlcode"
									style="width: 300px; padding-left: 10px; padding-right: 20px"
									name="code2" class="form-control m-bot15">
										<option value="">::강좌 선택::</option>
										<c:forEach var="courseList" items="${courseList}"
											varStatus="status">
											<option
												<c:if test="${courseList.cosn eq searchVO.code2}">selected</c:if>
												value=<c:out value="${courseList.cosn}"/>><c:out
													value="${courseList.cotitle}" /></option>
										</c:forEach>
								</select></li>
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


											<th>강좌명</th>
											<th>강의번호</th>
											<th>강의명</th>
											<th>맛보기여부</th>
											<th>미리보기</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="list" items="${chapterList}"
											varStatus="status">
											<tr>
												<td><c:out
														value="${searchVO.totRow-((searchVO.page-1)*searchVO.displayRowCount + status.index)}" /></td>


												<td>${list.cotitle}</td>
												<fmt:parseNumber var="num1" value="${list.ord / 1000}"
													integerOnly="true" />
												<td><c:out value="${num1}" />-<c:out
														value="${list.ord % 1000}" /></td>
												<td><a href="chapterRead?sn=${list.sn}">${list.chaptitle}</a></td>
												<td>${list.prv}</td>
												<td>${list.mp4url}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="col-md-12 col-sm-12 col-xs-12"
								style='border-top: 2px solid #d8d8d8; padding-top: 20px;'>
								<jsp:include page="/WEB-INF/jsp/common/pagingforSubmit.jsp" />
							</div>
		</form>

		<script>
			function fn_formSubmit() {
				document.form1.submit();
			}
		</script>
		<script>
			function fn_orderKey(_a) {
				document.form1.orderKeyword.value = _a;
				document.form1.submit();
			}
		</script>
		<script>
			function fn_formGo() {
				document.form1.coid.value = document
						.getElementById("selectlcode").value;
				document.form1.action = "chapterForm";
				if (document.form1.coid.value == "") {
					alert("강좌를 선택하세요");
					document.getElementById("selectlcode").focus();
				} else {
					document.form1.submit();
				}

			}
		</script>
		<script>
			function fn_readGo(_a, _b) {
				document.form1.coid.value = _b;
				document.form1.action = "chapterRead";

				document.form1.sn.value = _a;

				if (document.form1.coid.value == "") {
					alert("과목코드를 선택하세요");
					document.getElementById("selectlcode").focus();
				} else {
					document.form1.submit();
				}
			}
		</script>
		</div>
		</div>
	</section>
	</div>
</section>
</section>
<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />