<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<style>
.item:hover{
	border: #ffc107 5px solid;
}
</style>

<title>HealthU :: WorkOut</title>
</head>
<body style="background-color: #1a252f">
	<%@include file="header.jsp"%>
	<header class="bg-primary text-black text-center">
		<section class="page-section portfolio" id="portfolio">
			<div class="container d-flex align-items-center flex-column">
				<h1>WORK OUT</h1>
			</div>


			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-dumbbell"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>



			<%-- <div class="table-responsive control-group">
				<div class="container d-flex align-items-center row">
						<table style="margin-left: auto; margin-right: auto;">
							<tr style="border: 10px solid transparent">
								<td>
									<img
                  						src="resources/images/img/choiceImage.jpg" alt="..."
                  						style="width:100%; height:50%;" />
								</td>
								<td>
									<img
                  						src="resources/images/img/collectionImage.jpg" alt="..."
                  						style="width:100%; height:50%;" />
								</td>
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
				</div>

			</div> --%>

		</section>
		<center>
			<div class="container d-flex align-items-center row" style="padding-bottom:200px;">
                  <div class="col-xl-6 md-5 mb-5">
                  	<a href="${pageContext.request.contextPath}/choice">
                          <img class="item" src="resources/images/img/choiceImage.jpg" alt="..."
                  			style="width:100%; height:100%; position: static; z-index: 1; border-radius: 30px;" />
                  			<p style="position: absolute; top: 5%; left:10%; z-index: 2; font-size:30px; font-weight: bold; color:black;" >CHOICE</p><br/>
                  			<p style="position: absolute; top: 20%; left:10%; z-index: 2; font-weight: bold; color:black;" >자유롭게 선택해서 운동하기</p>
                  	</a>
                  </div>
                  <div class="col-xl-6 md-5 mb-5">
                  	<a href="${pageContext.request.contextPath}/collection">
                          <img class="item" src="resources/images/img/collectionImage.jpg" alt="..."
                  			style="width:100%; height:100%; position: static; z-index: 1; border-radius: 30px;" />
                  			<p style="position: absolute; top: 30%; right:10%; z-index: 2; font-size:30px; font-weight: bold; color:black;" >COLLECTION</p><br/>
                  			<p style="position: absolute; top: 45%; right:10%; z-index: 2; font-weight: bold; color:black;" >집중적으로 운동하기</p>
                  	</a>
                  </div>
              </div>
        </center>
	</header>

	<!-- Footer-->
	<%@include file="footer.jsp"%>

	<!-- Bootstrap core JS-->
	<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Third party plugin JS-->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/animejs/3.2.1/anime.min.js"></script>
	<!-- Contact form JS-->
	<script src="resources/assets/mail/jqBootstrapValidation.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>

</body>
</html>