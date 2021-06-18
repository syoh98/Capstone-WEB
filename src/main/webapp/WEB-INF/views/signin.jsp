<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HealthU :: 로그인</title>
</head>
<body>
	<%@include file="header.jsp"%>
	<header class="bg-primary text-black text-center">
		<section class="page-section portfolio" id="portfolio">
			<div class="container d-flex align-items-center flex-column">
				<h1>로그인</h1>
				<c:if test="&{not empty errorMsg}">
					<div style="color:#ff0000"> <h4> ${errorMsg}</h4> </div>
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
					<form method="post" action="<c:url value="signin"/>">
						<table style="margin-left: auto; margin-right: auto;">
							<tr style="border: 10px solid transparent">
								<td style="text-align: right">
									<h4 style="display: inline">E-MAILㅤ</h4>
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
</body>
</html>