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
<title>Choice:: Collection</title>
</head>
<link href="resources/css/styles.css" rel="stylesheet" />
<link href="resources/css/collection.css" rel="stylesheet" />
<link rel="icon" href="resources/images/favicon.ico">
<style>
.collection .collection-item {
   cursor: pointer;
   position: relative;
   display: block;
   max-width: 25rem;
   border-radius: 0.5rem;
   overflow: hidden;
}

.collection .collection-item .collection-item-caption {
   position: absolute;
   top: 0;
   left: 0;
   transition: all 0.2s ease-in-out;
   opacity: 0;
   background-color: rgba(26, 188, 156, 0.9);
}

.collection .collection-item .collection-item-caption:hover {
   opacity: 1;
}

.collection .collection-item .collection-item-caption .collection-item-caption-content
   {
   font-size: 1.5rem;
}

.collection-modal .collection-modal-title {
   font-size: 1.5rem;
   line-height: 1.5rem;
}

@media ( min-width : 992px) {
   .collection-modal .collection-modal-title {
      font-size: 2.0rem;
      line-height: 2.0rem;
   }
}

.collection-modal .close {
   position: absolute;
   z-index: 1;
   right: 1.5rem;
   top: 1rem;
   font-size: 3rem;
   line-height: 3rem;
   color: skyblue;
   opacity: 1;
}

.collection-custom {
   margin: 1.25rem 0 1.5rem;
   width: 100%;
   display: flex;
   justify-content: center;
   align-items: center;
}

.collection-custom .collection-custom-line {
   width: 100%;
   max-width: 7rem;
   height: 0.25rem;
   background-color: #6799FF;
   border-radius: 1rem;
   border-color: #6799FF !important;
}

.collection-custom .collection-custom-line:first-child {
   margin-right: 1rem;
}

.collection-custom .collection-custom-line:last-child {
   margin-left: 1rem;
}

.collection-custom .collection-custom-icon {
   color: #003399 !important;
   font-size: 1.5rem;
}

