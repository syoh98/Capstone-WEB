<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- Favicons, 홈 페이지 아이콘 -->
<link rel="icon" href="resources/images/favicon.ico">

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/styles.css" rel="stylesheet" />
<link href="resources/css/carousel.css" rel="stylesheet" />

</head>
<body>

	<nav class="navbar navbar-expand-lg bg-secondary fixed-top"
		id="mainNav">
		<div class="container-fluid">
			<!--  페이지 위로 올라감. -->
			<a class="navbar-brand js-scroll-trigger"
				href="${pageContext.request.contextPath}/"> <!--"#page-top"-->HealthU
			</a>
			<button
				class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded"
				type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav me-auto mb-2 mb-md-0">
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/about">About</a></li>
					<li class="nav-item dropdown"><a class="nav-link"
						href="${pageContext.request.contextPath}/workout">Workout</a>
						<div class="dropdown-content">
							<a href="${pageContext.request.contextPath}/choice">Choice</a> <a
								href="${pageContext.request.contextPath}/collection">Collection</a>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/shop">Character Store</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/mypage">My Page</a></li>
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/settings">Settings</a></li>
				</ul>
			</div>

		</div>
		<div class="collapse navbar-collapse" id="navbarResponsive"
			style="float: right">
			<ul class="navbar-nav">
				<li class="nav-item">
				<c:if test="${pageContext.request.userPrincipal.name == null }">
					<a class="nav-link" href="${pageContext.request.contextPath}/login">LOGIN</a>
				</c:if>
				</li>
				<li class="nav-item" id="logoutForm">
					<c:if test="${pageContext.request.userPrincipal.name != null }">
						<a href="javascript:{document.getElementById('logout').submit()}" class="nav-link">LOGOUT</a>
					</c:if></li>
				<li class="nav-item">
				<c:if test="${pageContext.request.userPrincipal.name == null }">
				<a class="nav-link" href="${pageContext.request.contextPath}/signup">SIGNUP</a>
				</c:if>
				</li>
			</ul>
			<form id="logout" action="<c:url value="/logout"/>" method="post">
				<input type="hidden" name="${_csrf.parameterName }"
					value="${_csrf.token }" />
			</form>
		</div>
	</nav>
</body>
</html>