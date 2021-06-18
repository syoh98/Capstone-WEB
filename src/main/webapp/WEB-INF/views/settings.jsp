<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Favicons, 홈 페이지 아이콘 -->
<link rel="icon" href="resources/images/logo/favicon.ico">
<title>HealthU :: Setting</title>
<link href="css/styles.css" rel="stylesheet" />
<!-- 부트스트랩 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body id="page-top" style="background-color:#1a252f">
	<!-- Navigation-->
	<%@include file="header.jsp"%>
	<!-- Masthead-->
	<header class="mastheader bg-primary text-white text-center">
		<div class="container d-flex align-items-center flex-column">

			<div class="row d-flex align-items-center">
				<div class="container text-center">
					<!-- Masthead Subheading-->
					<h4>
						<p class="masthead-subheading font-weight-light text-white mb-0">
							사용자 정보 수정</p>
					</h4>
				</div>
				<!-- Icon Divider-->
				<div class="divider-custom divider-light">
					<div class="divider-custom-line"></div>
					<div class="divider-custom-icon">
						<i class="fas fa-star"></i>
					</div>
					<div class="divider-custom-line"></div>
				</div>
			</div>
			<sf:form method="post"
						action="${pageContext.request.contextPath}/updateUser"
						modelAttribute="user">
			<!-- Masthead Avatar Image-->
			<div class="container align-items-center row">
				<div class="col-md-6-2">
					<table>
					<tr>
					<td>
					<c:choose>
						<c:when test="${user.profile_character eq 'cheeseAeong' }">
							<img class="mastheader-avatar mb-3" src="resources/images/characterImage/aeong_cheese.png"/>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${user.profile_character eq 'blackAeong' }">
							<img class="mastheader-avatar mb-3" src="resources/images/characterImage/aeong_tuxedo.png"/>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${user.profile_character eq 'banana' }">
							<img class="mastheader-avatar mb-3" src="resources/images/characterImage/banana.png"/>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${user.profile_character eq 'cookies' }">
							<img class="mastheader-avatar mb-3" src="resources/images/characterImage/cookieCandy.png"/>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${user.profile_character eq 'gongdaesang' }">
							<img class="mastheader-avatar mb-3" src="resources/images/characterImage/gongdaesang.png"/>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${user.profile_character eq 'woody' }">
							<img class="mastheader-avatar mb-3" src="resources/images/characterImage/cowboy.png"/>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${user.profile_character eq 'haribo' }">
							<img class="mastheader-avatar mb-3" src="resources/images/characterImage/haribo.png"/>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${user.profile_character eq 'military' }">
							<img class="mastheader-avatar mb-3" src="resources/images/characterImage/military.png"/>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${user.profile_character eq 'boogi' }">
							<img class="mastheader-avatar mb-3" src="resources/images/characterImage/sangsang.png"/>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${user.profile_character eq 'sue' }">
							<img class="mastheader-avatar mb-3" src="resources/images/characterImage/sue.png"/>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${user.profile_character eq 'hanbok' }">
							<img class="mastheader-avatar mb-3" src="resources/images/characterImage/hanbok.png"/>
						</c:when>
					</c:choose>
					<c:choose>
						<c:when test="${user.profile_character eq 'dftChar' }">
							<img class="mastheader-avatar mb-3" src="resources/images/characterImage/dftChar.png"/>
						</c:when>
					</c:choose>
		         	<c:choose>
						<c:when test="${user.profile_character eq 'rapunzel' }">
							<img class="mastheader-avatar mb-3" src="resources/images/characterImage/rapunzel.png"/>
						</c:when>
					</c:choose>
					</td>
					</tr>
					</table>
					<!-- <img class="mastheader-avatar mb-3"
						src="resources/images/characterImage/banana.png" alt="..." /> -->
				</div>
				<!-- Masthead Heading-->

					<div class="col-md-6-2">

						<table class="table-mypg mb-3">
						
							<tr>
								<td style="text-align: right">
									<h6 class="mastheader-heading font-weight-light">닉네임:</h6>
								</td>
								<td><sf:input type="text" class="form-control"
										id="username" value=""
										style="background-color: white; width:250px;" path="username" />
								</td>
							</tr>
							<tr>
								<td style="text-align: right">
									<h6 class="mastheader-heading font-weight-light">키:</h6>
								</td>
								<td><sf:input type="text" class="form-control" id="height"
										value="" style="background-color: white; width:250px;"
										path="height" /></td>
							</tr>
							<tr>
								<td style="text-align: right">
									<h6 class="mastheader-heading font-weight-light">체중:</h6>
								</td>
								<td><sf:input type="text" class="form-control" id="weight"
										value="" style="background-color: white; width:250px;"
										path="weight" /></td>
							</tr>
							
							<tr style="border: 10px solid transparent; display: none;">
								<td style="text-align: right">
									<h5 style="display: inline">ID</h5>
								</td>
								<td><sf:input type="text" class="form-control" id="user_id"
										value="${user.id }" style="background-color: white; width:250px;"
										path="id" /></td>
							</tr>
							<!-- ID값은 그대로 -->
							<tr style="border: 10px solid transparent; display: none;">
								<td style="text-align: right">
									<h5 style="display: inline">ID</h5>
								</td>
								<td><sf:input type="text" class="form-control" id="user_id"
										value="${user.user_id }" style="background-color: white; width:250px;"
										path="user_id" /></td>
							</tr>
							
							<!-- PW값은 그대로 -->
							<tr style="border: 10px solid transparent; display: none;">
								<td style="text-align: right">
									<h5 style="display: inline">PW</h5>
								</td>
								<td><sf:input type="text" class="form-control" id="password"
										value="${user.password }" style="background-color: white; width:250px;"
										path="password" /></td>
							</tr>
							
							<!-- enabled을 1로 지정 -->
							<tr style="border: 10px solid transparent; display: none;">
								<td style="text-align: right">
									<h5 style="display: inline">ENABLEDㅤ</h5>
								</td>
								<td><sf:input type="text" class="form-control" id="enabled"
										value="1" style="background-color: white; width:250px;"
										path="enabled" /></td>
							</tr>

							<!-- 회원가입시 point 1000 지급 -->
							<tr style="border: 10px solid transparent; display: none;">
								<td style="text-align: right">
									<h5 style="display: inline">POINT</h5>
								</td>
								<td><sf:input type="text" class="form-control" id="point"
										value="${user.point }"
										style="background-color: white; width:250px;" path="point" />
								</td>
							</tr>
						</table>
					</div>
							
					<div class="container d-flex align-items-center row ">
				<c:choose>
					<c:when test="${user.cheeseAeong == 1 }">
						<p><sf:radiobutton name="characters" id="characters"
										value="cheeseAeong" path="profile_character" label="" /> 
						<img class="mastheader-avatar mb-3"
							src="resources/images/characterImage/aeong_cheese.png" alt="..." /></p>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.blackAeong == 1 }">
						<p><sf:radiobutton name="characters" id="characters"
										value="blackAeong" path="profile_character" label="" /> 
						<img class="mastheader-avatar mb-3"
							src="resources/images/characterImage/aeong_tuxedo.png" alt="..." /></p>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.banana == 1 }">
						<p><sf:radiobutton name="characters" id="characters"
										value="banana" path="profile_character" label="" /> 
						<img class="mastheader-avatar mb-3"
							src="resources/images/characterImage/banana.png" alt="..." /></p>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.cookies == 1 }">
						<p><sf:radiobutton name="characters" id="characters"
										value="cookies" path="profile_character" label="" /> 
						<img class="mastheader-avatar mb-3"
							src="resources/images/characterImage/cookieCandy.png" alt="..." /></p>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.gongdaesang == 1 }">
						<p><sf:radiobutton name="characters" id="characters"
										value="gongdaesang" path="profile_character" label="" /> 
						<img class="mastheader-avatar mb-3"
							src="resources/images/characterImage/gongdaesang.png" alt="..." /></p>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.woody == 1 }">
						<p><sf:radiobutton name="characters" id="characters"
										value="woody" path="profile_character" label="" /> 
						<img class="mastheader-avatar mb-3"
							src="resources/images/characterImage/cowboy.png" alt="..." /></p>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.haribo == 1 }">
						<p><sf:radiobutton name="characters" id="characters"
										value="haribo" path="profile_character" label="" /> 
						<img class="mastheader-avatar mb-3"
							src="resources/images/characterImage/haribo.png" alt="..." /></p>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.military == 1 }">
						<p><sf:radiobutton name="characters" id="characters"
										value="military" path="profile_character" label="" /> 
						<img class="mastheader-avatar mb-3"
							src="resources/images/characterImage/military.png" alt="..." /></p>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.boogi == 1 }">
						<p><sf:radiobutton name="characters" id="characters"
										value="boogi" path="profile_character" label="" /> 
						<img class="mastheader-avatar mb-3"
							src="resources/images/characterImage/sangsang.png" alt="..." /></p>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.sue == 1 }">
						<p><sf:radiobutton name="characters" id="characters"
										value="sue" path="profile_character" label="" />		
						<img class="mastheader-avatar mb-3"
							src="resources/images/characterImage/sue.png" alt="..." /></p>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.hanbok == 1 }">
						<p><sf:radiobutton name="characters" id="characters"
										value="hanbok" path="profile_character" label="" />	
						<img class="mastheader-avatar mb-3"
							src="resources/images/characterImage/hanbok.png" alt="..." /></p>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.dftChar == 1 }">
						<p><sf:radiobutton name="characters" id="characters"
										value="dftChar" path="profile_character" label="" />	
						<img class="mastheader-avatar mb-3"
							src="resources/images/characterImage/dftChar.png" alt="..." /></p>
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.rapunzel == 1 }">
						<p><sf:radiobutton name="characters" id="characters"
										value="rapunzel" path="profile_character" label="" />	
						<img class="mastheader-avatar mb-3"
							src="resources/images/characterImage/rapunzel.png" alt="..." /></p>
					</c:when>
				</c:choose>
					</div>				

				<table>
				<tr>
					<sf:input type="text" class="form-control" id="getCheeseAeong"
						value="${user.cheeseAeong }"
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
					<sf:input type="text" class="form-control" id="getGongdaesang"
						value="${user.gongdaesang }"
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
					<sf:input type="text" class="form-control" id="getDftChar"
						value="${user.dftChar }"
						style="background-color: white; width:250px; display:none;"
						path="dftChar" />
					<sf:input type="text" class="form-control" id="getRapunzel"
						value="${user.rapunzel }"
						style="background-color: white; width:250px; display:none;"
						path="rapunzel" />

					</tr>
					<tr>
						<td colspan="3"><br>
							<button type="submit" class="btn-buy">수정하기</button></td>
					</tr>
				</table>
					
				</div>
				</sf:form>

			
		</div>

	</header>

	<!-- Footer-->
	<%@include file="footer.jsp"%>
	<!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
	<div class="scroll-to-top d-lg-none position-fixed">
		<a class="js-scroll-trigger d-block text-center text-white rounded"
			href="#page-top"><i class="fa fa-chevron-up"></i></a>
	</div>

</body>
</html>