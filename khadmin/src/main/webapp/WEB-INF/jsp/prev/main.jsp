<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>설문 미리보기</title>
<!-- Add the slick-theme.css if you want default styling -->
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<!-- Add the slick-theme.css if you want default styling -->
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
<link rel="stylesheet" href="assets/css/jquery.lineProgressbar.css">
<link rel="stylesheet" href="assets/css/prev.css" />
</head>
<body>

	<input type="hidden" name="svyno" id="svyno" value="${svyno}" />
	<input type="hidden" name="uuid" id="uuid" value="${uuid}" />
	
	<div style="padding: 300px 100px">
		<h2>추천 여행</h2>
		<div id="slider-div">
			<div class="slide">
				<div class="img-container">
					<img class="popbtn" src="assets/images/sky.jpeg" alt="단양패러글라이딩" />
					<a class="popbtn" href="">단양패러글라이딩</a>
				</div>
			</div>
			<div class="slide">
				<div class="img-container">
					<img class="popbtn" src="assets/images/sky.jpeg" alt="단양패러글라이딩" />
					<a class="popbtn" href="">단양패러글라이딩</a>
				</div>
			</div>
			<div class="slide">
				<div class="img-container">
					<img class="popbtn" src="assets/images/sky.jpeg" alt="단양패러글라이딩" />
					<a class="popbtn" href="">단양패러글라이딩</a>
				</div>
			</div>
			<div class="slide">
				<div class="img-container">
					<img class="popbtn" src="assets/images/sky.jpeg" alt="단양패러글라이딩" />
					<a class="popbtn" href="">단양패러글라이딩</a>
				</div>
			</div>
			<div class="slide">
				<div class="img-container">
					<img class="popbtn" src="assets/images/sky.jpeg" alt="단양패러글라이딩" />
					<a class="popbtn" href="">단양패러글라이딩</a>
				</div>
			</div>
			<div class="slide">
				<div class="img-container">
					<img class="popbtn" src="assets/images/sky.jpeg" alt="단양패러글라이딩" />
					<a class="popbtn" href="">단양패러글라이딩</a>
				</div>
			</div>
			<div class="slide">
				<div class="img-container">
					<img class="popbtn" src="assets/images/sky.jpeg" alt="단양패러글라이딩" />
					<a class="popbtn" href="">단양패러글라이딩</a>
				</div>
			</div>
			<div class="slide">
				<div class="img-container">
					<img class="popbtn" src="assets/images/sky.jpeg" alt="단양패러글라이딩" />
					<a class="popbtn" href="">단양패러글라이딩</a>
				</div>
			</div>
		</div>
	</div>
</body>
<div class="modal">
	<div class="modal-dialog">
		<div class="close-container">
			<span class="close" onclick="prev.closeModal(this)">&times;</span>
		</div>
		<div class="modal-content intro">
			<div id="progress" class="progress-bar" data-init="true"></div>
			
			<form class="form-wrap">
			
				<div class="flex-wrap">
					
				      <div class="intro-container">
				      	<h2>스쿨트립 방문을 환영합니다.</h2>
				        <p>교육여행 준비를 위한 질문에 대답해 주세요.</p>
						<p>여행사를 통한 가이드를 보내드리겠습니다.</p>
						<p><button class="start-btn">시작하기</button></p>
				      </div>
				</div>
			</form>
			<div class="button-wrap">
				<button class="prev-btn">이전</button>
				<button class="next-btn" onclick="saveSvy()">다음</button>
			</div>
		</div>
	</div>
