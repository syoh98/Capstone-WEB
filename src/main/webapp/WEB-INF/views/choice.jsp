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
<title>Choice :: 운동 목록</title>
<!-- Favicons, 홈 페이지 아이콘 -->
<link rel="icon" href="resources/images/favicon.ico">
</head>
<style>
.workout-wrap {
   width: 100%;
   height: auto;
   border: 4px solid #BDBDBD;
   position: relative;
}

.workout-image-text {
   padding: 5px 10px;
   top: 0%;
   left: 0%;
   position: absolute;
}

.gray-image {
   filter: grayscale(0.1%) opacity(0.6);
}

</style>

<body id="page-top" style="background-color:#1a252f">
   <!-- Navigation-->
   <%@include file="header.jsp"%>

   <!-- Masthead-->
   <div class=" bg-primary">
      <!-- masthead -->
      <!-- <div class="container d-flex align-items-center flex-column">
         <h1>Choice 운동</h1>
         <h2>GRID 들어갈 곳</h2>
      </div> -->
      <!-- Portfolio Section-->
      <section class="page-section portfolio" id="portfolio">
         <div class="container">
            <!-- Portfolio Section Heading-->
            <h2
               class="page-section-heading text-center text-secondary mb-0 pt-5">
               <!-- text-uppercase -->
               운동 목록
            </h2>

            <!-- Icon Divider-->
            <div class="divider-custom">
               <div class="divider-custom-line"></div>
               <div class="divider-custom-icon">
                  <i class="fas fa-dumbbell"></i>
               </div>
               <div class="divider-custom-line"></div>
            </div>

            <!-- Portfolio Grid Items-->
            <div class="row justify-content-center pt-5">

               <!-- ------------------------- 1번째 줄 ----------------------------- -->
               <!-- Portfolio Item 1-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal1">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/wideSquat.png" alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>와이드 스쿼트</p>
                  </div>
               </div>

               <!-- Portfolio Item 2-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal2">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/squat.png" alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>스쿼트</p>
                  </div>
               </div>

               <!-- Portfolio Item 3-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal3">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/lunge.png" alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>런지</p>
                  </div>
               </div>

               <!-- Portfolio Item 4-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal4">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/sideLunge.png" alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>사이드 런지</p>
                  </div>
               </div>

               <!-- ------------------------- 2번째 줄 ----------------------------- -->

               <!-- Portfolio Item 5-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal5">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/sideKneeUp.png" alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>사이드 니 업</p>
                  </div>
               </div>

               <!-- Portfolio Item 6-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal6">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/standingSideLegRaises.png"
                           alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>사이트 레그레이즈</p>
                  </div>
               </div>

               <!-- Portfolio Item 7-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal7">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/goodMorning.png" alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>굿모닝</p>
                  </div>
               </div>

               <!-- Portfolio Item 8-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal8">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/sideLateralRaise.png"
                           alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>사이드 레터럴 레이즈</p>
                  </div>
               </div>

               <!-- ------------------------- 3번째 줄 ----------------------------- -->

               <!-- Portfolio Item 9-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal9">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/standingShoulderPress.png"
                           alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>스텐딩 숄더 프레스</p>
                  </div>
               </div>

               <!-- Portfolio Item 10-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal10">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/frontRaise.png" alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>프론트 레이즈</p>
                  </div>
               </div>

               <!-- Portfolio Item 11-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal11">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/sideKick.png" alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>사이드 킥</p>
                  </div>
               </div>

               <!-- Portfolio Item 12-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal12">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/stepUp.png" alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>스탭 업</p>
                  </div>
               </div>

               <!-- ------------------------- 4번째 줄 ----------------------------- -->

               <!-- Portfolio Item 13-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal13">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/dumbbellThruster.png"
                           alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>덤벨 쓰러스터</p>
                  </div>
               </div>

               <!-- Portfolio Item 14-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal14">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/kickAlternateToeTouch.png"
                           alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>얼터네이트 토 터치</p>
                  </div>
               </div>

               <!-- Portfolio Item 15-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal15">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/chairSquat.png" alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>의자 스쿼트</p>
                  </div>
               </div>

               <!-- Portfolio Item 16-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal16">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/chairLunge.png" alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>의자 런지</p>
                  </div>
               </div>

               <!-- ------------------------- 5번째 줄 ----------------------------- -->

               <!-- Portfolio Item 17-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal17">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/backwardLunge.png" alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>백워드 런지</p>
                  </div>
               </div>

               <!-- Portfolio Item 18-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal18">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/quarterSquat.png" alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>쿼트 스쿼트</p>
                  </div>
               </div>

               <!-- Portfolio Item 19-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal19">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/dumbbellDeadlift.PNG"
                           alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>데드리프트</p>
                  </div>
               </div>

               <!-- Portfolio Item 20-->
               <div class="col-md-6 col-lg-3 mb-5">
                  <div class="portfolio-item workout-wrap mx-auto" data-toggle="modal"
                     data-target="#portfolioModal20">
                     <div
                        class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
                        <div
                           class="portfolio-item-caption-content text-center text-white">
                           <i class="fas fa-plus fa-3x"></i>
                        </div>
                     </div>
                     <div>
                        <img class="img-fluid"
                           src="resources/images/workoutImage/standingPulldown.PNG"
                           alt="..." />
                     </div>
                  </div>
                  <div class="pt-3 text-dark text-center font-weight-bold">
                     <p>스탠딩 풀 다운</p>
                  </div>
               </div>


            </div>
         </div>
      </section>
   </div>

   <!-- Modal -->
   <%@include file="choiceModal.jsp"%>

   <!-- Footer-->
   <%@include file="footer.jsp"%>

   <!-- Copyright Section-->
   <div class="copyright py-4 text-center text-white">
      <div class="container">
         <small> Copyright &copy; Your Website <!-- This script automatically adds the current year to your website footer-->
            <!-- (credit: https://updateyourfooter.com/)--> <script>
               document.write(new Date().getFullYear());
            </script>
         </small>
      </div>
   </div>
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