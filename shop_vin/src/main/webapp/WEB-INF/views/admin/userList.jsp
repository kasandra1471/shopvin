<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- jstl core 쓸때 태그에 c 로 표시. -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- jstl fmt 쓸때 위와 같음.fmt : formatter 형식 맞춰서 표시 -->

<%@ include file="../includes/header.jsp"%>

<!-- Page Heading -->
<h1 class="h3 mb-2 text-gray-800"></h1>



<!-- DataTales Example -->

<div class="card shadow mb-4" style="margin: 0px 10%;">

	<div class="card-header py-3">
		
		<h6 class="m-0 font-weight-bold text-primary">회원관리</h6>

	</div>



	<div style="margin: 0px 10%;" class="card-body">
		<div class="table-responsive">
			<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
				
				
				<thead>
					<tr>
						<th>아이디</th>
						<th>비밀번호</th>
						
						<th>연락처</th>
						
						
						<!-- <th>Salary</th> -->
					</tr>
				</thead>

			 	<tbody>
					<c:forEach var="user" items="${list}">
						

						<tr>
						
							
							<td>
								<c:out value="${user.userId }" />
							</td>

							<td>
								<c:out value="${user.userPw }" />
							</td>
						
							<td>
								<c:out value="${user.userPhone }" />
							</td>

							
						</tr>

					</c:forEach>
				</tbody> 

			</table>

		



<%@ include file="../includes/footer.jsp"%>
