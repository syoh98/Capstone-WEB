<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
@media ( min-width : 576px) {
   .shop-modal-dialog {
      max-width: 400px;
      justify-content: center;
   }
}
</style>
<body>
   <!-- Portfolio Modal 1-->
   <div class="portfolio-modal modal fade" id="characterModal1"
      tabindex="-1" role="dialog" aria-labelledby="portfolioModal2Label"
      aria-hidden="true">
      <div class="shop-modal-dialog modal-xl" role="document">
         <div class="modal-content">
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
               <span aria-hidden="true"><i class="fas fa-times"></i></span>
            </button>
            <div class="modal-body text-center">
               <div class="container">
                  <div class="row justify-content-center">
                     <div class="col-lg-11">
                        <!-- Portfolio Modal - Title-->
                        <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0" id="portfolioModal2Label">캐릭터를 구매하시겠습니까?</h2>
                        <!-- Icon Divider-->
                        <div class="divider-custom">
                           <div class="divider-custom-line"></div>
                           <div class="divider-custom-icon">
                              <i class="fas fa-dumbbell"></i>
                           </div>
                           <div class="divider-custom-line"></div>
                        </div>
                        <!-- Portfolio Modal - Text-->
                        <button class="btn-buy" data-dismiss="modal"
                           onclick="location.href='${pageContext.request.contextPath}/shop'">
                           확인</button>
                           <button class="btn-buy" data-dismiss="modal"
                           onclick="location.href='${pageContext.request.contextPath}/shop'">
                           취소</button>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</body>
</html>