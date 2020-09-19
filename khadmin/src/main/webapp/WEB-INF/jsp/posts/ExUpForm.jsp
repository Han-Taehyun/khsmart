<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<form name="form1" action="ExSave" method="post"
	enctype="multipart/form-data">



	<section id="main-content" class=" ">
		<section class="wrapper" style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



			<div class="col-lg-12">
				<section class="box ">
					<header class="panel_header">
						<h2 class="title pull-left">엑셀 입력</h2>
						<div class="actions panel_actions pull-right">
							<i class="box_toggle fa fa-chevron-down"></i> <i
								class="box_setting fa fa-cog" data-toggle="modal"></i> <i
								class="box_close fa fa-times"></i>
						</div>
					</header>
					<div class="content-body">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">

								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">


										<div class="form-group" style="display: block">

											<div class="controls">

												<input type="radio" value="1" name="rr" checked />납입리스트
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="radio" value="2" name="rr" />세금계산리스트
												&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="radio" value="3" name="rr" />가망고객리스트 <br>
												<br> <br> <br> <input type="file"
													name="uploadfile" />

											</div>
										</div>

										<div class="form-group" style="margin-top: 10px">


											<button type="button" class="btn btn-orange"
												onclick="fn_formSv()">업로드</button>


										</div>

									</div>

								</div>


							</div>
						</div>
					</div>
				</section>
			</div>





		</section>
	</section>
	<!-- END CONTENT -->

</form>

<script>
	function fn_formSv() {
	document.form1.submit();

	}
							
	</script>

<c:if test="${alertMsg ne ''}">
<script>
function alertMsg(){
	alert("${alertMsg}");
}
alertMsg()
</script>
</c:if>



<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />


