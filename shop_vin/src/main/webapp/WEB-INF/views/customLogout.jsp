<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>

<%@ include file="includes/header.jsp"%>

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<h1>로그아웃 페이지</h1>
			<h2>${error}</h2>
			<h2>${logout }</h2>
			
			<div class="panel-body">
				<form role="form" method="post" action="/customLogout">
				
									
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<button >로그아웃</button>			
				</form>
				<!-- 겟 방식으로 로그아웃 페이지에 접근하고, 로그아웃 버튼을 누르면 포스트 방식으로 처리 -->
			</div>
		</div>
	</div>
</div>



<!-- 로그아웃 파라미터 값이 있다면, 로그아웃 안내창 표시 -->




<%@ include file="includes/footer.jsp"%>