.controls {
   position: relative;
   margin-top: 10%; "
   font-weight: bold;
}
</style>
<body style="background-color: #1a252f">
   <%@include file="header.jsp"%>
   <!-- masthead -->
   <header class="mastheader bg-primary text-center">
      <div class="container d-flex align-items-center flex-column">
         <div class="gallery">
            <div class="gallery-container" style="position: sta;">
               <div class="gallery-item gallery-item-1" data-index="1"
                  data-toggle="modal" data-target="#collectionModal1">
                  <p class="collection-text">
                     초보자를<br>위한 운동<br>#1
                  </p>
                  <img class="img-item" src="resources/images/img/chairSquat.PNG"
                     alt="..." />
                  <div class="bottom-text" style="margin-left: 2%;">
                     <div class="mr-1" style="float: left;">* AI운동</div>
                     <div class="mr-1" style="float: left;">* 초보자운동</div>
                     <div class="mr-1" style="float: left;">* 의자</div>
                     <div style="float: left;">* 10분 미만</div>
                  </div>
               </div>

               <div class="gallery-item gallery-item-2" data-index="2"
                  data-toggle="modal" data-target="#collectionModal2">
                  <p class="collection-text">
                     초보자를<br>위한 운동<br>#2
                  </p>
                  <img class="img-item" src="resources/images/img/sideKick.png"
                     alt="..." />
                  <div class="bottom-text" style="margin-left: 10%;">
                     <div class="mr-2" style="float: left;">* AI운동</div>
                     <div class="mr-2" style="float: left;">* 초보자 운동</div>
                     <div style="float: left;">* 10분 미만</div>
                  </div>
               </div>

               <div class="gallery-item gallery-item-3" data-index="3"
                  data-toggle="modal" data-target="#collectionModal3">
                  <p class="collection-text">
                     상체<br>집중 운동
                  </p>
                  <img class="img-item" src="resources/images/img/bentKeen.png"
                     alt="..." />
                  <div class="bottom-text" style="margin-left: 13%;">
                     <div class="mr-2" style="float: left;">* AI운동</div>
                     <div class="mr-2" style="float: left;">* 상체운동</div>
                     <div style="float: left;">* 10분 미만</div>
                  </div>
               </div>

               <div class="gallery-item gallery-item-4" data-index="4"
                  data-toggle="modal" data-target="#collectionModal4">
                  <p class="collection-text">
                     하체<br>집중 운동
                  </p>
                  <img class="img-item" src="resources/images/img/squat.png"
                     alt="..." />
                  <div class="bottom-text" style="margin-left: 12%;">
                     <div class="mr-2" style="float: left;">* AI운동</div>
                     <div class="mr-2" style="float: left;">* 하체운동</div>
                     <div style="float: left;">* 10분 미만</div>
                  </div>
               </div>

               <div class="gallery-item gallery-item-5" data-index="5"
                  data-toggle="modal" data-target="#collectionModal5">
                  <p class="collection-text">
                     전신<br>운동
                  </p>
                  <img class="img-item" src="resources/images/img/wholeBody.png"
                     alt="..." />
                  <div class="bottom-text" style="margin-left: 12%;">
                     <div class="mr-2" style="float: left;">* AI운동</div>
                     <div class="mr-2" style="float: left;">* 전신운동</div>
                     <div style="float: left;">* 10분 미만</div>
                  </div>
               </div>


               <div class="gallery-item gallery-item-6" data-index="6"
                  data-toggle="modal" data-target="#collectionModal6">
                  <p class="collection-text">
                     도구<br>집중 운동
                  </p>
                  <img class="img-item" src="resources/images/img/dumbbell.png"
                     alt="..." />
                  <div class="bottom-text" style="margin-left: 5%;">
                     <div class="mr-1" style="float: left;">* AI운동</div>
                     <div class="mr-1" style="float: left;">* 도구운동</div>
                     <div class="mr-1" style="float: left;">* 덤벨</div>
                     <div style="float: left;">* 10분 미만</div>
                  </div>
               </div>
            </div>
            <div class="gallery-controls mb-5 controls"></div>
         </div>
      </div>

      <!-- Collection Modals-->

      <!-- Collection Modal 1-->
      <div class="collection-modal modal fade" id="collectionModal1"
         tabindex="-1" role="dialog" aria-labelledby="collectionModal1Label"
         aria-hidden="true">
         <div class="modal-dialog modal-xl" role="document" style="top: 10%;">
            <div class="modal-content">
               <button class="close" type="button" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true"><i class="fas fa-times"></i></span>
               </button>
               <div class="modal-body text-center">
                  <div class="container">
                     <div class="row justify-content-center">
                        <div class="col-lg-9">
                           <!-- Collection Modal - Title-->
                           <h2 class="collection-modal-title text-uppercase mb-0"
                              id="collectionModal1Label" style="color: #002266;">초보자를
                              위한 운동 #1</h2>
                           <!-- Icon Divider-->
                           <div class="collection-custom">
                              <div class="collection-custom-line"></div>
                              <div class="collection-custom-icon">
                                 <i class="fas fa-dumbbell"></i>
                              </div>
                              <div class="collection-custom-line"></div>
                           </div>

                           <!-- Collection Modal - Text-->
                           <div>
                              <h4 class="mb-5">운동 순서</h4>
                              <p class="mb-2">1) 의자 스쿼트</p>
                              <p class="mb-2">2) 굿모닝</p>
                              <p class="mb-5">3) 의자 런지</p>
                           </div>

                           <button class="btn-buy" data-dismiss="modal"
                              onclick="location.href='${pageContext.request.contextPath}/wideSquat'">
                              초보자를 위한 운동 #1 시작</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <!-- Collection Modal 2-->
      <div class="collection-modal modal fade" id="collectionModal2"
         tabindex="-1" role="dialog" aria-labelledby="collectionModal2Label"
         aria-hidden="true">
         <div class="modal-dialog modal-xl" role="document" style="top: 10%;">
            <div class="modal-content">
               <button class="close" type="button" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true"><i class="fas fa-times"></i></span>
               </button>
               <div class="modal-body text-center">
                  <div class="container">
                     <div class="row justify-content-center">
                        <div class="col-lg-9">
                           <!-- Collection Modal - Title-->
                           <h2 class="collection-modal-title text-uppercase mb-0"
                              id="collectionModal2Label" style="color: #002266;">초보자를
                              위한 운동 #2</h2>
                           <!-- Icon Divider-->
                           <div class="collection-custom">
                              <div class="collection-custom-line"></div>
                              <div class="collection-custom-icon">
                                 <i class="fas fa-dumbbell"></i>
                              </div>
                              <div class="collection-custom-line"></div>
                           </div>

                           <!-- Collection Modal - Text-->
                           <div>
                              <h4 class="mb-5">운동 순서</h4>
                              <p class="mb-2">1) 프론트 레이즈</p>
                              <p class="mb-2">2) 스탠딩 폴다운</p>
                              <p class="mb-5">3) 사이드 킥</p>
                           </div>
                           <button class="btn-buy" data-dismiss="modal"
                              onclick="location.href='${pageContext.request.contextPath}/wideSquat'">
                              초보자를 위한 운동 #2 시작</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <!-- Collection Modal 3-->
      <div class="collection-modal modal fade" id="collectionModal3"
         tabindex="-1" role="dialog" aria-labelledby="collectionModal3Label"
         aria-hidden="true">
         <div class="modal-dialog modal-xl" role="document" style="top: 10%;">
            <div class="modal-content">
               <button class="close" type="button" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true"><i class="fas fa-times"></i></span>
               </button>
               <div class="modal-body text-center">
                  <div class="container">
                     <div class="row justify-content-center">
                        <div class="col-lg-9">
                           <!-- Collection Modal - Title-->
                           <h2 class="collection-modal-title text-uppercase mb-0"
                              id="collectionModal3Label" style="color: #002266;">상체
                              집중운동</h2>
                           <!-- Icon Divider-->
                           <div class="collection-custom">
                              <div class="collection-custom-line"></div>
                              <div class="collection-custom-icon">
                                 <i class="fas fa-dumbbell"></i>
                              </div>
                              <div class="collection-custom-line"></div>
                           </div>

                           <!-- Collection Modal - Text-->
                           <div>
                              <h4 class="mb-5">운동 순서</h4>
                              <p class="mb-2">1) 굿모닝</p>
                              <p class="mb-2">2) 사이드 레터럴 레이즈</p>
                              <p class="mb-5">3) 스탠딩 풀다운</p>
                           </div>
                           <button class="btn-buy" data-dismiss="modal"
                              onclick="location.href='${pageContext.request.contextPath}/wideSquat'">
                              상체 집중운동 시작</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <!-- Collection Modal 4-->
      <div class="collection-modal modal fade" id="collectionModal4"
         tabindex="-1" role="dialog" aria-labelledby="collectionModal4Label"
         aria-hidden="true">
         <div class="modal-dialog modal-xl" role="document" style="top: 10%;">
            <div class="modal-content">
               <button class="close" type="button" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true"><i class="fas fa-times"></i></span>
               </button>
               <div class="modal-body text-center">
                  <div class="container">
                     <div class="row justify-content-center">
                        <div class="col-lg-9">
                           <!-- Collection Modal - Title-->
                           <h2 class="collection-modal-title text-uppercase mb-0"
                              id="collectionModal4Label" style="color: #002266;">하체
                              집중운동</h2>
                           <!-- Icon Divider-->
                           <div class="collection-custom">
                              <div class="collection-custom-line"></div>
                              <div class="collection-custom-icon">
                                 <i class="fas fa-dumbbell"></i>
                              </div>
                              <div class="collection-custom-line"></div>
                           </div>

                           <!-- Collection Modal - Text-->
                           <div>
                              <h4 class="mb-5">운동 순서</h4>
                              <p class="mb-2">1) 스쿼트</p>
                              <p class="mb-2">2) 사이드 킥</p>
                              <p class="mb-5">3) 사이드 런지</p>
                           </div>
                           <button class="btn-buy" data-dismiss="modal"
                              onclick="location.href='${pageContext.request.contextPath}/wideSquat'">
                              하체 집중운동 시작</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <!-- Collection Modal 5-->
      <div class="collection-modal modal fade" id="collectionModal5"
         tabindex="-1" role="dialog" aria-labelledby="collectionModal5Label"
         aria-hidden="true">
         <div class="modal-dialog modal-xl" role="document" style="top: 10%;">
            <div class="modal-content">
               <button class="close" type="button" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true"><i class="fas fa-times"></i></span>
               </button>
               <div class="modal-body text-center">
                  <div class="container">
                     <div class="row justify-content-center">
                        <div class="col-lg-9">
                           <!-- Collection Modal - Title-->
                           <h2 class="collection-modal-title text-uppercase mb-0"
                              id="collectionModal5Label" style="color: #002266;">전신 운동</h2>
                           <!-- Icon Divider-->
                           <div class="collection-custom">
                              <div class="collection-custom-line"></div>
                              <div class="collection-custom-icon">
                                 <i class="fas fa-dumbbell"></i>
                              </div>
                              <div class="collection-custom-line"></div>
                           </div>

                           <!-- Collection Modal - Text-->
                           <div>
                              <h4 class="mb-5">운동 순서</h4>
                              <p class="mb-2">1) 스탠딩 풀 다운</p>
                              <p class="mb-2">2) 프론트 레이즈</p>
                              <p class="mb-2">3) 사이드 니 업</p>
                              <p class="mb-5">4) 덤벨 데드리프티</p>
                           </div>
                           <button class="btn-buy" data-dismiss="modal"
                              onclick="location.href='${pageContext.request.contextPath}/wideSquat'">
                              초보자를 위한 운동 #1 시작</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>

      <!-- Collection Modal 6-->
      <div class="collection-modal modal fade" id="collectionModal6"
         tabindex="-1" role="dialog" aria-labelledby="collectionModal6Label"
         aria-hidden="true">
         <div class="modal-dialog modal-xl" role="document" style="top: 10%;">
            <div class="modal-content">
               <button class="close" type="button" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true"><i class="fas fa-times"></i></span>
               </button>
               <div class="modal-body text-center">
                  <div class="container">
                     <div class="row justify-content-center">
                        <div class="col-lg-9">
                           <!-- Collection Modal - Title-->
                           <h2 class="collection-modal-title text-uppercase mb-0"
                              id="collectionModal6Label" style="color: #002266;">도구
                              집중운동</h2>
                           <!-- Icon Divider-->
                           <div class="collection-custom">
                              <div class="collection-custom-line"></div>
                              <div class="collection-custom-icon">
                                 <i class="fas fa-dumbbell"></i>
                              </div>
                              <div class="collection-custom-line"></div>
                           </div>

                           <!-- Collection Modal - Text-->
                           <div>
                              <h4 class="mb-5">운동 순서</h4>
                              <p class="mb-2">1) 사이드 레터럴 레이즈</p>
                              <p class="mb-2">2) 스탭업</p>
                              <p class="mb-2">3) 프론트 레이즈</p>
                              <p class="mb-5">4) 스탠딩 숄더 프레스</p>
                           </div>
                           <button class="btn-buy" data-dismiss="modal"
                              onclick="location.href='${pageContext.request.contextPath}/wideSquat'">
                              도구 집중운동 시작</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </header>

   <!-- Footer-->
   <%@include file="footer.jsp"%>



</body>
</html>