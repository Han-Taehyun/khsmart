<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

<!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START -->
<link href="assets/plugins/calendar/fullcalendar.css"
	rel="stylesheet" type="text/css" media="screen" />
<link href="assets/plugins/icheck/skins/minimal/minimal.css"
	rel="stylesheet" type="text/css" media="screen" />
<!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END -->


<section id="main-content" class=" ">
	<section class="wrapper" style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>



		<div class="col-lg-12">
			<section class="box nobox">
				<div class="content-body">


					<div class="row">


						<div id='calendar' class="col-md-12 col-sm-9 col-xs-9"></div>

					</div>
				</div>
			</section>
		</div>



	</section>
</section>

<script src="assets/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="assets/js/jquery.form.js" type="text/javascript"></script>
<script src="assets/js/jquery.easing.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"
	type="text/javascript"></script>
<script src="assets/plugins/pace/pace.min.js" type="text/javascript"></script>
<script src="assets/plugins/perfect-scrollbar/perfect-scrollbar.min.js"
	type="text/javascript"></script>
<script src="assets/plugins/viewport/viewportchecker.js"
	type="text/javascript"></script>
<!-- CORE JS FRAMEWORK - END -->


<!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START -->
<script src="assets/plugins/datepicker/js/datepicker.js"
	type="text/javascript"></script>
<script src="assets/plugins/inputmask/jquery.inputmask.bundle.min.js"
	type="text/javascript"></script>
<script src="assets/plugins/autonumeric/autoNumeric.js"
	type="text/javascript"></script>


<script
	src="assets/plugins/bootstrap3-wysihtml5/js/bootstrap3-wysihtml5.all.js"
	type="text/javascript"></script>
<script
	src="assets/plugins/bootstrap3-wysihtml5/locales/bootstrap-wysihtml5.ko-KR.js"
	type="text/javascript"></script>


<script src="assets/plugins/calendar/moment.min.js"
	type="text/javascript"></script>
<script src="assets/plugins/jquery-ui/smoothness/jquery-ui.min.js"
	type="text/javascript"></script>
<script src="assets/plugins/calendar/fullcalendar.min.js"
	type="text/javascript"></script>
<script src="assets/plugins/icheck/icheck.min.js"
	type="text/javascript"></script>


<script src="assets/plugins/sparkline-chart/jquery.sparkline.min.js"
	type="text/javascript"></script>
<script src="assets/js/chart-sparkline.js" type="text/javascript"></script>
<!-- Sidebar Graph - END -->


