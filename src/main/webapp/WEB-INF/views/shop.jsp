<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource
	url="jdbc:mysql://gaemiserver.cytl6yb1z2sv.ap-northeast-2.rds.amazonaws.com:3306/webservice?characterEncoding=UTF-8&serverTimezone=Asia/Seoul"
	driver="com.mysql.cj.jdbc.Driver" user="admin" password="98747100"
	var="user_character" scope="page" />
<%-- <sql:query sql="select * from user_character" var="user_character" dataSource="${user_character}"/>
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="resources/images/favicon.ico">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>HealthU :: Store</title>
</head>
<style>
.btn-buy2 {
	border: 1px solid rgba(220, 242, 255, 50);
	color: rgba(220, 242, 255, 50);
	padding: 0.5rem 1.5rem;
	display: inline-block;
	font-weight: 400;
	text-align: center;
	vertical-align: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	font-size: 1rem;
	line-height: 1.5;
	border-radius: 0.5rem;
	opacity: 0.5;
}
</style>
<body id="page-top" style="background-color: #1a252f">
	<!-- Navigation-->
	<%@include file="header.jsp"%>
	<!-- Masthead-->
	<!--  <header
		class="masthead justify-content-center bg-primary text-dark text-center">
		<div class="container d-flex align-items-center flex-column">
			
		</div>
	</header> -->
	<!-- </header> -->

	<!-- Portfolio Section-->
	<section class="page-section portfolio bg-primary" id="portfolio">
		<div class="container">
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">
				캐릭터 목록</h2>

			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-heart"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>

			<div style="text-align: right;">

				<h3>
					<i class="fas fa-coins goldie"></i>
					<%-- <c:forEach var="user" items="${user}">
						<c:out value="${user.point}"></c:out>
						<c:set var="user" value='${request.getParameter("user.point") }'/>
					</c:forEach> --%>
							<c:out value="${user.point}"></c:out>
							<c:set var="user_point"
								value='${request.getParameter("user.point") }' />
				</h3>
				<div id="test"></div>
				<br> <br>
			</div>

			<!-- Portfolio Grid Items-->
			<div class="row justify-content-center" style="text-align: center">

				<div class="col-md-6-2">
					<table style="border-spacing: 0px 20px;">
						<tr>
							<td style="padding: 5px 10px 15px;">
								<!-- Portfolio Item 1--> <sf:form method="post"
									action="${pageContext.request.contextPath}/buyCheese"
									modelAttribute="user">

									<div id="cheeseAeong" class="">
										<img class="img-fluid"
											src="resources/images/characterImage/aeong_cheese.png"
											alt="..." />
										<h3 style="text-align: center">치즈 애옹</h3>
										<h6 style="text-align: center">
											<i class="fas fa-coins goldie"></i>
											<c:out value="${cheeseAeong.price }"></c:out>
											<c:set var="cheese_price"
												value='${request.getParameter("cheeseAeong.price") }' />

											<c:set var="user_point_total"
												value="${user.point - cheeseAeong.price }" />
											<%-- <c:out value="${user_point_total }"/> --%>

											<sf:input type="text" class="form-control" id="point"
												value="${user_point_total }"
												style="background-color: white; width:250px; display:none;"
												path="point" />
											<sf:input type="text" class="form-control" id="id"
												value="${user.id }"
												style="background-color: white; width:250px; display:none;"
												path="id" />
											<sf:input type="text" class="form-control" id="user_id"
												value="${user.user_id }"
												style="background-color: white; width:250px; display:none;"
												path="user_id" />
											<sf:input type="text" class="form-control" id="username"
												value="${user.username }"
												style="background-color: white; width:250px; display:none;"
												path="username" />
											<sf:input type="text" class="form-control" id="password"
												value="${user.password }"
												style="background-color: white; width:250px; display:none;"
												path="password" />
											<sf:input type="text" class="form-control" id="enabled"
												value="${user.enabled }"
												style="background-color: white; width:250px; display:none;"
												path="enabled" />
											<sf:input type="text" class="form-control" id="gender"
												value="${user.gender }"
												style="background-color: white; width:250px; display:none;"
												path="gender" />
											<sf:input type="text" name="height" id="height"
												onkeypress="isNumber()" class="form-control2"
												value="${user.height }"
												style="background-color: white; width: 200px; display:none;"
												path="height" />
											<sf:input type="text" name="weight" id="weight"
												onkeypress="isNumber()" class="form-control2"
												value="${user.weight }"
												style="background-color: white; width: 200px; display:none;"
												path="weight" />
											<sf:input type="text" name="profile_character"
												id="profile_character" class="form-control2"
												value="${user.profile_character }"
												style="background-color: white; width: 200px; display:none;"
												path="profile_character" />


											<sf:input type="text" class="form-control"
												id="getCheeseAeong" value="1"
												style="background-color: white; width:250px; display:none;"
												path="cheeseAeong" />
											<sf:input type="text" class="form-control" id="getBlackAeong"
												value="${user.blackAeong }"
												style="background-color: white; width:250px; display:none;"
												path="blackAeong" />
											<sf:input type="text" class="form-control" id="getBanana"
												value="${user.banana }"
												style="background-color: white; width:250px; display:none;"
												path="banana" />
											<sf:input type="text" class="form-control" id="getCookies"
												value="${user.cookies }"
												style="background-color: white; width:250px; display:none;"
												path="cookies" />
											<sf:input type="text" class="form-control" id="getMilitary"
												value="${user.military }"
												style="background-color: white; width:250px; display:none;"
												path="military" />
											<sf:input type="text" class="form-control"
												id="getGongdaesang" value="${user.gongdaesang }"
												style="background-color: white; width:250px; display:none;"
												path="gongdaesang" />
											<sf:input type="text" class="form-control" id="getHaribo"
												value="${user.haribo }"
												style="background-color: white; width:250px; display:none;"
												path="haribo" />
											<sf:input type="text" class="form-control" id="getBoogi"
												value="${user.boogi }"
												style="background-color: white; width:250px; display:none;"
												path="boogi" />
											<sf:input type="text" class="form-control" id="getWoody"
												value="${user.woody }"
												style="background-color: white; width:250px; display:none;"
												path="woody" />
											<sf:input type="text" class="form-control" id="getSue"
												value="${user.sue }"
												style="background-color: white; width:250px; display:none;"
												path="sue" />
											<sf:input type="text" class="form-control"
												id="getHanbok" value="${user.hanbok }"
												style="background-color: white; width:250px; display:none;"
												path="hanbok" />
											<sf:input type="text" class="form-control"
												id="getDftChar" value="${user.dftChar }"
												style="background-color: white; width:250px; display:none;"
												path="dftChar" />
											<sf:input type="text" class="form-control"
												id="getRapunzel" value="${user.rapunzel }"
												style="background-color: white; width:250px; display:none;"
												path="rapunzel" />
											<sf:input type="text" class="form-control"
												id="getRapunzel" value="${user.rapunzel }"
												style="background-color: white; width:250px; display:none;"
												path="rapunzel" />
										</h6>
										<c:choose>
											<c:when test="${user.cheeseAeong == 0 }">
												<c:choose>
													<c:when test="${user.point >= cheeseAeong.price }">
														<button type="submit" class="btn-buy">구입</button>
													</c:when>
													<c:otherwise>
														<button type="submit" class="btn-buy2" disabled="disabled"
															style="background-color: gray">구입불가</button>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<button type="submit" class="btn-buy2" disabled="disabled"
													style="background-color: gray">구매완료</button>
											</c:otherwise>
										</c:choose>

									</div>
								</sf:form>
							</td>

							<td style="padding: 5px 10px 15px;">
								<!-- Portfolio Item 2--> <sf:form method="post"
									action="${pageContext.request.contextPath}/buyBlack"
									modelAttribute="user">
									<div class="">
										<img class="img-fluid"
											src="resources/images/characterImage/aeong_tuxedo.png"
											alt="..." />
										<h3 style="text-align: center">턱시도 애옹</h3>
										<h6 style="text-align: center">
											<i class="fas fa-coins goldie"></i>
											<c:out value="${blackAeong.price }"></c:out>
											<c:set var="black_price"
												value='${request.getParameter("blackAeong.price") }' />

											<c:set var="user_point_total"
												value="${user.point - blackAeong.price }" />

											<sf:input type="text" class="form-control" id="point"
												value="${user_point_total }"
												style="background-color: white; width:250px; display:none;"
												path="point" />
											<sf:input type="text" class="form-control" id="id"
												value="${user.id }"
												style="background-color: white; width:250px; display:none;"
												path="id" />
											<sf:input type="text" class="form-control" id="user_id"
												value="${user.user_id }"
												style="background-color: white; width:250px; display:none;"
												path="user_id" />
											<sf:input type="text" class="form-control" id="username"
												value="${user.username }"
												style="background-color: white; width:250px; display:none;"
												path="username" />
											<sf:input type="text" class="form-control" id="password"
												value="${user.password }"
												style="background-color: white; width:250px; display:none;"
												path="password" />
											<sf:input type="text" class="form-control" id="enabled"
												value="${user.enabled }"
												style="background-color: white; width:250px; display:none;"
												path="enabled" />
											<sf:input type="text" class="form-control" id="gender"
												value="${user.gender }"
												style="background-color: white; width:250px; display:none;"
												path="gender" />
											<sf:input type="text" name="height" id="height"
												onkeypress="isNumber()" class="form-control2"
												value="${user.height }"
												style="background-color: white; width: 200px; display:none;"
												path="height" />
											<sf:input type="text" name="weight" id="weight"
												onkeypress="isNumber()" class="form-control2"
												value="${user.weight }"
												style="background-color: white; width: 200px; display:none;"
												path="weight" />
											<sf:input type="text" name="profile_character"
												id="profile_character" class="form-control2"
												value="${user.profile_character }"
												style="background-color: white; width: 200px; display:none;"
												path="profile_character" />


											<sf:input type="text" class="form-control"
												id="getCheeseAeong" value="${user.cheeseAeong }"
												style="background-color: white; width:250px; display:none;"
												path="cheeseAeong" />
											<sf:input type="text" class="form-control" id="getBlackAeong"
												value="1"
												style="background-color: white; width:250px; display:none;"
												path="blackAeong" />
											<sf:input type="text" class="form-control" id="getBanana"
												value="${user.banana }"
												style="background-color: white; width:250px; display:none;"
												path="banana" />
											<sf:input type="text" class="form-control" id="getCookies"
												value="${user.cookies }"
												style="background-color: white; width:250px; display:none;"
												path="cookies" />
											<sf:input type="text" class="form-control" id="getMilitary"
												value="${user.military }"
												style="background-color: white; width:250px; display:none;"
												path="military" />
											<sf:input type="text" class="form-control"
												id="getGongdaesang" value="${user.gongdaesang }"
												style="background-color: white; width:250px; display:none;"
												path="gongdaesang" />
											<sf:input type="text" class="form-control" id="getHaribo"
												value="${user.haribo }"
												style="background-color: white; width:250px; display:none;"
												path="haribo" />
											<sf:input type="text" class="form-control" id="getBoogi"
												value="${user.boogi }"
												style="background-color: white; width:250px; display:none;"
												path="boogi" />
											<sf:input type="text" class="form-control" id="getWoody"
												value="${user.woody }"
												style="background-color: white; width:250px; display:none;"
												path="woody" />
											<sf:input type="text" class="form-control" id="getSue"
												value="${user.sue }"
												style="background-color: white; width:250px; display:none;"
												path="sue" />
											<sf:input type="text" class="form-control"
												id="getHanbok" value="${user.hanbok }"
												style="background-color: white; width:250px; display:none;"
												path="hanbok" />
											<sf:input type="text" class="form-control"
												id="getDftChar" value="${user.dftChar }"
												style="background-color: white; width:250px; display:none;"
												path="dftChar" />
											<sf:input type="text" class="form-control"
												id="getRapunzel" value="${user.rapunzel }"
												style="background-color: white; width:250px; display:none;"
												path="rapunzel" />
										</h6>
										<c:choose>
											<c:when test="${user.blackAeong == 0 }">
												<c:choose>
													<c:when test="${user.point >= blackAeong.price }">
														<button type="submit" class="btn-buy">구입</button>
													</c:when>
													<c:otherwise>
														<button type="submit" class="btn-buy2" disabled="disabled"
															style="background-color: gray">구입불가</button>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<button type="submit" class="btn-buy2" disabled="disabled"
													style="background-color: gray">구매완료</button>
											</c:otherwise>
										</c:choose>
									</div>
								</sf:form>
							</td>
						</tr>

						<tr>
							<td style="padding: 5px 10px 15px;">
								<!-- Portfolio Item 3--> <sf:form method="post"
									action="${pageContext.request.contextPath}/buyBanana"
									modelAttribute="user">
									<div class="">
										<div class="portfolio-item mx-auto" data-toggle="modal"
											data-target="#characterModal1">
											<img class="img-fluid"
												src="resources/images/characterImage/banana.png" alt="..." />
											<h3 style="text-align: center">바나나</h3>
											<h6 style="text-align: center">
												<i class="fas fa-coins goldie"></i>
												<c:out value="${banana.price }"></c:out>
												<c:set var="banana_price"
													value='${request.getParameter("banana.price") }' />

												<c:set var="user_point_total"
													value="${user.point - banana.price }" />

												<sf:input type="text" class="form-control" id="point"
													value="${user_point_total }"
													style="background-color: white; width:250px; display:none;"
													path="point" />
												<sf:input type="text" class="form-control" id="id"
													value="${user.id }"
													style="background-color: white; width:250px; display:none;"
													path="id" />
												<sf:input type="text" class="form-control" id="user_id"
													value="${user.user_id }"
													style="background-color: white; width:250px; display:none;"
													path="user_id" />
												<sf:input type="text" class="form-control" id="username"
													value="${user.username }"
													style="background-color: white; width:250px; display:none;"
													path="username" />
												<sf:input type="text" class="form-control" id="password"
													value="${user.password }"
													style="background-color: white; width:250px; display:none;"
													path="password" />
												<sf:input type="text" class="form-control" id="enabled"
													value="${user.enabled }"
													style="background-color: white; width:250px; display:none;"
													path="enabled" />
												<sf:input type="text" class="form-control" id="gender"
													value="${user.gender }"
													style="background-color: white; width:250px; display:none;"
													path="gender" />
												<sf:input type="text" name="height" id="height"
													onkeypress="isNumber()" class="form-control2"
													value="${user.height }"
													style="background-color: white; width: 200px; display:none;"
													path="height" />
												<sf:input type="text" name="weight" id="weight"
													onkeypress="isNumber()" class="form-control2"
													value="${user.weight }"
													style="background-color: white; width: 200px; display:none;"
													path="weight" />
												<sf:input type="text" name="profile_character"
													id="profile_character" class="form-control2"
													value="${user.profile_character }"
													style="background-color: white; width: 200px; display:none;"
													path="profile_character" />


												<sf:input type="text" class="form-control"
													id="getCheeseAeong" value="${user.cheeseAeong }"
													style="background-color: white; width:250px; display:none;"
													path="cheeseAeong" />
												<sf:input type="text" class="form-control"
													id="getBlackAeong" value="${user.blackAeong }"
													style="background-color: white; width:250px; display:none;"
													path="blackAeong" />
												<sf:input type="text" class="form-control" id="getBanana"
													value="1"
													style="background-color: white; width:250px; display:none;"
													path="banana" />
												<sf:input type="text" class="form-control" id="getCookies"
													value="${user.cookies }"
													style="background-color: white; width:250px; display:none;"
													path="cookies" />
												<sf:input type="text" class="form-control" id="getMilitary"
													value="${user.military }"
													style="background-color: white; width:250px; display:none;"
													path="military" />
												<sf:input type="text" class="form-control"
													id="getGongdaesang" value="${user.gongdaesang }"
													style="background-color: white; width:250px; display:none;"
													path="gongdaesang" />
												<sf:input type="text" class="form-control" id="getHaribo"
													value="${user.haribo }"
													style="background-color: white; width:250px; display:none;"
													path="haribo" />
												<sf:input type="text" class="form-control" id="getBoogi"
													value="${user.boogi }"
													style="background-color: white; width:250px; display:none;"
													path="boogi" />
												<sf:input type="text" class="form-control" id="getWoody"
													value="${user.woody }"
													style="background-color: white; width:250px; display:none;"
													path="woody" />
												<sf:input type="text" class="form-control" id="getSue"
													value="${user.sue }"
													style="background-color: white; width:250px; display:none;"
													path="sue" />
												<sf:input type="text" class="form-control" id="getHanbok"
													value="${user.hanbok }"
													style="background-color: white; width:250px; display:none;"
													path="hanbok" />
												<sf:input type="text" class="form-control"
													id="getDftChar" value="${user.dftChar }"
													style="background-color: white; width:250px; display:none;"
													path="dftChar" />
												<sf:input type="text" class="form-control"
													id="getRapunzel" value="${user.rapunzel }"
													style="background-color: white; width:250px; display:none;"
													path="rapunzel" />
													
											</h6>
											<c:choose>
												<c:when test="${user.banana == 0 }">
													<c:choose>
														<c:when test="${user.point >= banana.price }">
															<button type="submit" class="btn-buy">구입</button>
														</c:when>
														<c:otherwise>
															<button type="submit" class="btn-buy2"
																disabled="disabled" style="background-color: gray">구입불가</button>
														</c:otherwise>
													</c:choose>
												</c:when>
												<c:otherwise>
													<button type="submit" class="btn-buy2" disabled="disabled"
														style="background-color: gray">구매완료</button>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</sf:form>
							</td>

							<td style="padding: 5px 10px 15px;">
								<!-- Portfolio Item 4--> <sf:form method="post"
									action="${pageContext.request.contextPath}/buyCookies"
									modelAttribute="user">
									<div class="">
										<div class="portfolio-item mx-auto" data-toggle="modal"
											data-target="#characterModal1">
											<img class="img-fluid"
												src="resources/images/characterImage/cookieCandy.png"
												alt="..." />
											<h3 style="text-align: center">한입거리</h3>
											<h6 style="text-align: center">
												<i class="fas fa-coins goldie"></i>
												<c:out value="${cookies.price }"></c:out>
												<c:set var="cookie_price"
													value='${request.getParameter("cookies.price") }' />

												<c:set var="user_point_total"
													value="${user.point - cookies.price }" />

												<sf:input type="text" class="form-control" id="point"
													value="${user_point_total }"
													style="background-color: white; width:250px; display:none;"
													path="point" />
												<sf:input type="text" class="form-control" id="id"
													value="${user.id }"
													style="background-color: white; width:250px; display:none;"
													path="id" />
												<sf:input type="text" class="form-control" id="user_id"
													value="${user.user_id }"
													style="background-color: white; width:250px; display:none;"
													path="user_id" />
												<sf:input type="text" class="form-control" id="username"
													value="${user.username }"
													style="background-color: white; width:250px; display:none;"
													path="username" />
												<sf:input type="text" class="form-control" id="password"
													value="${user.password }"
													style="background-color: white; width:250px; display:none;"
													path="password" />
												<sf:input type="text" class="form-control" id="enabled"
													value="${user.enabled }"
													style="background-color: white; width:250px; display:none;"
													path="enabled" />
												<sf:input type="text" class="form-control" id="gender"
													value="${user.gender }"
													style="background-color: white; width:250px; display:none;"
													path="gender" />
												<sf:input type="text" name="height" id="height"
													onkeypress="isNumber()" class="form-control2"
													value="${user.height }"
													style="background-color: white; width: 200px; display:none;"
													path="height" />
												<sf:input type="text" name="weight" id="weight"
													onkeypress="isNumber()" class="form-control2"
													value="${user.weight }"
													style="background-color: white; width: 200px; display:none;"
													path="weight" />
												<sf:input type="text" name="profile_character"
													id="profile_character" class="form-control2"
													value="${user.profile_character }"
													style="background-color: white; width: 200px; display:none;"
													path="profile_character" />


												<sf:input type="text" class="form-control"
													id="getCheeseAeong" value="${user.cheeseAeong }"
													style="background-color: white; width:250px; display:none;"
													path="cheeseAeong" />
												<sf:input type="text" class="form-control"
													id="getBlackAeong" value="${user.blackAeong }"
													style="background-color: white; width:250px; display:none;"
													path="blackAeong" />
												<sf:input type="text" class="form-control" id="getBanana"
													value="${user.banana }"
													style="background-color: white; width:250px; display:none;"
													path="banana" />
												<sf:input type="text" class="form-control" id="getCookies"
													value="1"
													style="background-color: white; width:250px; display:none;"
													path="cookies" />
												<sf:input type="text" class="form-control" id="getMilitary"
													value="${user.military }"
													style="background-color: white; width:250px; display:none;"
													path="military" />
												<sf:input type="text" class="form-control"
													id="getGongdaesang" value="${user.gongdaesang }"
													style="background-color: white; width:250px; display:none;"
													path="gongdaesang" />
												<sf:input type="text" class="form-control" id="getHaribo"
													value="${user.haribo }"
													style="background-color: white; width:250px; display:none;"
													path="haribo" />
												<sf:input type="text" class="form-control" id="getBoogi"
													value="${user.boogi }"
													style="background-color: white; width:250px; display:none;"
													path="boogi" />
												<sf:input type="text" class="form-control" id="getWoody"
													value="${user.woody }"
													style="background-color: white; width:250px; display:none;"
													path="woody" />
												<sf:input type="text" class="form-control" id="getSue"
													value="${user.sue }"
													style="background-color: white; width:250px; display:none;"
													path="sue" />
												<sf:input type="text" class="form-control" id="getHanbok"
													value="${user.hanbok }"
													style="background-color: white; width:250px; display:none;"
													path="hanbok" />
												<sf:input type="text" class="form-control"
													id="getDftChar" value="${user.dftChar }"
													style="background-color: white; width:250px; display:none;"
													path="dftChar" />
												<sf:input type="text" class="form-control"
													id="getRapunzel" value="${user.rapunzel }"
													style="background-color: white; width:250px; display:none;"
													path="rapunzel" />
											</h6>
											<c:choose>
												<c:when test="${user.cookies == 0 }">
													<c:choose>
														<c:when test="${user.point >= cookies.price }">
															<button type="submit" class="btn-buy">구입</button>
														</c:when>
														<c:otherwise>
															<button type="submit" class="btn-buy2"
																disabled="disabled" style="background-color: gray">구입불가</button>
														</c:otherwise>
													</c:choose>
												</c:when>
												<c:otherwise>
													<button type="submit" class="btn-buy2" disabled="disabled"
														style="background-color: gray">구매완료</button>
												</c:otherwise>
											</c:choose>
										</div>
									</div>
								</sf:form>
							</td>
						</tr>

						<tr>
							<td style="padding: 5px 10px 15px;">
								<!-- Portfolio Item 5--> <sf:form method="post"
									action="${pageContext.request.contextPath}/buyWoody"
									modelAttribute="user">
									<div class="">
										<img class="img-fluid"
											src="resources/images/characterImage/cowboy.png" alt="..." />
										<h3 style="text-align: center">우디</h3>
										<h6 style="text-align: center">
											<i class="fas fa-coins goldie"></i>
											<c:out value="${woody.price }"></c:out>
											<c:set var="cookie_price"
												value='${request.getParameter("woody.price") }' />

											<c:set var="user_point_total"
												value="${user.point - woody.price }" />

											<sf:input type="text" class="form-control" id="point"
												value="${user_point_total }"
												style="background-color: white; width:250px; display:none;"
												path="point" />
											<sf:input type="text" class="form-control" id="id"
												value="${user.id }"
												style="background-color: white; width:250px; display:none;"
												path="id" />
											<sf:input type="text" class="form-control" id="user_id"
												value="${user.user_id }"
												style="background-color: white; width:250px; display:none;"
												path="user_id" />
											<sf:input type="text" class="form-control" id="username"
												value="${user.username }"
												style="background-color: white; width:250px; display:none;"
												path="username" />
											<sf:input type="text" class="form-control" id="password"
												value="${user.password }"
												style="background-color: white; width:250px; display:none;"
												path="password" />
											<sf:input type="text" class="form-control" id="enabled"
												value="${user.enabled }"
												style="background-color: white; width:250px; display:none;"
												path="enabled" />
											<sf:input type="text" class="form-control" id="gender"
												value="${user.gender }"
												style="background-color: white; width:250px; display:none;"
												path="gender" />
											<sf:input type="text" name="height" id="height"
												onkeypress="isNumber()" class="form-control2"
												value="${user.height }"
												style="background-color: white; width: 200px; display:none;"
												path="height" />
											<sf:input type="text" name="weight" id="weight"
												onkeypress="isNumber()" class="form-control2"
												value="${user.weight }"
												style="background-color: white; width: 200px; display:none;"
												path="weight" />
											<sf:input type="text" name="profile_character"
												id="profile_character" class="form-control2"
												value="${user.profile_character }"
												style="background-color: white; width: 200px; display:none;"
												path="profile_character" />


											<sf:input type="text" class="form-control"
												id="getCheeseAeong" value="${user.cheeseAeong }"
												style="background-color: white; width:250px; display:none;"
												path="cheeseAeong" />
											<sf:input type="text" class="form-control" id="getBlackAeong"
												value="${user.blackAeong }"
												style="background-color: white; width:250px; display:none;"
												path="blackAeong" />
											<sf:input type="text" class="form-control" id="getBanana"
												value="${user.banana }"
												style="background-color: white; width:250px; display:none;"
												path="banana" />
											<sf:input type="text" class="form-control" id="getCookies"
												value="${user.cookies }"
												style="background-color: white; width:250px; display:none;"
												path="cookies" />
											<sf:input type="text" class="form-control" id="getMilitary"
												value="${user.military }"
												style="background-color: white; width:250px; display:none;"
												path="military" />
											<sf:input type="text" class="form-control"
												id="getGongdaesang" value="${user.gongdaesang }"
												style="background-color: white; width:250px; display:none;"
												path="gongdaesang" />
											<sf:input type="text" class="form-control" id="getHaribo"
												value="${user.haribo }"
												style="background-color: white; width:250px; display:none;"
												path="haribo" />
											<sf:input type="text" class="form-control" id="getBoogi"
												value="${user.boogi }"
												style="background-color: white; width:250px; display:none;"
												path="boogi" />
											<sf:input type="text" class="form-control" id="getWoody"
												value="1"
												style="background-color: white; width:250px; display:none;"
												path="woody" />
											<sf:input type="text" class="form-control" id="getSue"
												value="${user.sue }"
												style="background-color: white; width:250px; display:none;"
												path="sue" />
											<sf:input type="text" class="form-control" id="getHanbok"
												value="${user.hanbok }"
												style="background-color: white; width:250px; display:none;"
												path="hanbok" />
											<sf:input type="text" class="form-control"
												id="getDftChar" value="${user.dftChar }"
												style="background-color: white; width:250px; display:none;"
												path="dftChar" />
											<sf:input type="text" class="form-control"
												id="getRapunzel" value="${user.rapunzel }"
												style="background-color: white; width:250px; display:none;"
												path="rapunzel" />
										</h6>
										<c:choose>
											<c:when test="${user.woody == 0 }">
												<c:choose>
													<c:when test="${user.point >= woody.price }">
														<button type="submit" class="btn-buy">구입</button>
													</c:when>
													<c:otherwise>
														<button type="submit" class="btn-buy2" disabled="disabled"
															style="background-color: gray">구입불가</button>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<button type="submit" class="btn-buy2" disabled="disabled"
													style="background-color: gray">구매완료</button>
											</c:otherwise>
										</c:choose>
									</div>
								</sf:form>
							</td>

							<td style="padding: 5px 10px 15px;">
								<!-- Portfolio Item 6--> <sf:form method="post"
									action="${pageContext.request.contextPath}/buyGongdaesang"
									modelAttribute="user">
									<div class="">
										<img class="img-fluid"
											src="resources/images/characterImage/gongdaesang.png"
											alt="..." />
										<h3 style="text-align: center">공대생</h3>
										<h6 style="text-align: center">
											<i class="fas fa-coins goldie"></i>
											<c:out value="${gongdaesang.price }"></c:out>
											<c:set var="gongdaesang_price"
												value='${request.getParameter("gongdaesang.price") }' />

											<c:set var="user_point_total"
												value="${user.point - gongdaesang.price }" />

											<sf:input type="text" class="form-control" id="point"
												value="${user_point_total }"
												style="background-color: white; width:250px; display:none;"
												path="point" />
											<sf:input type="text" class="form-control" id="id"
												value="${user.id }"
												style="background-color: white; width:250px; display:none;"
												path="id" />
											<sf:input type="text" class="form-control" id="user_id"
												value="${user.user_id }"
												style="background-color: white; width:250px; display:none;"
												path="user_id" />
											<sf:input type="text" class="form-control" id="username"
												value="${user.username }"
												style="background-color: white; width:250px; display:none;"
												path="username" />
											<sf:input type="text" class="form-control" id="password"
												value="${user.password }"
												style="background-color: white; width:250px; display:none;"
												path="password" />
											<sf:input type="text" class="form-control" id="enabled"
												value="${user.enabled }"
												style="background-color: white; width:250px; display:none;"
												path="enabled" />
											<sf:input type="text" class="form-control" id="gender"
												value="${user.gender }"
												style="background-color: white; width:250px; display:none;"
												path="gender" />
											<sf:input type="text" name="height" id="height"
												onkeypress="isNumber()" class="form-control2"
												value="${user.height }"
												style="background-color: white; width: 200px; display:none;"
												path="height" />
											<sf:input type="text" name="weight" id="weight"
												onkeypress="isNumber()" class="form-control2"
												value="${user.weight }"
												style="background-color: white; width: 200px; display:none;"
												path="weight" />
											<sf:input type="text" name="profile_character"
												id="profile_character" class="form-control2"
												value="${user.profile_character }"
												style="background-color: white; width: 200px; display:none;"
												path="profile_character" />


											<sf:input type="text" class="form-control"
												id="getCheeseAeong" value="${user.cheeseAeong }"
												style="background-color: white; width:250px; display:none;"
												path="cheeseAeong" />
											<sf:input type="text" class="form-control" id="getBlackAeong"
												value="${user.blackAeong }"
												style="background-color: white; width:250px; display:none;"
												path="blackAeong" />
											<sf:input type="text" class="form-control" id="getBanana"
												value="${user.banana }"
												style="background-color: white; width:250px; display:none;"
												path="banana" />
											<sf:input type="text" class="form-control" id="getCookies"
												value="${user.cookies }"
												style="background-color: white; width:250px; display:none;"
												path="cookies" />
											<sf:input type="text" class="form-control" id="getMilitary"
												value="${user.military }"
												style="background-color: white; width:250px; display:none;"
												path="military" />
											<sf:input type="text" class="form-control"
												id="getGongdaesang" value="1"
												style="background-color: white; width:250px; display:none;"
												path="gongdaesang" />
											<sf:input type="text" class="form-control" id="getHaribo"
												value="${user.haribo }"
												style="background-color: white; width:250px; display:none;"
												path="haribo" />
											<sf:input type="text" class="form-control" id="getBoogi"
												value="${user.boogi }"
												style="background-color: white; width:250px; display:none;"
												path="boogi" />
											<sf:input type="text" class="form-control" id="getWoody"
												value="${user.woody }"
												style="background-color: white; width:250px; display:none;"
												path="woody" />
											<sf:input type="text" class="form-control" id="getSue"
												value="${user.sue }"
												style="background-color: white; width:250px; display:none;"
												path="sue" />
											<sf:input type="text" class="form-control" id="getHanbok"
												value="${user.hanbok }"
												style="background-color: white; width:250px; display:none;"
												path="hanbok" />
											<sf:input type="text" class="form-control"
												id="getDftChar" value="${user.dftChar }"
												style="background-color: white; width:250px; display:none;"
												path="dftChar" />
											<sf:input type="text" class="form-control"
												id="getRapunzel" value="${user.rapunzel }"
												style="background-color: white; width:250px; display:none;"
												path="rapunzel" />
										</h6>
										<c:choose>
											<c:when test="${user.gongdaesang == 0 }">
												<c:choose>
													<c:when test="${user.point >= gongdaesang.price }">
														<button type="submit" class="btn-buy">구입</button>
													</c:when>
													<c:otherwise>
														<button type="submit" class="btn-buy2" disabled="disabled"
															style="background-color: gray">구입불가</button>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<button type="submit" class="btn-buy2" disabled="disabled"
													style="background-color: gray">구매완료</button>
											</c:otherwise>
										</c:choose>
									</div>
								</sf:form>
							</td>
						</tr>
					</table>
				</div>

				<div class="col-md-6-2">
					<table style="border-spacing: 0px 20px;">
						<tr>
							<td style="padding: 5px 10px 15px;">
								<!-- Portfolio Item 7--> <sf:form method="post"
									action="${pageContext.request.contextPath}/buyHaribo"
									modelAttribute="user">
									<div class="">
										<img class="img-fluid"
											src="resources/images/characterImage/haribo.png" alt="..." />
										<h3 style="text-align: center">하리보</h3>
										<h6 style="text-align: center">
											<i class="fas fa-coins goldie"></i>
											<c:out value="${haribo.price }"></c:out>
											<c:set var="haribo_price"
												value='${request.getParameter("haribo.price") }' />

											<c:set var="user_point_total"
												value="${user.point - haribo.price }" />

											<sf:input type="text" class="form-control" id="point"
												value="${user_point_total }"
												style="background-color: white; width:250px; display:none;"
												path="point" />
											<sf:input type="text" class="form-control" id="id"
												value="${user.id }"
												style="background-color: white; width:250px; display:none;"
												path="id" />
											<sf:input type="text" class="form-control" id="user_id"
												value="${user.user_id }"
												style="background-color: white; width:250px; display:none;"
												path="user_id" />
											<sf:input type="text" class="form-control" id="username"
												value="${user.username }"
												style="background-color: white; width:250px; display:none;"
												path="username" />
											<sf:input type="text" class="form-control" id="password"
												value="${user.password }"
												style="background-color: white; width:250px; display:none;"
												path="password" />
											<sf:input type="text" class="form-control" id="enabled"
												value="${user.enabled }"
												style="background-color: white; width:250px; display:none;"
												path="enabled" />
											<sf:input type="text" class="form-control" id="gender"
												value="${user.gender }"
												style="background-color: white; width:250px; display:none;"
												path="gender" />
											<sf:input type="text" name="height" id="height"
												onkeypress="isNumber()" class="form-control2"
												value="${user.height }"
												style="background-color: white; width: 200px; display:none;"
												path="height" />
											<sf:input type="text" name="weight" id="weight"
												onkeypress="isNumber()" class="form-control2"
												value="${user.weight }"
												style="background-color: white; width: 200px; display:none;"
												path="weight" />
											<sf:input type="text" name="profile_character"
												id="profile_character" class="form-control2"
												value="${user.profile_character }"
												style="background-color: white; width: 200px; display:none;"
												path="profile_character" />


											<sf:input type="text" class="form-control"
												id="getCheeseAeong" value="${user.cheeseAeong }"
												style="background-color: white; width:250px; display:none;"
												path="cheeseAeong" />
											<sf:input type="text" class="form-control" id="getBlackAeong"
												value="${user.blackAeong }"
												style="background-color: white; width:250px; display:none;"
												path="blackAeong" />
											<sf:input type="text" class="form-control" id="getBanana"
												value="${user.banana }"
												style="background-color: white; width:250px; display:none;"
												path="banana" />
											<sf:input type="text" class="form-control" id="getCookies"
												value="${user.cookies }"
												style="background-color: white; width:250px; display:none;"
												path="cookies" />
											<sf:input type="text" class="form-control" id="getMilitary"
												value="${user.military }"
												style="background-color: white; width:250px; display:none;"
												path="military" />
											<sf:input type="text" class="form-control"
												id="getGongdaesang" value="${user.gongdaesang }"
												style="background-color: white; width:250px; display:none;"
												path="gongdaesang" />
											<sf:input type="text" class="form-control" id="getHaribo"
												value="1"
												style="background-color: white; width:250px; display:none;"
												path="haribo" />
											<sf:input type="text" class="form-control" id="getBoogi"
												value="${user.boogi }"
												style="background-color: white; width:250px; display:none;"
												path="boogi" />
											<sf:input type="text" class="form-control" id="getWoody"
												value="${user.woody }"
												style="background-color: white; width:250px; display:none;"
												path="woody" />
											<sf:input type="text" class="form-control" id="getSue"
												value="${user.sue }"
												style="background-color: white; width:250px; display:none;"
												path="sue" />
											<sf:input type="text" class="form-control" id="getHanbok"
												value="${user.hanbok }"
												style="background-color: white; width:250px; display:none;"
												path="hanbok" />
											<sf:input type="text" class="form-control"
												id="getDftChar" value="${user.dftChar }"
												style="background-color: white; width:250px; display:none;"
												path="dftChar" />
											<sf:input type="text" class="form-control"
												id="getRapunzel" value="${user.rapunzel }"
												style="background-color: white; width:250px; display:none;"
												path="rapunzel" />
										</h6>
										<c:choose>
											<c:when test="${user.haribo == 0 }">
												<c:choose>
													<c:when test="${user.point >= haribo.price }">
														<button type="submit" class="btn-buy">구입</button>
													</c:when>
													<c:otherwise>
														<button type="submit" class="btn-buy2" disabled="disabled"
															style="background-color: gray">구입불가</button>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<button type="submit" class="btn-buy2" disabled="disabled"
													style="background-color: gray">구매완료</button>
											</c:otherwise>
										</c:choose>
									</div>
								</sf:form>
							</td>

							<td style="padding: 5px 10px 15px;">
								<!-- Portfolio Item 8--> <sf:form method="post"
									action="${pageContext.request.contextPath}/buyMilitary"
									modelAttribute="user">
									<div class="">
										<img class="img-fluid"
											src="resources/images/characterImage/military.png" alt="..." />
										<h3 style="text-align: center">군인</h3>
										<h6 style="text-align: center">
											<i class="fas fa-coins goldie"></i>
											<c:out value="${military.price }"></c:out>
											<c:set var="military_price"
												value='${request.getParameter("military.price") }' />

											<c:set var="user_point_total"
												value="${user.point - military.price }" />

											<sf:input type="text" class="form-control" id="point"
												value="${user_point_total }"
												style="background-color: white; width:250px; display:none;"
												path="point" />
											<sf:input type="text" class="form-control" id="id"
												value="${user.id }"
												style="background-color: white; width:250px; display:none;"
												path="id" />
											<sf:input type="text" class="form-control" id="user_id"
												value="${user.user_id }"
												style="background-color: white; width:250px; display:none;"
												path="user_id" />
											<sf:input type="text" class="form-control" id="username"
												value="${user.username }"
												style="background-color: white; width:250px; display:none;"
												path="username" />
											<sf:input type="text" class="form-control" id="password"
												value="${user.password }"
												style="background-color: white; width:250px; display:none;"
												path="password" />
											<sf:input type="text" class="form-control" id="enabled"
												value="${user.enabled }"
												style="background-color: white; width:250px; display:none;"
												path="enabled" />
											<sf:input type="text" class="form-control" id="gender"
												value="${user.gender }"
												style="background-color: white; width:250px; display:none;"
												path="gender" />
											<sf:input type="text" name="height" id="height"
												onkeypress="isNumber()" class="form-control2"
												value="${user.height }"
												style="background-color: white; width: 200px; display:none;"
												path="height" />
											<sf:input type="text" name="weight" id="weight"
												onkeypress="isNumber()" class="form-control2"
												value="${user.weight }"
												style="background-color: white; width: 200px; display:none;"
												path="weight" />
											<sf:input type="text" name="profile_character"
												id="profile_character" class="form-control2"
												value="${user.profile_character }"
												style="background-color: white; width: 200px; display:none;"
												path="profile_character" />


											<sf:input type="text" class="form-control"
												id="getCheeseAeong" value="${user.cheeseAeong }"
												style="background-color: white; width:250px; display:none;"
												path="cheeseAeong" />
											<sf:input type="text" class="form-control" id="getBlackAeong"
												value="${user.blackAeong }"
												style="background-color: white; width:250px; display:none;"
												path="blackAeong" />
											<sf:input type="text" class="form-control" id="getBanana"
												value="${user.banana }"
												style="background-color: white; width:250px; display:none;"
												path="banana" />
											<sf:input type="text" class="form-control" id="getCookies"
												value="${user.cookies }"
												style="background-color: white; width:250px; display:none;"
												path="cookies" />
											<sf:input type="text" class="form-control" id="getMilitary"
												value="1"
												style="background-color: white; width:250px; display:none;"
												path="military" />
											<sf:input type="text" class="form-control"
												id="getGongdaesang" value="${user.gongdaesang }"
												style="background-color: white; width:250px; display:none;"
												path="gongdaesang" />
											<sf:input type="text" class="form-control" id="getHaribo"
												value="${user.haribo }"
												style="background-color: white; width:250px; display:none;"
												path="haribo" />
											<sf:input type="text" class="form-control" id="getBoogi"
												value="${user.boogi }"
												style="background-color: white; width:250px; display:none;"
												path="boogi" />
											<sf:input type="text" class="form-control" id="getWoody"
												value="${user.woody }"
												style="background-color: white; width:250px; display:none;"
												path="woody" />
											<sf:input type="text" class="form-control" id="getSue"
												value="${user.sue }"
												style="background-color: white; width:250px; display:none;"
												path="sue" />
											<sf:input type="text" class="form-control" id="getHanbok"
												value="${user.hanbok }"
												style="background-color: white; width:250px; display:none;"
												path="hanbok" />
											<sf:input type="text" class="form-control"
												id="getDftChar" value="${user.dftChar }"
												style="background-color: white; width:250px; display:none;"
												path="dftChar" />
											<sf:input type="text" class="form-control"
												id="getRapunzel" value="${user.rapunzel }"
												style="background-color: white; width:250px; display:none;"
												path="rapunzel" />
										</h6>
										<c:choose>
											<c:when test="${user.military == 0 }">
												<c:choose>
													<c:when test="${user.point >= military.price }">
														<button type="submit" class="btn-buy">구입</button>
													</c:when>
													<c:otherwise>
														<button type="submit" class="btn-buy2" disabled="disabled"
															style="background-color: gray">구입불가</button>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<button type="submit" class="btn-buy2" disabled="disabled"
													style="background-color: gray">구매완료</button>
											</c:otherwise>
										</c:choose>
									</div>
								</sf:form>
							</td>
						</tr>

						<tr>
							<td style="padding: 5px 10px 15px;">
								<!-- Portfolio Item 9--> <sf:form method="post"
									action="${pageContext.request.contextPath}/buyBoogi"
									modelAttribute="user">
									<div class="">
										<img class="img-fluid"
											src="resources/images/characterImage/sangsang.png" alt="..." />
										<h3 style="text-align: center">부기</h3>
										<h6 style="text-align: center">
											<i class="fas fa-coins goldie"></i>
											<c:out value="${boogi.price }"></c:out>
											<c:set var="boogi_price"
												value='${request.getParameter("boogi.price") }' />

											<c:set var="user_point_total"
												value="${user.point - boogi.price }" />

											<sf:input type="text" class="form-control" id="point"
												value="${user_point_total }"
												style="background-color: white; width:250px; display:none;"
												path="point" />
											<sf:input type="text" class="form-control" id="id"
												value="${user.id }"
												style="background-color: white; width:250px; display:none;"
												path="id" />
											<sf:input type="text" class="form-control" id="user_id"
												value="${user.user_id }"
												style="background-color: white; width:250px; display:none;"
												path="user_id" />
											<sf:input type="text" class="form-control" id="username"
												value="${user.username }"
												style="background-color: white; width:250px; display:none;"
												path="username" />
											<sf:input type="text" class="form-control" id="password"
												value="${user.password }"
												style="background-color: white; width:250px; display:none;"
												path="password" />
											<sf:input type="text" class="form-control" id="enabled"
												value="${user.enabled }"
												style="background-color: white; width:250px; display:none;"
												path="enabled" />
											<sf:input type="text" class="form-control" id="gender"
												value="${user.gender }"
												style="background-color: white; width:250px; display:none;"
												path="gender" />
											<sf:input type="text" name="height" id="height"
												onkeypress="isNumber()" class="form-control2"
												value="${user.height }"
												style="background-color: white; width: 200px; display:none;"
												path="height" />
											<sf:input type="text" name="weight" id="weight"
												onkeypress="isNumber()" class="form-control2"
												value="${user.weight }"
												style="background-color: white; width: 200px; display:none;"
												path="weight" />
											<sf:input type="text" name="profile_character"
												id="profile_character" class="form-control2"
												value="${user.profile_character }"
												style="background-color: white; width: 200px; display:none;"
												path="profile_character" />


											<sf:input type="text" class="form-control"
												id="getCheeseAeong" value="${user.cheeseAeong }"
												style="background-color: white; width:250px; display:none;"
												path="cheeseAeong" />
											<sf:input type="text" class="form-control" id="getBlackAeong"
												value="${user.blackAeong }"
												style="background-color: white; width:250px; display:none;"
												path="blackAeong" />
											<sf:input type="text" class="form-control" id="getBanana"
												value="${user.banana }"
												style="background-color: white; width:250px; display:none;"
												path="banana" />
											<sf:input type="text" class="form-control" id="getCookies"
												value="${user.cookies }"
												style="background-color: white; width:250px; display:none;"
												path="cookies" />
											<sf:input type="text" class="form-control" id="getMilitary"
												value="${user.military }"
												style="background-color: white; width:250px; display:none;"
												path="military" />
											<sf:input type="text" class="form-control"
												id="getGongdaesang" value="${user.gongdaesang }"
												style="background-color: white; width:250px; display:none;"
												path="gongdaesang" />
											<sf:input type="text" class="form-control" id="getHaribo"
												value="${user.haribo }"
												style="background-color: white; width:250px; display:none;"
												path="haribo" />
											<sf:input type="text" class="form-control" id="getBoogi"
												value="1"
												style="background-color: white; width:250px; display:none;"
												path="boogi" />
											<sf:input type="text" class="form-control" id="getWoody"
												value="${user.woody }"
												style="background-color: white; width:250px; display:none;"
												path="woody" />
											<sf:input type="text" class="form-control" id="getSue"
												value="${user.sue }"
												style="background-color: white; width:250px; display:none;"
												path="sue" />
											<sf:input type="text" class="form-control" id="getHanbok"
												value="${user.hanbok }"
												style="background-color: white; width:250px; display:none;"
												path="hanbok" />
											<sf:input type="text" class="form-control"
												id="getDftChar" value="${user.dftChar }"
												style="background-color: white; width:250px; display:none;"
												path="dftChar" />
											<sf:input type="text" class="form-control"
												id="getRapunzel" value="${user.rapunzel }"
												style="background-color: white; width:250px; display:none;"
												path="rapunzel" />
										</h6>
										<c:choose>
											<c:when test="${user.boogi == 0 }">
												<c:choose>
													<c:when test="${user.point >= boogi.price }">
														<button type="submit" class="btn-buy">구입</button>
													</c:when>
													<c:otherwise>
														<button type="submit" class="btn-buy2" disabled="disabled"
															style="background-color: gray">구입불가</button>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<button type="submit" class="btn-buy2" disabled="disabled"
													style="background-color: gray">구매완료</button>
											</c:otherwise>
										</c:choose>
									</div>
								</sf:form>
							</td>

							<td style="padding: 5px 10px 15px;">
								<!-- Portfolio Item 10--> <sf:form method="post"
									action="${pageContext.request.contextPath}/buySue"
									modelAttribute="user">
									<div class="">
										<img class="img-fluid"
											src="resources/images/characterImage/sue.png" alt="..." />
										<h3 style="text-align: center">아바타 스타</h3>
										<h6 style="text-align: center">
											<i class="fas fa-coins goldie"></i>
											<c:out value="${sue.price }"></c:out>
											<c:set var="sue_price"
												value='${request.getParameter("sue.price") }' />

											<c:set var="user_point_total"
												value="${user.point - sue.price }" />

											<sf:input type="text" class="form-control" id="point"
												value="${user_point_total }"
												style="background-color: white; width:250px; display:none;"
												path="point" />
											<sf:input type="text" class="form-control" id="id"
												value="${user.id }"
												style="background-color: white; width:250px; display:none;"
												path="id" />
											<sf:input type="text" class="form-control" id="user_id"
												value="${user.user_id }"
												style="background-color: white; width:250px; display:none;"
												path="user_id" />
											<sf:input type="text" class="form-control" id="username"
												value="${user.username }"
												style="background-color: white; width:250px; display:none;"
												path="username" />
											<sf:input type="text" class="form-control" id="password"
												value="${user.password }"
												style="background-color: white; width:250px; display:none;"
												path="password" />
											<sf:input type="text" class="form-control" id="enabled"
												value="${user.enabled }"
												style="background-color: white; width:250px; display:none;"
												path="enabled" />
											<sf:input type="text" class="form-control" id="gender"
												value="${user.gender }"
												style="background-color: white; width:250px; display:none;"
												path="gender" />
											<sf:input type="text" name="height" id="height"
												onkeypress="isNumber()" class="form-control2"
												value="${user.height }"
												style="background-color: white; width: 200px; display:none;"
												path="height" />
											<sf:input type="text" name="weight" id="weight"
												onkeypress="isNumber()" class="form-control2"
												value="${user.weight }"
												style="background-color: white; width: 200px; display:none;"
												path="weight" />
											<sf:input type="text" name="profile_character"
												id="profile_character" class="form-control2"
												value="${user.profile_character }"
												style="background-color: white; width: 200px; display:none;"
												path="profile_character" />


											<sf:input type="text" class="form-control"
												id="getCheeseAeong" value="${user.cheeseAeong }"
												style="background-color: white; width:250px; display:none;"
												path="cheeseAeong" />
											<sf:input type="text" class="form-control" id="getBlackAeong"
												value="${user.blackAeong }"
												style="background-color: white; width:250px; display:none;"
												path="blackAeong" />
											<sf:input type="text" class="form-control" id="getBanana"
												value="${user.banana }"
												style="background-color: white; width:250px; display:none;"
												path="banana" />
											<sf:input type="text" class="form-control" id="getCookies"
												value="${user.cookies }"
												style="background-color: white; width:250px; display:none;"
												path="cookies" />
											<sf:input type="text" class="form-control" id="getMilitary"
												value="${user.military }"
												style="background-color: white; width:250px; display:none;"
												path="military" />
											<sf:input type="text" class="form-control"
												id="getGongdaesang" value="${user.gongdaesang }"
												style="background-color: white; width:250px; display:none;"
												path="gongdaesang" />
											<sf:input type="text" class="form-control" id="getHaribo"
												value="${user.haribo }"
												style="background-color: white; width:250px; display:none;"
												path="haribo" />
											<sf:input type="text" class="form-control" id="getBoogi"
												value="${user.boogi }"
												style="background-color: white; width:250px; display:none;"
												path="boogi" />
											<sf:input type="text" class="form-control" id="getWoody"
												value="${user.woody }"
												style="background-color: white; width:250px; display:none;"
												path="woody" />
											<sf:input type="text" class="form-control" id="getSue"
												value="1"
												style="background-color: white; width:250px; display:none;"
												path="sue" />
											<sf:input type="text" class="form-control" id="getHanbok"
												value="${user.hanbok }"
												style="background-color: white; width:250px; display:none;"
												path="hanbok" />
											<sf:input type="text" class="form-control"
												id="getDftChar" value="${user.dftChar }"
												style="background-color: white; width:250px; display:none;"
												path="dftChar" />
											<sf:input type="text" class="form-control"
												id="getRapunzel" value="${user.rapunzel }"
												style="background-color: white; width:250px; display:none;"
												path="rapunzel" />
										</h6>
										<c:choose>
											<c:when test="${user.sue == 0 }">
												<c:choose>
													<c:when test="${user.point >= sue.price }">
														<button type="submit" class="btn-buy">구입</button>
													</c:when>
													<c:otherwise>
														<button type="submit" class="btn-buy2" disabled="disabled"
															style="background-color: gray">구입불가</button>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<button type="submit" class="btn-buy2" disabled="disabled"
													style="background-color: gray">구매완료</button>
											</c:otherwise>
										</c:choose>
									</div>
								</sf:form>
							</td>
						</tr>

						<tr>
							<td style="padding: 5px 10px 15px;">
								<!-- Portfolio Item 11--> <sf:form method="post"
									action="${pageContext.request.contextPath}/buyHanbok"
									modelAttribute="user">
									<div class="">
										<img class="img-fluid"
											src="resources/images/characterImage/hanbok.png"
											alt="..." />
										<h3 style="text-align: center">한복</h3>
										<h6 style="text-align: center">
											<i class="fas fa-coins goldie"></i>
											<c:out value="${hanbok.price }"></c:out>
											<c:set var="hanbok_price"
												value='${request.getParameter("hanbok.price") }' />

											<c:set var="user_point_total"
												value="${user.point - hanbok.price }" />

											<sf:input type="text" class="form-control" id="point"
												value="${user_point_total }"
												style="background-color: white; width:250px; display:none;"
												path="point" />
											<sf:input type="text" class="form-control" id="id"
												value="${user.id }"
												style="background-color: white; width:250px; display:none;"
												path="id" />
											<sf:input type="text" class="form-control" id="user_id"
												value="${user.user_id }"
												style="background-color: white; width:250px; display:none;"
												path="user_id" />
											<sf:input type="text" class="form-control" id="username"
												value="${user.username }"
												style="background-color: white; width:250px; display:none;"
												path="username" />
											<sf:input type="text" class="form-control" id="password"
												value="${user.password }"
												style="background-color: white; width:250px; display:none;"
												path="password" />
											<sf:input type="text" class="form-control" id="enabled"
												value="${user.enabled }"
												style="background-color: white; width:250px; display:none;"
												path="enabled" />
											<sf:input type="text" class="form-control" id="gender"
												value="${user.gender }"
												style="background-color: white; width:250px; display:none;"
												path="gender" />
											<sf:input type="text" name="height" id="height"
												onkeypress="isNumber()" class="form-control2"
												value="${user.height }"
												style="background-color: white; width: 200px; display:none;"
												path="height" />
											<sf:input type="text" name="weight" id="weight"
												onkeypress="isNumber()" class="form-control2"
												value="${user.weight }"
												style="background-color: white; width: 200px; display:none;"
												path="weight" />
											<sf:input type="text" name="profile_character"
												id="profile_character" class="form-control2"
												value="${user.profile_character }"
												style="background-color: white; width: 200px; display:none;"
												path="profile_character" />


											<sf:input type="text" class="form-control"
												id="getCheeseAeong" value="${user.cheeseAeong }"
												style="background-color: white; width:250px; display:none;"
												path="cheeseAeong" />
											<sf:input type="text" class="form-control" id="getBlackAeong"
												value="${user.blackAeong }"
												style="background-color: white; width:250px; display:none;"
												path="blackAeong" />
											<sf:input type="text" class="form-control" id="getBanana"
												value="${user.banana }"
												style="background-color: white; width:250px; display:none;"
												path="banana" />
											<sf:input type="text" class="form-control" id="getCookies"
												value="${user.cookies }"
												style="background-color: white; width:250px; display:none;"
												path="cookies" />
											<sf:input type="text" class="form-control" id="getMilitary"
												value="${user.military }"
												style="background-color: white; width:250px; display:none;"
												path="military" />
											<sf:input type="text" class="form-control"
												id="getGongdaesang" value="${user.gongdaesang }"
												style="background-color: white; width:250px; display:none;"
												path="gongdaesang" />
											<sf:input type="text" class="form-control" id="getHaribo"
												value="${user.haribo }"
												style="background-color: white; width:250px; display:none;"
												path="haribo" />
											<sf:input type="text" class="form-control" id="getBoogi"
												value="${user.boogi }"
												style="background-color: white; width:250px; display:none;"
												path="boogi" />
											<sf:input type="text" class="form-control" id="getWoody"
												value="${user.woody }"
												style="background-color: white; width:250px; display:none;"
												path="woody" />
											<sf:input type="text" class="form-control" id="getSue"
												value="${user.sue }"
												style="background-color: white; width:250px; display:none;"
												path="sue" />
											<sf:input type="text" class="form-control" id="getHanbok"
												value="1"
												style="background-color: white; width:250px; display:none;"
												path="hanbok" />
											<sf:input type="text" class="form-control"
												id="getDftChar" value="${user.dftChar }"
												style="background-color: white; width:250px; display:none;"
												path="dftChar" />
											<sf:input type="text" class="form-control"
												id="getRapunzel" value="${user.rapunzel }"
												style="background-color: white; width:250px; display:none;"
												path="rapunzel" />
										</h6>
										<c:choose>
											<c:when test="${user.hanbok == 0 }">
												<c:choose>
													<c:when test="${user.point >= hanbok.price }">
														<button type="submit" class="btn-buy">구입</button>
													</c:when>
													<c:otherwise>
														<button type="submit" class="btn-buy2" disabled="disabled"
															style="background-color: gray">구입불가</button>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<button type="submit" class="btn-buy2" disabled="disabled"
													style="background-color: gray">구매완료</button>
											</c:otherwise>
										</c:choose>
									</div>
								</sf:form>
							</td>
							
							<td style="padding: 5px 10px 15px;">
								<!-- Portfolio Item 13--> <sf:form method="post"
									action="${pageContext.request.contextPath}/buyRapunzel"
									modelAttribute="user">
									<div class="">
										<img class="img-fluid"
											src="resources/images/characterImage/rapunzel.png"
											alt="..." />
										<h3 style="text-align: center">라푼젤</h3>
										<h6 style="text-align: center">
											<i class="fas fa-coins goldie"></i>
											<c:out value="${rapunzel.price }"></c:out>
											<c:set var="rapunzel_price"
												value='${request.getParameter("rapunzel.price") }' />

											<c:set var="user_point_total"
												value="${user.point - rapunzel.price }" />

											<sf:input type="text" class="form-control" id="point"
												value="${user_point_total }"
												style="background-color: white; width:250px; display:none;"
												path="point" />
											<sf:input type="text" class="form-control" id="id"
												value="${user.id }"
												style="background-color: white; width:250px; display:none;"
												path="id" />
											<sf:input type="text" class="form-control" id="user_id"
												value="${user.user_id }"
												style="background-color: white; width:250px; display:none;"
												path="user_id" />
											<sf:input type="text" class="form-control" id="username"
												value="${user.username }"
												style="background-color: white; width:250px; display:none;"
												path="username" />
											<sf:input type="text" class="form-control" id="password"
												value="${user.password }"
												style="background-color: white; width:250px; display:none;"
												path="password" />
											<sf:input type="text" class="form-control" id="enabled"
												value="${user.enabled }"
												style="background-color: white; width:250px; display:none;"
												path="enabled" />
											<sf:input type="text" class="form-control" id="gender"
												value="${user.gender }"
												style="background-color: white; width:250px; display:none;"
												path="gender" />
											<sf:input type="text" name="height" id="height"
												onkeypress="isNumber()" class="form-control2"
												value="${user.height }"
												style="background-color: white; width: 200px; display:none;"
												path="height" />
											<sf:input type="text" name="weight" id="weight"
												onkeypress="isNumber()" class="form-control2"
												value="${user.weight }"
												style="background-color: white; width: 200px; display:none;"
												path="weight" />
											<sf:input type="text" name="profile_character"
												id="profile_character" class="form-control2"
												value="${user.profile_character }"
												style="background-color: white; width: 200px; display:none;"
												path="profile_character" />


											<sf:input type="text" class="form-control"
												id="getCheeseAeong" value="${user.cheeseAeong }"
												style="background-color: white; width:250px; display:none;"
												path="cheeseAeong" />
											<sf:input type="text" class="form-control" id="getBlackAeong"
												value="${user.blackAeong }"
												style="background-color: white; width:250px; display:none;"
												path="blackAeong" />
											<sf:input type="text" class="form-control" id="getBanana"
												value="${user.banana }"
												style="background-color: white; width:250px; display:none;"
												path="banana" />
											<sf:input type="text" class="form-control" id="getCookies"
												value="${user.cookies }"
												style="background-color: white; width:250px; display:none;"
												path="cookies" />
											<sf:input type="text" class="form-control" id="getMilitary"
												value="${user.military }"
												style="background-color: white; width:250px; display:none;"
												path="military" />
											<sf:input type="text" class="form-control"
												id="getGongdaesang" value="${user.gongdaesang }"
												style="background-color: white; width:250px; display:none;"
												path="gongdaesang" />
											<sf:input type="text" class="form-control" id="getHaribo"
												value="${user.haribo }"
												style="background-color: white; width:250px; display:none;"
												path="haribo" />
											<sf:input type="text" class="form-control" id="getBoogi"
												value="${user.boogi }"
												style="background-color: white; width:250px; display:none;"
												path="boogi" />
											<sf:input type="text" class="form-control" id="getWoody"
												value="${user.woody }"
												style="background-color: white; width:250px; display:none;"
												path="woody" />
											<sf:input type="text" class="form-control" id="getSue"
												value="${user.sue }"
												style="background-color: white; width:250px; display:none;"
												path="sue" />
											<sf:input type="text" class="form-control" id="getHanbok"
												value="${user.hanbok }"
												style="background-color: white; width:250px; display:none;"
												path="hanbok" />
											<sf:input type="text" class="form-control"
												id="getDftChar" value="${user.dftChar }"
												style="background-color: white; width:250px; display:none;"
												path="dftChar" />
											<sf:input type="text" class="form-control"
												id="getRapunzel" value="1"
												style="background-color: white; width:250px; display:none;"
												path="rapunzel" />
										</h6>
										<c:choose>
											<c:when test="${user.rapunzel == 0 }">
												<c:choose>
													<c:when test="${user.point >= rapunzel.price }">
														<button type="submit" class="btn-buy">구입</button>
													</c:when>
													<c:otherwise>
														<button type="submit" class="btn-buy2" disabled="disabled"
															style="background-color: gray">구입불가</button>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<button type="submit" class="btn-buy2" disabled="disabled"
													style="background-color: gray">구매완료</button>
											</c:otherwise>
										</c:choose>
									</div>
								</sf:form>
							</td>
							
						</tr>
					</table>
				</div>
			</div>
		</div>
	</section>


	<!-- Modal -->
	<%-- <%@include file="characterModal.jsp"%> --%>

	<!-- Footer-->
	<%@include file="footer.jsp"%>
	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
	<div class="scroll-to-top d-lg-none position-fixed">
		<a class="js-scroll-trigger d-block text-center text-white rounded"
			href="#page-top"><i class="fa fa-chevron-up"></i></a>
	</div>



	<!-- Bootstrap core JS-->

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@teachablemachine/pose@0.8/dist/teachablemachine-pose.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	
</body>
</html>