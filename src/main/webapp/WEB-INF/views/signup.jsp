<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<script>
	function isNumber() {
	    if (event.keyCode<48 || event.keyCode>57) {
	       event.returnValue = false;
	    }
	 }
</script>

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

<title>HealthU :: 회원가입</title>
</head>
<body onLoad="SetToToday('FirstSelect');" style="background-color:#1a252f">
	<%@include file="header.jsp"%>

	<header class="bg-primary text-black text-center">
		<section class="page-section portfolio" id="portfolio">
			<div class="container d-flex align-items-center flex-column">
			<h1>회원가입</h1>
			</div>
			
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-burn"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			
			<div class="container table-responsive control-group">
				<div class="form-group floating-label-form-group controls mb-0 pb-2">
				<sf:form method="post" action="${pageContext.request.contextPath}/docreate" modelAttribute="user">
					<table style="margin-left: auto; margin-right: auto;">
						<tr style="border: 10px solid transparent">
						<td style="text-align:right"> <h5 style="display:inline"> 닉네임ㅤ </h5> </td>
						<td> <sf:input type="text" class="form-control" id="username" value=""
								style="background-color: white; width:250px;" path="username"/> </td>
						</tr>
					
						<tr style="border: 10px solid transparent">
						<td style="text-align:right"> <h5 style="display:inline"> IDㅤ </h5> </td>
						<td> <sf:input type="text" class="form-control" id="user_id" value=""
								style="background-color: white; width:250px;" path="user_id"/> </td>
						</tr>
						
						<tr style="border: 10px solid transparent">
						<td style="text-align:right"> <h5 style="display:inline"> PWㅤ </h5> </td>
						<td> <sf:input type="password" class="form-control" id="password" value=""
								style="background-color: white; width:250px;" path="password"/> </td>
						</tr>
						
						<tr style="border: 10px solid transparent">
						<td style="text-align:right"> <h5 style="display:inline"> 성별ㅤ </h5> </td>
						<td style="vertical-align: bottom"> <form class="form-inline"><div class="form-group">
						<sf:radiobutton name="gender" id="gender" value="female" path="gender"/> 여자ㅤ
						<sf:radiobutton name="gender" id="gender" value="male" path="gender"/> 남자
						</div></form></td>
						</tr>

						<tr style="border: 10px solid transparent">
							<td style="text-align: right"><h5 style="display: inline"> 키ㅤ</h5></td>
	                        <td style="text-align: left"><sf:input type="text"
	                           name="height" id="height" onkeypress="isNumber()"
	                           class="form-control2"
	                           style="background-color: white; width: 200px;" path="height"/>
	                           <h5 style="display: inline">ㅤcm</h5></td>
                		</tr>
                		
                		<tr style="border: 10px solid transparent">
	                        <td style="text-align: right"><h5 style="display: inline"> 몸무게ㅤ</h5></td>
	                        <td style="text-align: left"><sf:input type="text"
	                           name="weight" id="weight" onkeypress="isNumber()"
	                           class="form-control2"
	                           style="background-color: white; width: 200px;" path="weight"/>
	                           <h5 style="display: inline">ㅤkg </h5></td>
                     	</tr>
                		
						<tr style="border: 10px solid transparent">
						<td style="text-align:right"><h5 style="display:inline"> 운동목적ㅤ </h5></td>
						<td>
							<sf:radiobutton name="purpose" id="purpose" value="whole_body" path="purpose"/> 전신 운동ㅤ
							<sf:radiobutton name="purpose" id="purpose" value="core_enhancement" path="purpose"/> 코어 강화 <br>
							<sf:radiobutton name="purpose" id="purpose" value="lower_body_strengthening" path="purpose"/> 하체 강화ㅤ 
							<sf:radiobutton name="purpose" id="purpose" value="upper_body_strengthening" path="purpose"/> 상체 강화  
						</td>
						</tr>
						
						<!-- enabled을 1로 지정 -->
						<tr style="border: 10px solid transparent; display:none;">
							<td style="text-align:right"> <h5 style="display:inline"> ENABLEDㅤ </h5> </td>
							<td> <sf:input type="text" class="form-control" id="enabled" value="1"
									style="background-color: white; width:250px;" path="enabled"/> </td>
						</tr>
						
						<!-- 회원가입시 point 1000 지급 -->
						<tr style="border: 10px solid transparent; display:none;">
							<td style="text-align:right"> <h5 style="display:inline"> POINT </h5> </td>
							<td> <sf:input type="text" class="form-control" id="point" value="1000"
									style="background-color: white; width:250px;" path="point"/> </td>
						</tr>
						
						<tr style="border: 10px solid transparent; display:none;">
							<td style="text-align:right"> <h5 style="display:inline"> PROFILE_CHAR </h5> </td>
							<td> <sf:input type="text" class="form-control" id="profile_character" value="dftChar"
									style="background-color: white; width:250px;" path="profile_character"/> </td>
						</tr>
						
						<tr style="border: 10px solid transparent; display:none;">
							<td style="text-align:right"> <h5 style="display:inline"> CHARACTER </h5> </td>
							<td> <sf:input type="text" class="form-control" id="dftChar" value="1"
									style="background-color: white; width:250px;" path="dftChar"/> </td>
						</tr>
						
						<tr>
						<td colspan="3">
						<br>
						<button type="submit" class="btn-buy">회원가입</button>
						</td>
						</tr>
					</table>
				</sf:form>
				</div>
			</div>
			
		</section>
	</header>

	<!-- Footer-->	
   <%@include file="footer.jsp"%>
   
</body>
</html>