</div>
<div class="modal-back"></div>
<script type="x-sv-template" id="svTemplate">
    <li>
      <h2>{{title}}</h2>
      <ul style="border: 1px solid #f2f2f2; margin-top: 40px">
		{{#if bogiList}}
			{{#each bogiList}}
          		{{#essay type1 bogiType odrno bogi}}
          		{{/essay}}
        	{{/each}}
			{{else}}
			<div>달력</div>
		{{/if}}
      </ul>
    </li>
  </script>
<script type="intro-template" id="introTemplate">
    <div class="flex-wrap">
      <div class="intro-container">
		<h2>스쿨트립 방문을 환영합니다.</h2>
        <p>교육여행 준비를 위한 질문에 대답해 주세요.</p>
		<p>여행사를 통한 가이드를 보내드리겠습니다.</p>
		<p><button class="start-btn">시작하기</button></p>
      </div>
    </div>
  </script>
<script type="text/javascript"
	src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#slider-div')
				.slick(
						{
							slide : 'div', //슬라이드 되어야 할 태그 ex) div, li
							infinite : false, //무한 반복 옵션
							slidesToShow : 4, // 한 화면에 보여질 컨텐츠 개수
							slidesToScroll : 4, //스크롤 한번에 움직일 컨텐츠 개수
							speed : 300, // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
							arrows : true, // 옆으로 이동하는 화살표 표시 여부
							dots : false, // 스크롤바 아래 점으로 페이지네이션 여부
							autoplay : false, // 자동 스크롤 사용 여부
							autoplaySpeed : 20000, // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
							pauseOnHover : true, // 슬라이드 이동	시 마우스 호버하면 슬라이더 멈추게 설정
							vertical : false, // 세로 방향 슬라이드 옵션
							prevArrow : "<button type='button' class='slick-prev'>Previous</button>", // 이전 화살표 모양 설정
							nextArrow : "<button type='button' class='slick-next'>Next</button>", // 다음 화살표 모양 설정
							dotsClass : 'slick-dots', //아래 나오는 페이지네이션(점) css class 지정
							draggable : true, //드래그 가능 여부

							responsive : [
							// 반응형 웹 구현 옵션
							{
								breakpoint : 960, //화면 사이즈 960px
								settings : {
									//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
									slidesToShow : 3,
								},
							}, {
								breakpoint : 768, //화면 사이즈 768px
								settings : {
									//위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
									slidesToShow : 2,
								},
							}, ],
						});
	});
</script>

<script src="assets/js/jquery.lineProgressbar.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.6/handlebars.min.js"></script>
<script src="assets/js/prev.js"></script>


<form name="hidForm" method="post" target="_hid_edumgt_">
<input type="hidden" name="hidsvyno" id="hidsvyno" value="${svyno}" />
<input type="hidden" name="hiduuid" id="hiduuid" value="${uuid}" />
<input type="hidden" name="hiduserans" id="hiduserans" />
<input type="hidden" name="hidemail" id="hidemail" />
<input type="hidden" name="hidusername" id="hidusername" />
</form>

<script>
function chkVal(_param){
	document.getElementById("hiduserans").value = document.getElementById("hiduserans").value + "#" + _param;
}

function chkVal2(_ck,_param){
	if ( _ck == false ) { 
		document.getElementById("hiduserans").value = document.getElementById("hiduserans").value.replace(_param,"");
	}else{
		document.getElementById("hiduserans").value = document.getElementById("hiduserans").value + "#" + _param;
	}

}

function chkVal3(_param,_no){
	
	document.getElementById("hiduserans").value = document.getElementById("hiduserans").value + "#" + _no + _param;

}



function saveSvy(){
	
	if ( document.getElementById("email") != null ) {
		document.getElementById("hidemail").value = document.getElementById("email").value;
		
	} 
	
	if ( document.getElementById("username") != null ) {
		document.getElementById("hidusername").value = document.getElementById("username").value;
		
	} 
	
	
	document.hidForm.action = "dynamicSvyRes";
	document.hidForm.submit();
	
	document.getElementById("hiduserans").value = "";
	
}
</script>
<iframe src="" id="_hid_edumgt_" name="_hid_edumgt_" style="border: 1px solid #eee; width: 1px; height: 1px"></iframe>



</body>
</html>

