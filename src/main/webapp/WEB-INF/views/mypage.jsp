<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Favicons, 홈 페이지 아이콘 -->
<link rel="icon" href="resources/images/logo/favicon.ico">
<title>HealthU :: MyPage</title>
<link href="css/styles.css" rel="stylesheet" />
<!-- 부트스트랩 --> 
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" ></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script> 
<!-- 차트 링크 --> 
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<!-- 차트 데이터 --> 
<% String data_bar = "[5, 7, 3, 5, 2, 3, '${user.day_time}']"; 
   String data_area = "[20, 30, 15, 10, 20, 20, 10]"; %>

</head>
<body style="background-color:#1a252f">
   <!-- Navigation-->
   <%@include file="header.jsp"%>
   <!-- Masthead-->
   <header class="mastheader bg-primary text-white text-center">
      <div class="container d-flex align-items-center flex-column">
         
         <div class="row d-flex align-items-center">
            <div class="container text-center">   
            <!-- Masthead Subheading-->
            <p style="font-size:30px;" class="bg-primary text-black text-center">
                  오늘도 즐겁게 운동합시다 :)</p>
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
      
         <!-- Masthead Avatar Image-->
         <div class="container align-items-center row">
			
            <div class="col-xs-6 md-5">
         	<c:choose>
				<c:when test="${user.profile_character eq 'cheeseAeong' }">
					<img class="mastheader-avatar mb-3" 
						src="resources/images/characterImage/aeong_cheese.png" alt="..."/>
				</c:when>
			</c:choose>
         	<c:choose>
				<c:when test="${user.profile_character eq 'blackAeong' }">
					<img class="mastheader-avatar mb-3" 
						src="resources/images/characterImage/aeong_tuxedo.png" alt="..."/>
				</c:when>
			</c:choose>
         	<c:choose>
				<c:when test="${user.profile_character eq 'banana' }">
					<img class="mastheader-avatar mb-3" 
						src="resources/images/characterImage/banana.png" alt="..."/>
				</c:when>
			</c:choose>
         	<c:choose>
				<c:when test="${user.profile_character eq 'cookies' }">
					<img class="mastheader-avatar mb-3" 
						src="resources/images/characterImage/cookieCandy.png" alt="..."/>
				</c:when>
			</c:choose>
         	<c:choose>
				<c:when test="${user.profile_character eq 'gongdaesang' }">
					<img class="mastheader-avatar mb-3" 
						src="resources/images/characterImage/gongdaesang.png" alt="..."/>
				</c:when>
			</c:choose>
         	<c:choose>
				<c:when test="${user.profile_character eq 'woody' }">
					<img class="mastheader-avatar mb-3" 
						src="resources/images/characterImage/cowboy.png" alt="..."/>
				</c:when>
			</c:choose>
         	<c:choose>
				<c:when test="${user.profile_character eq 'haribo' }">
					<img class="mastheader-avatar mb-3" 
						src="resources/images/characterImage/haribo.png" alt="..."/>
				</c:when>
			</c:choose>
         	<c:choose>
				<c:when test="${user.profile_character eq 'sue' }">
					<img class="mastheader-avatar mb-3" 
						src="resources/images/characterImage/sue.png" alt="..."/>
				</c:when>
			</c:choose>
         	<c:choose>
				<c:when test="${user.profile_character eq 'military' }">
					<img class="mastheader-avatar mb-3" 
						src="resources/images/characterImage/military.png" alt="..."/>
				</c:when>
			</c:choose>
         	<c:choose>
				<c:when test="${user.profile_character eq 'boogi' }">
					<img class="mastheader-avatar mb-3" 
						src="resources/images/characterImage/sangsang.png" alt="..."/>
				</c:when>
			</c:choose>
         	<c:choose>
				<c:when test="${user.profile_character eq 'hanbok' }">
					<img class="mastheader-avatar mb-3" 
						src="resources/images/characterImage/hanbok.png" alt="..."/>
				</c:when>
			</c:choose>
         	<c:choose>
				<c:when test="${user.profile_character eq 'dftChar' }">
					<img class="mastheader-avatar mb-3" 
						src="resources/images/characterImage/dftChar.png" alt="..."/>
				</c:when>
			</c:choose>
         	<c:choose>
				<c:when test="${user.profile_character eq 'rapunzel' }">
					<img class="mastheader-avatar mb-3" 
						src="resources/images/characterImage/rapunzel.png" alt="..."/>
				</c:when>
			</c:choose>
            </div>
            <!-- Masthead Heading-->
            <div class="col-xs-6 md-5">
               
               <table class="table-mypg mb-3">
               <tr>
                  <td style="text-align: right">
                  <h4 class="mastheader-heading font-weight-light">닉네임: </h4>
                  </td>
                  <td><h4 class="mastheader-heading font-weight-bold">
					<c:out value="${user.username}"></c:out></h4></td>
               </tr>
               <tr>
                  <td style="text-align: right">
                  <h4 class="mastheader-heading font-weight-light">키: </h4>
                  </td>
                  <td><h4 class="mastheader-heading font-weight-bold">
					<c:out value="${user.height}"></c:out> </h4></td>
               </tr>
               <tr>
                  <td style="text-align: right">
                  <h4 class="mastheader-heading font-weight-light">체중: </h4>
                  </td>
                  <td><h4 class="mastheader-heading font-weight-bold">
					<c:out value="${user.weight}"></c:out></h4></td>
               </tr>
               </table>
            </div>
            
         </div>   


			 <!-- 그래프 -->
            <div class="container d-flex align-items-center row">
                  <div class="col-xl-6 md-5">
                      <div class="card mb-4">
                          <div class="card-header text-dark">
                              <i class="fas fa-chart-area me-1"></i>
                              일일 누적 칼로리
                          </div>
                          <div class="card-body">
                          <canvas id="myAreaChart" width="100%" height="40"></canvas></div>
                      </div>
                  </div>
                  <div class="col-xl-6 md-5">
                      <div class="card mb-4">
                          <div class="card-header text-dark">
                              <i class="fas fa-chart-bar me-1"></i>
                              일일 누적 시간
                          </div>
                          <div class="card-body">
                          <canvas id="myBarChart" width="100%" height="40"></canvas></div>
                      </div>
                  </div>
              </div>
              
              
              
              <p class="bg-primary text-black text-center" style="font-size: 30px; margin-top:100px;">보유한 캐릭터 목록</p>
               <div class="divider-custom divider-light">
                  <div class="divider-custom-line"></div>
                  <div class="divider-custom-icon">
                     <i class="fas fa-star"></i>
                  </div>
                  <div class="divider-custom-line"></div>
               </div>
              
              <div class="container d-flex align-items-center row">
              	<c:choose>
					<c:when test="${user.cheeseAeong == 1 }">
               			<img class="mastheader-avatar mb-3" 
                  				src="resources/images/characterImage/aeong_cheese.png" alt="..." />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.blackAeong == 1 }">
               			<img class="mastheader-avatar mb-3" 
                  				src="resources/images/characterImage/aeong_tuxedo.png" alt="..." />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.banana == 1 }">
               			<img class="mastheader-avatar mb-3" 
                  				src="resources/images/characterImage/banana.png" alt="..." />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.cookies == 1 }">
               			<img class="mastheader-avatar mb-3" 
                  				src="resources/images/characterImage/cookieCandy.png" alt="..." />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.gongdaesang == 1 }">
               			<img class="mastheader-avatar mb-3" 
                  				src="resources/images/characterImage/gongdaesang.png" alt="..." />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.woody == 1 }">
               			<img class="mastheader-avatar mb-3" 
                  				src="resources/images/characterImage/cowboy.png" alt="..." />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.haribo == 1 }">
               			<img class="mastheader-avatar mb-3" 
                  				src="resources/images/characterImage/haribo.png" alt="..." />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.military == 1 }">
               			<img class="mastheader-avatar mb-3" 
                  				src="resources/images/characterImage/military.png" alt="..." />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.boogi == 1 }">
               			<img class="mastheader-avatar mb-3" 
                  				src="resources/images/characterImage/sangsang.png" alt="..." />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.sue == 1 }">
               			<img class="mastheader-avatar mb-3" 
                  				src="resources/images/characterImage/sue.png" alt="..." />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.hanbok == 1 }">
               			<img class="mastheader-avatar mb-3" 
                  				src="resources/images/characterImage/hanbok.png" alt="..." />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.dftChar == 1 }">
               			<img class="mastheader-avatar mb-3" 
                  				src="resources/images/characterImage/dftChar.png" alt="..." />
					</c:when>
				</c:choose>
				<c:choose>
					<c:when test="${user.rapunzel == 1 }">
               			<img class="mastheader-avatar mb-3" 
                  				src="resources/images/characterImage/rapunzel.png" alt="..." />
					</c:when>
				</c:choose>
              </div>   
      </div>
      
   </header>

   <!-- Footer-->
   <%@include file="footer.jsp"%>
   <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
   <div class="scroll-to-top d-lg-none position-fixed">
      <a class="js-scroll-trigger d-block text-center text-white rounded"
         href="#page-top"><i class="fa fa-chevron-up"></i></a>
   </div>

   <!-- Bar 차트 --> 
	<script> 
   	  /* var labels = new Array();
   	  var datas = new Array();
   	  <c:forEach var="dayWO" items="${dayWO}">
   	  	var json = new Object();
   	  	//labels.push("${dayWO.day}");
   	  	datas.push("${dayWO.day_time}");
   	  </c:forEach> */
   	  
   	  
      var ctx = document.getElementById('myBarChart'); 
      var myChart = new Chart(ctx, { 
         type: 'bar', 
         data: { 
         labels: ['2021-06-14', '2021-06-15', '2021-06-16', '2021-06-17', '2021-06-18'], 
         datasets: [{ label: '오늘의 소모시간을 확인하세요', 
         data: [120, 360, 240, 60, '${user.day_time}'],
         backgroundColor: [ 'rgba(255, 99, 132, 0.2)', 'rgba(54, 162, 235, 0.2)', 
            'rgba(255, 206, 86, 0.2)', 'rgba(75, 192, 192, 0.2)', 
            'rgba(153, 102, 255, 0.2)', 'rgba(255, 159, 64, 0.2)', 'rgba(255, 159, 64, 0.2)' ], 
         borderColor: [ 'rgba(255, 99, 132, 1)', 'rgba(54, 162, 235, 1)', 
            'rgba(255, 206, 86, 1)', 'rgba(75, 192, 192, 1)', 
            'rgba(153, 102, 255, 1)', 'rgba(255, 159, 64, 1)', 'rgba(255, 159, 64, 1)'], 
         borderWidth: 1 }] }, 
         options: { scales: { yAxes: [{ ticks: { beginAtZero: true } }] } } }); 
   </script>

   <!-- Graph 차트 --> 
   <script> 
      var ctx = document.getElementById('myAreaChart').getContext('2d'); 
      var chart = new Chart(ctx, { 
         type: 'line', 
         data: { labels: ['2021-06-14', '2021-06-15', '2021-06-16', '2021-06-17', '2021-06-18'], 
               datasets: [{ label: '오늘의 누적 칼로리를 확인하세요', 
               backgroundColor: 'transparent', borderColor: 'orange', 
               data: [20, 10, 35, 20, '${user.day_cal}'] }] }, 
         options: {} }); 
   </script>

</body>
</html>