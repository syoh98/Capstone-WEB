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
                        style="background-image: url(https://static01.nyt.com/images/2017/04/09/well/9minute-workout-promo/9minute-workout-promo-jumbo.png)">
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
                        style="background: url(https://static01.nyt.com/images/2017/10/30/well/weight-promo/weight-promo-master768.png)">
                        <div class="carousel-container">
                           <div class="carousel-content">
                              <h2 class="animate__animated animate__fadeInDown">
                                 Let's <span>Workout</span> Together!
                              </h2>
                              <p class="animate__animated animate__fadeInUp">운동을 하면 기분이 조크든요.
                                 정말인가요? 구라인가 직접 해보세요! 당신의 기분도 좋아지련지는 나도 몰라요. 알아서 찾아내봐요.
                                 조크조크조크든요.~~ 홀롤 로 로 로 여기에는 뭘 써야하지 운동을 하면 땀나. 주륵 주르륵륵
                                 
                                 내 땀도 주르륵 주르륵~ 땀이 흘러 내려 티셔츠 젖어가잖아~ 땀, 땀, 땀, 피땀눈물우우
                                 architecto.</p>
                              <a href="workout"
                                 class="btn-get-started animate__animated animate__fadeInUp">Let's
                                 Go</a>
                           </div>
                        </div>
                     </div>

                     <!-- Slide 3 -->
                     <div class="carousel-item bgimg-fit"
                        style="background: url(/webapp/resources/assets/img/slide/slide-3.jpg)">
                        <div class="carousel-container">
                           <div class="carousel-content">
                              <h2 class="animate__animated animate__fadeInDown">
                                 문구 <span>강조</span>
                              </h2>
                              <p class="animate__animated animate__fadeInUp">내용쓰</p>
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
   
   <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes)-->
   <div class="scroll-to-top d-lg-none position-fixed">
      <a class="js-scroll-trigger d-block text-center text-white rounded"
         href="#page-top"><i class="fa fa-chevron-up"></i></a>
   </div>

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