<script>
jQuery(function($) {

    'use strict';

    var ULTRA_SETTINGS = window.ULTRA_SETTINGS || {};


    ULTRA_SETTINGS.windowBasedLayout = function() {
        var width = window.innerWidth;
        //console.log(width);

        if ($("body").hasClass("chat-open") || $("body").hasClass("sidebar-collapse")) {

            ULTRA_SETTINGS.mainmenuCollapsed();

        } else if (width < 1025) {

            // small window
            $(".page-topbar").addClass("sidebar_shift").removeClass("chat_shift");
            $(".page-sidebar").addClass("collapseit").removeClass("expandit");
            $("#main-content").addClass("sidebar_shift").removeClass("chat_shift");
            $(".page-chatapi").removeClass("showit").addClass("hideit");
            $(".chatapi-windows").removeClass("showit").addClass("hideit");
            ULTRA_SETTINGS.mainmenuCollapsed();

        } else {

            // large window
            $(".page-topbar").removeClass("sidebar_shift chat_shift");
            $(".page-sidebar").removeClass("collapseit chat_shift");
            $("#main-content").removeClass("sidebar_shift chat_shift");
            ULTRA_SETTINGS.mainmenuScroll();
        }


    }



    


    /*--------------------------------
         Login Page
     --------------------------------*/
    ULTRA_SETTINGS.loginPage = function() {

        var height = window.innerHeight;
        var formheight = $("#login").height();
        var newheight = (height - formheight) / 2;
        //console.log(height+" - "+ formheight + " / "+ newheight);
        $('#login').css('margin-top', +newheight + 'px');

        if ($('#login #user_login').length) {
            var d = document.getElementById('user_login');
            d.focus();
        }

    };



    /*--------------------------------
         Search Page
     --------------------------------*/
    ULTRA_SETTINGS.searchPage = function() {

        $('.search_data .tab-pane').perfectScrollbar({
            suppressScrollX: true
        });
        var search = $(".search-page-input");
        if (search.length) {
            search.focus();
        }
    };


    /*--------------------------------
        Viewport Checker
     --------------------------------*/
    ULTRA_SETTINGS.viewportElement = function() {

        if ($.isFunction($.fn.viewportChecker)) {

            $('.inviewport').viewportChecker({
                callbackFunction: function(elem, action) {
                    //setTimeout(function(){
                    //elem.html((action == "add") ? 'Callback with 500ms timeout: added class' : 'Callback with 500ms timeout: removed class');
                    //},500);
                }
            });


            $('.number_counter').viewportChecker({
                classToAdd: 'start_timer',
                offset: 10,
                callbackFunction: function(elem) {
                    $('.start_timer:not(.counted)').each(count);
                    //$(elem).removeClass('number_counter');
                }
            });

        }

        // start count
        function count(options) {
            var $this = $(this);
            options = $.extend({}, options || {}, $this.data('countToOptions') || {});
            $this.countTo(options).addClass("counted");
        }
    };



    


    /*--------------------------------
         Breadcrumb autoHidden
     --------------------------------*/
    ULTRA_SETTINGS.breadcrumbAutoHidden = function() {

        $('.breadcrumb.auto-hidden a').on('mouseover', function() {
            $(this).removeClass("collapsed");
        });
        $('.breadcrumb.auto-hidden a').on('mouseout', function() {
            $(this).addClass("collapsed");
        });

    };





    /*--------------------------------
         Section Box Actions
     --------------------------------*/
    ULTRA_SETTINGS.sectionBoxActions = function() {

        $('section.box .actions .box_toggle').on('click', function() {

            var content = $(this).parent().parent().parent().find(".content-body");
            if (content.hasClass("collapsed")) {
                content.removeClass("collapsed").slideDown(500);
                $(this).removeClass("fa-chevron-up").addClass("fa-chevron-down");
            } else {
                content.addClass("collapsed").slideUp(500);
                $(this).removeClass("fa-chevron-down").addClass("fa-chevron-up");
            }

        });

        $('section.box .actions .box_close').on('click', function() {
            content = $(this).parent().parent().parent().remove();
        });



    };






    /*--------------------------------
         Main Menu Scroll
     --------------------------------*/
    ULTRA_SETTINGS.mainmenuScroll = function() {

        //console.log("expand scroll menu");

        var topbar = $(".page-topbar").height();
        var projectinfo = $(".project-info").innerHeight();

        var height = window.innerHeight - topbar - projectinfo;

        $('#main-menu-wrapper').height(height).perfectScrollbar({
            suppressScrollX: true
        });
        $("#main-menu-wrapper .wraplist").height('auto');


        /*show first sub menu of open menu item only - opened after closed*/
        // > in the selector is used to select only immediate elements and not the inner nested elements.
        $("li.open > .sub-menu").attr("style", "display:block;");


    };


    /*--------------------------------
         Collapsed Main Menu
     --------------------------------*/
    ULTRA_SETTINGS.mainmenuCollapsed = function() {

        if ($(".page-sidebar.chat_shift #main-menu-wrapper").length > 0 || $(".page-sidebar.collapseit #main-menu-wrapper").length > 0) {
            //console.log("collapse menu");
            var topbar = $(".page-topbar").height();
            var windowheight = window.innerHeight;
            var minheight = windowheight - topbar;
            var fullheight = $(".page-container #main-content .wrapper").height();

            var height = fullheight;

            if (fullheight < minheight) {
                height = minheight;
            }

            $('#main-menu-wrapper').perfectScrollbar('destroy');

            $('.page-sidebar.chat_shift #main-menu-wrapper .wraplist, .page-sidebar.collapseit #main-menu-wrapper .wraplist').height(height);

            /*hide sub menu of open menu item*/
            $("li.open .sub-menu").attr("style", "");

        }

    };




    /*--------------------------------
         Main Menu
     --------------------------------*/
    ULTRA_SETTINGS.mainMenu = function() {
        $('#main-menu-wrapper li a').click(function(e) {

            if ($(this).next().hasClass('sub-menu') === false) {
                return;
            }

            var parent = $(this).parent().parent();
            var sub = $(this).next();

            parent.children('li.open').children('.sub-menu').slideUp(200);
            parent.children('li.open').children('a').children('.arrow').removeClass('open');
            parent.children('li').removeClass('open');

            if (sub.is(":visible")) {
                $(this).find(".arrow").removeClass("open");
                sub.slideUp(200);
            } else {
                $(this).parent().addClass("open");
                $(this).find(".arrow").addClass("open");
                sub.slideDown(200);
            }

        });

        $("body").click(function(e) {
            $(".page-sidebar.collapseit .wraplist li.open .sub-menu").attr("style","");
            $(".page-sidebar.collapseit .wraplist li.open").removeClass("open");
            $(".page-sidebar.chat_shift .wraplist li.open .sub-menu").attr("style","");
            $(".page-sidebar.chat_shift .wraplist li.open").removeClass("open");
        });

    };



    
    ULTRA_SETTINGS.pageTopBar = function() {
        $('.page-topbar li.searchform .input-group-addon').click(function(e) {
            $(this).parent().parent().toggleClass("focus");
            $(this).parent().find("input").focus();
        });

        $('.page-topbar li .dropdown-menu .list').perfectScrollbar({
            suppressScrollX: true
        });

    };


    /*--------------------------------
         Extra form settings
     --------------------------------*/
    ULTRA_SETTINGS.extraFormSettings = function() {

        // transparent input group focus/blur
        $('.input-group .form-control').focus(function(e) {
            $(this).parent().find(".input-group-addon").addClass("input-focus");
            $(this).parent().find(".input-group-btn").addClass("input-focus");
        });

        $('.input-group .form-control').blur(function(e) {
            $(this).parent().find(".input-group-addon").removeClass("input-focus");
            $(this).parent().find(".input-group-btn").removeClass("input-focus");
        });

    };



    

    
    
    ULTRA_SETTINGS.loadPrettyPhoto = function() {

        if ($.isFunction($.fn.prettyPhoto)) {
            //Pretty Photo
            $("a[rel^='prettyPhoto']").prettyPhoto({
                social_tools: false
            });
        }
    };




    

    /*--------------------------------
         Tocify
     --------------------------------*/
    ULTRA_SETTINGS.tocifyScrollMenu = function() {
        if ($.isFunction($.fn.tocify)) {
            var toc = $("#toc").tocify({
                selectors: "h2,h3,h4,h5",
                context: ".tocify-content",
                extendPage: false
            }).data("toc-tocify");
        }
    };



    /*--------------------------------
         Full Calendar
     --------------------------------*/
    ULTRA_SETTINGS.uiCalendar = function() {


        if ($.isFunction($.fn.fullCalendar)) {

            /* initialize the external events
                 -----------------------------------------------------------------*/

            $('#external-events .fc-event').each(function() {

                // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
                // it doesn't need to have a start or end
                var eventObject = {
                    title: $.trim($(this).text()) // use the element's text as the event title
                };

                // store the Event Object in the DOM element so we can get to it later
                $(this).data('eventObject', eventObject);

                // make the event draggable using jQuery UI
                $(this).draggable({
                    zIndex: 999,
                    revert: true, // will cause the event to go back to its
                    revertDuration: 0 //  original position after the drag
                });

            });


            /* initialize the calendar
             -----------------------------------------------------------------*/

            var date = new Date();
            var d = date.getDate();
            var m = date.getMonth();
            var y = date.getFullYear();

            $('#calendar').fullCalendar({
                
				
				
				header: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'month,agendaWeek,agendaDay'
                },
				
				views: {
					month: { // name of view
					  titleFormat: 'YYYY.MM.DD'
					  // other view-specific options here
					}
				  },
				  
                editable: true,
                eventLimit: true, // allow "more" link when too many events
                droppable: false, // this allows things to be dropped onto the calendar !!!
                
				
				
				 
				  
				
				
				
				
				
                events: [ 
				
                	
                <c:forEach var="listview" items="${listview}" varStatus="status">
					
                {
                    id: <c:out value="${listview.sn}" />,
                    
					<c:if test="${'0' eq listview.mi}">
					title: '<c:out value="${listview.hh}" />:0<c:out value="${listview.mi}" /> <c:out value="${listview.status}" /> / <c:out value="${listview.companyname}" /> / <c:out value="${listview.userid}" />',
					</c:if>
					
					<c:if test="${'0' ne listview.mi}">
					title: '<c:out value="${listview.hh}" />:<c:out value="${listview.mi}" /> <c:out value="${listview.status}" /> / <c:out value="${listview.companyname}" /> / <c:out value="${listview.userid}" />',
                    </c:if>
					
					
                    <c:if test="${'0' eq listview.ddd}">
                    start: new Date(y, m, d, <c:out value="${listview.hh}" />, <c:out value="${listview.mi}" />),
                    </c:if>
					
                    <c:if test="${'0' ne listview.ddd}">
                    start: new Date(y, m, d <c:out value="${listview.ddd}" />, <c:out value="${listview.hh}" />, <c:out value="${listview.mi}" />),
                    </c:if>
                    
                    
                    allDay: false,
					
					<c:if test="${listview.userid ne ''}">

					
						<c:if test="${'예약' eq listview.status}">
						color: '#5555dd',
						url: "javascript:winpopup('<c:out value="${listview.sn}" />')"
						</c:if>
						
						<c:if test="${'완료' eq listview.status}">
						color: '#55dd55',
						url: "javascript:winpopup('<c:out value="${listview.sn}" />')"
						</c:if>
						
						
					
					</c:if>
					
					
					<c:if test="${listview.userid eq ''}">
					color: '#dd5555',
					url: "javascript:winpopup('<c:out value="${listview.sn}" />')"
					</c:if>
					
					
					
					
                }, 
                
                </c:forEach>
				
				
				],
            
			
			
				dayClick: function (date, jsEvent, view) {
                    
					winpopup2(date.format());
					
					
                }
			
			
			
			
			});




            $("#add_event_form").on('submit', function(ev) {
                ev.preventDefault();

                var $event = $(this).find('.new-event-form'),
                    event_name = $event.val();

                if (event_name.length >= 3) {

                    var newid = "new" + "" + Math.random().toString(36).substring(7);
                    // Create Event Entry
                    $("#external-events").append(
                        '<div id="' + newid + '" class="fc-event bg-orange">' + event_name + '</div>'
                    );


                    var eventObject = {
                        title: $.trim($("#" + newid).text()) // use the element's text as the event title
                    };

                    // store the Event Object in the DOM element so we can get to it later
                    $("#" + newid).data('eventObject', eventObject);

                    // Reset draggable
                    $("#" + newid).draggable({
                        revert: true,
                        revertDuration: 0,
                        zIndex: 999
                    });

                    // Reset input
                    $event.val('').focus();
                } else {
                    $event.focus();
                }
            });



        }

    };



    
    ULTRA_SETTINGS.tooltipsPopovers = function() {

        $('[rel="tooltip"]').each(function() {
            var animate = $(this).attr("data-animate");
            var colorclass = $(this).attr("data-color-class");
            $(this).tooltip({
                template: '<div class="tooltip ' + animate + ' ' + colorclass + '"><div class="tooltip-arrow"></div><div class="tooltip-inner"></div></div>'
            });
        });

        $('[rel="popover"]').each(function() {
            var animate = $(this).attr("data-animate");
            var colorclass = $(this).attr("data-color-class");
            $(this).popover({
                template: '<div class="popover ' + animate + ' ' + colorclass + '"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>'
            });
        });

    };





    



    // Element Attribute Helper
    function getValue($el, data_var, default_val) {
        if (typeof $el.data(data_var) != 'undefined') {
            return $el.data(data_var);
        }

        return default_val;
    }


    /******************************
     initialize respective scripts 
     *****************************/
    $(document).ready(function() {
        ULTRA_SETTINGS.windowBasedLayout();
        ULTRA_SETTINGS.mainmenuScroll();
        ULTRA_SETTINGS.mainMenu();
        ULTRA_SETTINGS.mainmenuCollapsed();
        ULTRA_SETTINGS.pageTopBar();
        
        
        
        
        ULTRA_SETTINGS.extraFormSettings();
        ULTRA_SETTINGS.tooltipsPopovers();
        
        ULTRA_SETTINGS.uiCalendar();
        ULTRA_SETTINGS.tocifyScrollMenu();
        ULTRA_SETTINGS.loadPrettyPhoto();

        
        ULTRA_SETTINGS.breadcrumbAutoHidden();
        
        
        
        ULTRA_SETTINGS.sectionBoxActions();
        
        ULTRA_SETTINGS.viewportElement();
        ULTRA_SETTINGS.searchPage();
        
        
        
        
    });

    $(window).resize(function() {
        ULTRA_SETTINGS.windowBasedLayout();
        
        
        ULTRA_SETTINGS.loginPage();
        
    });

    $(window).load(function() {
        
        ULTRA_SETTINGS.loginPage();
    });

});


</script>

<script>
function winpopup(_a){
window.open("vwcal?sn="+_a, "_blank", "toolbar=no,scrollbars=yes,resizable=yes,left=30,top=30,width=600,height=600");
}	
</script>

<script>
function winpopup2(_a){
window.open("newcal?ymd="+_a, "_blank", "toolbar=no,scrollbars=yes,resizable=yes,left=30,top=30,width=600,height=600");
}	
</script>

<jsp:include page="/WEB-INF/jsp/common/footerModalScript.jsp" />

</body>

</html>











