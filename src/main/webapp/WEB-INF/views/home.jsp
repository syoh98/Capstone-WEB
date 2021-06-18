<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<!-- Favicons, 홈 페이지 아이콘 -->
<link rel="icon" href="resources/images/logo/favicon.ico">

<!-- Vendor CSS Files -->
<link href="css/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/icofont/icofont.min.css" rel="stylesheet">
<link href="css/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="css/animate.css/animate.min.css" rel="stylesheet">
<link href="css/owl.carousel/assets/owl.carousel.min.css"
   rel="stylesheet">
<link href="css/venobox/venobox.css" rel="stylesheet">

<title>HealthU :: Home</title>



</head>
<body id="page-top" style="background-color:#1a252f">
   <!-- Navigation-->
   <%@include file="header.jsp"%>
   <!-- Masthead-->
   <header class="mastheader bg-primary text-white text-center">
      <div class="container d-flex align-items-center flex-column">
         <!-- ======= Hero Section ======= -->
         <section id="hero">
            <div class="hero-container">
               <div id="heroCarousel" class="carousel slide carousel-fade"
                  data-ride="carousel">

                  <ol class="carousel-indicators" id="hero-carousel-indicators">
                     <li data-target="#heroCarousel" data-slide-to="0" class="active"></li>
                     <li data-target="#heroCarousel" data-slide-to="1" class=""></li>
                     <li data-target="#heroCarousel" data-slide-to="2" class=""></li>
                  </ol>

                  <div class="carousel-inner" role="listbox">


                     <!-- Slide 1 -->
                     <div class="carousel-item active bgimg-fit"
                        style="background-image: url(https://static01.nyt.com/images/2017/04/09/well/9minute-workout-promo/9minute-workout-promo-jumbo.png);
                        	background-size: cover; ">
                        <div class="carousel-container">
                           <div class="carousel-content">
                              <h2 class="animate__animated animate__fadeInDown">
                                 Welcome to <span>HealthU</span>
                              </h2>
                              <p class="animate__animated animate__fadeInUp">안녕하세요.
                                 인공지능 AI 홈 트레이닝 웹 애플리케이션 HealthU 입니다. </p>
                              <a href=""
                                 class="btn-get-started animate__animated animate__fadeInUp">Read
                                 More</a>
                           </div>
                        </div>
                     </div>

                     <!-- Slide 2 -->
                     <div class="carousel-item bgimg-fit" 
                        style="background: url(https://static01.nyt.com/images/2017/10/30/well/weight-promo/weight-promo-master768.png);
                        	background-size: cover; background-repeat: no-repeat;">
                        <div class="carousel-container">
                           <div class="carousel-content">
                              <h2 class="animate__animated animate__fadeInDown">
                                 Let's <span>Workout</span> Together!
                              </h2>
                              <p class="animate__animated animate__fadeInUp">
                              	If you don’t make time for exercise, you’ll probably have to make time for illness.
								<br>Robin Sharma<br><br>
                                 
                                 운동을 위해 시간을 내지 않으면,병 때문에 시간을 내야하게 될지도 모른다.
                                 <br>로빈 샤머
                              </p>
                              <a href="workout"
                                 class="btn-get-started animate__animated animate__fadeInUp">Let's
                                 Go</a>
                           </div>
                        </div>
                     </div>

                     <!-- Slide 3 -->
                     <div class="carousel-item bgimg-fit"
                        style="background: url(https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80); 
                        	background-size: cover; background-repeat: no-repeat; background-position: center;">
                        <div class="carousel-container">
                           <div class="carousel-content">
                              <h2 class="animate__animated animate__fadeInDown">
                                 문구 <span>강조</span>
                              </h2>
                              <p class="animate__animated animate__fadeInUp">
                              You have to exercise, or at some point you’ll just break down.
                              <br>Barack Obama<br><br>
                              운동 해야 한다. 그렇지 않으면 어느 순간 당신은 고장 날 것이다.
                              <br>버락 오바마                       
								</p>
                              <a href=""
                                 class="btn-get-started animate__animated animate__fadeInUp">Read
                                 More</a>
                           </div>
                        </div>
                     </div>

                  </div>

                  <a class="carousel-control-prev" href="#heroCarousel"
                     role="button" data-slide="prev"> <span
                     class="carousel-control-prev-icon icofont-rounded-left"
                     aria-hidden="true"></span> <span class="sr-only">Previous</span>
                  </a> <a class="carousel-control-next" href="#heroCarousel"
                     role="button" data-slide="next"> <span
                     class="carousel-control-next-icon icofont-rounded-right"
                     aria-hidden="true"></span> <span class="sr-only">Next</span>
                  </a>

               </div>
            </div>
         </section>
         <!-- End Hero -->
      </div>
   </header>

   <!-- Footer-->
   <%@include file="footer.jsp"%>

 
</body>
</html>