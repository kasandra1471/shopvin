<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/security/tags"  prefix="sec"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 샘플 all 권한 페이지
</h1>


<sec:authorize access="isAnonymous()">
	<a href="/customLogin">로그인</a>
	<p>익명의 사용자의 경우</p>
</sec:authorize>

<sec:authorize access="isAuthenticated()">
	<a href="/customLogout">로그아웃</a>
	<p>인증된 사용자면 true</p>
</sec:authorize>

</body>
</html>