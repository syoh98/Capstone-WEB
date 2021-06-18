<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<!-- Favicons, 홈 페이지 아이콘 -->
<link rel="icon" href="resources/images/favicon.ico">

<!-- Vendor CSS Files -->
<link href="css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/icofont/icofont.min.css" rel="stylesheet">
<link href="css/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="css/animate.css/animate.min.css" rel="stylesheet">
<link href="css/owl.carousel/assets/owl.carousel.min.css"
   rel="stylesheet">
<link href="css/venobox/venobox.css" rel="stylesheet">

<title>HealthU :: 로그인</title>
</head>
<body style="background-color:#1a252f">
	<%@include file="header.jsp"%>
	<header class="bg-primary text-black text-center">
		<section class="page-section portfolio" id="portfolio">
			<div class="container d-flex align-items-center flex-column">
				<h1>로그인</h1>
				<c:if test="&{not empty errorMsg}">
					<div style="color:#ff0000"> <h4> ${errorMsg}</h4> </div>
				</c:if>
				
				<c:if test="&{not empty logoutMsg}">
					<div style="color:#0000ff"> <h4> ${logoutMsg}</h4> </div>
				</c:if>
			</div>

			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-cat"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>



			<div class="table-responsive control-group">
				<div class="form-group floating-label-form-group controls mb-0 pb-2">
					<form method="post" action="<c:url value="login"/>">
						<table style="margin-left: auto; margin-right: auto;">
							<tr style="border: 10px solid transparent">
								<td style="text-align: right">
									<h4 style="display: inline">IDㅤ</h4>
								</td>
								<td><input type="text" id="username" name="username"
									class="form-control" placeholder="Username"
									style="background-color: white; width: 250px;" />
							</tr>
							<tr>
								<td style="text-align: right">
									<h4 style="display: inline">PWㅤ</h4>
								</td>
								<td><input type="password" id="password" name="password"
									class="form-control" placeholder="Password"
									style="background-color: white; width: 250px;" />
							</tr>
							<tr>
								<td colspan="2"><br> <input type="hidden"
									name="${_csrf.parameterName}" value="${_csrf.token}" />
									<button class="btn btn-primary btn-xl" id="sendLoginButton"
										type="submit">로그인</button></td>
							</tr>
						</table>
					</form>
				</div>

			</div>

		</section>
	</header>
	
	<!-- Footer-->
   <%@include file="footer.jsp"%>
	

</body>
</html>