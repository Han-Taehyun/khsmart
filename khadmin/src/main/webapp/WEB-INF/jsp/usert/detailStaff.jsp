<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<jsp:include page="/WEB-INF/jsp/common/userinfo.jsp" />
<jsp:include page="/WEB-INF/jsp/common/menu.jsp" />
<form name="utprgform" id="utprgform" role="form" action="usertSave" method="post" enctype="multipart/form-data">
  <input name="sn" id="sn" type="hidden" value="${staffVO.sn}">
  <section id="main-content" class=" ">
    <section class="wrapper" style='margin-top: 60px; display: inline-block; width: 100%; padding: 15px 0 0 15px;'>
      <div class="col-lg-12">
        <section class="box ">
          <header class="panel_header">
            <h2 class="title pull-left">직원정보</h2>
            <div class="actions panel_actions pull-right">
              <i class="box_toggle fa fa-chevron-down"></i> <i class="box_setting fa fa-cog" data-toggle="modal"
                href="#section-settings"></i> <i class="box_close fa fa-times"></i>
            </div>
          </header>
          <div class="content-body">
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <table id="customers">
                  <tr>
                    <td class="tdl" style="width: 15%">이름</td>
                    <td style="width: 35%"><input name="username" id="username" type="text" class="form-control"
                      value="${staffVO.username}" required></td>
                    <td class="tdl" style="width: 10%">아이디/비번</td>
                    <td style="width: 30%"><input name="userid" id="userid" type="text" value="${staffVO.userid}"
                      style="width: 49%; height: 33px; border: 1px solid #ee3333" placeholder="아이디 입력" required>
                      <input name="userpw" id="userpw" type="text" value="${staffVO.userpw}"
                      style="width: 49%; height: 33px; border: 1px solid #ee3333" placeholder="비번 입력" required></td>
                  </tr>
                  <tr>
                    <td class="tdl" style="width: 15%">단체</td>
                    <td><select class="form-control" name="etcgoid">
                    <c:forEach var="item" items="${etcgoList}">
                      <option value="${item.sn}" <c:if test="${staffVO.etcgoid eq item.sn}">selected</c:if>>${item.elsname}</option>
                    </c:forEach>
                    </select></td>
                    <td class="tdl" style="width: 15%">직원타입</td>
                    <td style="width: 35%"><select name="usertypecode" class="form-control" style="width: 200px">
                        <c:forEach var="usercode" items="${usercodeList}">
                          <option value="${usercode.code}"
                            <c:if test="${staffVO.codename eq usercode.codename}">selected</c:if>>${usercode.codename}</option>
                        </c:forEach>
                    </select></td>
                  </tr>
                  <tr>
                    <td class="tdl" style="width: 15%">Mobile</td>
                    <td style="width: 35%"><input name="mobile" class="form-control" value="${staffVO.mobile}"
                      required></td>
                    <td class="tdl" style="width: 15%">Email</td>
                    <td style="width: 35%"><input name="email" class="form-control" value="${staffVO.email}"
                      required></td>
                  </tr>
                </table>
              </div>
            </div>
            <div class="form-group" style="margin-top: 20px">
              <button type="button" class="btn btn-primary" onclick="goList()">목록</button>
              <c:if test="${USERTYPE eq 'SA'}">
                <button type="button" class="btn btn-secondary" onclick="location.href='staffDelete?sn=${staffVO.sn}'">삭제</button>
              </c:if>
              <button type="submit" class="btn btn-danger">저장</button>
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
  function goList() {
    if (confirm('수정하신 정보는 저장되지 않습니다. 정말 목록으로 나가시겠습니까?')) {
      location.href = "staffList";
    } else {
      return false;
    }
  }
</script>
<!-- START CONTENT -->
<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
