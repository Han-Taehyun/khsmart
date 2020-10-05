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

		<div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>
			<div class="page-title" style="display: none">

				<div class="pull-left">
					<h1 class="title">Dashboard</h1>
				</div>


			</div>
		</div>
		<div class="clearfix"></div>


		<div class="col-lg-12">
			<section class="box nobox">
				<div class="content-body">

					<div class="row">
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="r4_counter db_box">
								<i
									class='pull-left fa fa-film icon-md icon-rounded icon-primary'></i>
								<div class="stats">
									<h4>
										<strong>${mvo.contcnt}명</strong>
									</h4>
									<span>수강회원 </span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="r4_counter db_box">
								<i
									class='pull-left fa fa-calendar icon-md icon-rounded icon-orange'></i>
								<div class="stats">
									<h4>
										<strong>${mvo.timecnt}건</strong>
									</h4>
									<span>수강신청</span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="r4_counter db_box">
								<i class='pull-left fa fa-eye icon-md icon-rounded icon-purple'></i>
								<div class="stats">
									<h4>
										<strong>${mvo.todaycnt}개</strong>
									</h4>
									<span>개설강좌</span>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6 col-xs-6">
							<div class="r4_counter db_box">
								<i
									class='pull-left fa fa-users icon-md icon-rounded icon-warning'></i>
								<div class="stats">
									<h4>
										<strong>${mvo.usercnt}원</strong>
									</h4>
									<span>매출</span>
								</div>
							</div>
						</div>
					</div>
					<!-- End .row -->


						
						
						
						<div class="row">
					

								<div id="db_morris_line_graph"
									style="height: 272px; width: 95%;display:none"></div>
								<div id="db_morris_area_graph"
									style="height: 272px; width: 90%; display: none;"></div>
								<div id="db_morris_bar_graph"
									style="height: 272px; width: 90%; display: none;"></div>

						</div>

					</div>
					<!-- End .row -->


					<div class="row" style="display:none">
						<div class="col-md-8 col-sm-12 col-xs-12">
							<div class="wid-vectormap">
								<h4>Visitor's Statistics</h4>
								<div class="row">
									<div class="col-md-9 col-sm-9 col-xs-12">
										<figure>
											<div id="db-world-map-markers"
												style="width: 100%; height: 300px"></div>
										</figure>
									</div>
									
									
									<div class="col-md-3 col-sm-3 col-xs-12 map_progress">
										<h4>Unique Visitors</h4>
										<span class='text-muted'><small>Last Week Rise
												by 62%</small></span>
										<div class="progress">
											<div class="progress-bar progress-bar-primary"
												role="progressbar" aria-valuenow="62" aria-valuemin="0"
												aria-valuemax="100" style="width: 62%"></div>
										</div>
										<br>
										<h4>Registrations</h4>
										<span class='text-muted'><small>Up by 57% last
												7 days</small></span>
										<div class="progress">
											<div class="progress-bar progress-bar-primary"
												role="progressbar" aria-valuenow="57" aria-valuemin="0"
												aria-valuemax="100" style="width: 57%"></div>
										</div>
										<br>
										<h4>Direct Sales</h4>
										<span class='text-muted'><small>Last Month Rise
												by 22%</small></span>
										<div class="progress">
											<div class="progress-bar progress-bar-primary"
												role="progressbar" aria-valuenow="22" aria-valuemin="0"
												aria-valuemax="100" style="width: 22%"></div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-4 col-sm-12 col-xs-12">
							<div class="r2_graph1 db_box">



								<form id="rickshaw_side_panel">
									<section>
										<div id="legend"></div>
									</section>
									<section>
										<div id="renderer_form" class="toggler">
											<select name="renderer">
												<option value="area" selected>Area</option>
												<option value="bar">Bar</option>
												<option value="line">Line</option>
												<option value="scatterplot">Scatter</option>
											</select>
										</div>
									</section>
									<section>
										<div id="offset_form">
											<label for="stack"> <input type="radio" name="offset"
												id="stack" value="zero" checked> <span>stack</span>
											</label> <label for="stream"> <input type="radio"
												name="offset" id="stream" value="wiggle"> <span>stream</span>
											</label> <label for="pct"> <input type="radio" name="offset"
												id="pct" value="expand"> <span>pct</span>
											</label> <label for="value"> <input type="radio"
												name="offset" id="value" value="value"> <span>value</span>
											</label>
										</div>
										<div id="interpolation_form">
											<label for="cardinal"> <input type="radio"
												name="interpolation" id="cardinal" value="cardinal" checked>
												<span>cardinal</span>
											</label> <label for="linear"> <input type="radio"
												name="interpolation" id="linear" value="linear"> <span>linear</span>
											</label> <label for="step"> <input type="radio"
												name="interpolation" id="step" value="step-after"> <span>step</span>
											</label>
										</div>
									</section>
								</form>

								<div id="chart_container" class="rickshaw_ext">
									<div id="chart"></div>
									<div id="timeline"></div>
								</div>

								<div id='rickshaw_side_panel' class="rickshaw_sliders">
									<section>
										<h5>Smoothing</h5>
										<div id="smoother"></div>
									</section>
									<section>
										<h5>Preview Range</h5>
										<div id="preview" class="rickshaw_ext_preview"></div>
									</section>
								</div>

							</div>


						</div>

					</div>
					<!-- End .row -->






					<div class="row" style="display:none">
						

						<div class="col-md-4 col-sm-6 col-xs-12">

							<div class="ultra-widget ultra-todo-task bg-primary">
								<div class="wid-task-header">
									<div class="wid-icon">
										<i class="fa fa-tasks"></i>
									</div>
									<div class="wid-text">
										
									</div>
								</div>
								<div class="wid-all-tasks">

									

								</div>
								<div class="wid-add-task">
									<input type="text" class="form-control" placeholder="Add task" />
								</div>
							</div>


						</div>

					</div>

				</div>
			</section>
		</div>


	</section>
</section>
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />

