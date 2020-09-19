<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />

            <section id="main-content" class=" ">
                <section class="wrapper" style='margin-top:60px;display:inline-block;width:100%;padding:15px 0 0 15px;'>

                    <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>
                        <div class="page-title" style="display:none">

                            <div class="pull-left">
                                <h1 class="title">권한 공지</h1>                            </div>


                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="col-lg-12">
                        <section class="box ">
                            <header class="panel_header">
                                <h2 class="title pull-left">해당 모듈에 대한 권한이 없습니다.</h2>
                                <div class="actions panel_actions pull-right">
                                    <i class="box_toggle fa fa-chevron-down"></i>
                                    <i class="box_setting fa fa-cog" data-toggle="modal" ></i>
                                    <i class="box_close fa fa-times"></i>
                                </div>
                            </header>
                            <div class="content-body">    
                            	<div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">

                                        	해당 모듈에 대한 권한이 없거나 서버 재기동에 따라 세션이 종료되었습니다.<br>
                                        	관리자에게 문의 하시기 바랍니다.

                                    </div>
                                </div>
                            </div>
                        </section>
                    </div>

                    



                </section>
            </section>
            <!-- END CONTENT -->
            
            
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />


