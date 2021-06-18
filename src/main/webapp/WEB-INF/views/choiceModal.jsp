<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.divider-custom .divider-custom-icon2 {
	color: #2c3e50 !important;
	font-size: 1.5rem;
}

.divider-custom.divider-light .divider-custom-icon2 {
	color: #fff !important;
}

.modal-header .close2 {
  padding: 1rem 1rem;
  margin: -1rem -1rem -1rem auto;
}

.portfolio-modal .close2 {
  position: absolute;
  z-index: 1;
  right: 1.5rem;
  top: 1rem;
  font-size: 3rem;
  line-height: 3rem;
  color: skyblue;
  opacity: 1;
}

.close2 {
  float: right;
  font-size: 1.5rem;
  font-weight: 700;
  line-height: 1;
  color: skyblue;
  text-shadow: 0 1px 0 #fff;
  opacity: 0.5;
}

.close2:hover {
  color: #000;
  text-decoration: none;
}

.close2:not(:disabled):not(.disabled):hover, .close:not(:disabled):not(.disabled):focus {
  opacity: 0.75;
}

button.close2 {
  padding: 0;
  background-color: transparent;
  border: 0;
}

a.close2.disabled {
  pointer-events: none;
}

</style>
</head>
<body>
	<!-- Portfolio Modals-->

	<!-- Portfolio Modal 1-->
	<div class="portfolio-modal modal fade" id="portfolioModal1"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">와이드 스쿼트</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/wideSquat.gif" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 골반 너비보다 조금 더 넓게 선 뒤, 양 손은 깍지 껴서 얼굴 앞에 두세요</p>
								<p class="mb-3" style="font-weight: 500;">2. 무릎과 발가락이 같은 방향을 가리키도록 해주세요</p>
								<p class="mb-3" style="font-weight: 500;">3. 내려갈 때는 엄지 발가락보다 무릎이 더 나오지 않도록 주의하세요</p>
								<p class="mb-5" style="font-weight: 500;">4. 올라올 때는 무릎이 양쪽으로 모이지 않도록 주의하세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/wideSquat'">
									와이드스쿼트 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 2-->
	<div class="portfolio-modal modal fade" id="portfolioModal2"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">스쿼트</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/squat.gif" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 골반 너비로 선 뒤, 양 손은 깍지 껴서 얼굴 앞에 두세요</p>
								<p class="mb-3" style="font-weight: 500;">2. 무릎과 발가락이 같은 방향을 가리키도록 해주세요</p>
								<p class="mb-3" style="font-weight: 500;">3. 내려갈 때는 엄지 발가락보다 무릎이 더 나오지 않도록 주의하세요</p>
								<p class="mb-5" style="font-weight: 500;">4. 올라갈 때는 상체를 세우지 말고, 발 뒷꿈치에 무게 중심을 주면서
									올라가세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/squat'">
									스쿼트 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 3-->
	<div class="portfolio-modal modal fade" id="portfolioModal3"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">런지</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/lunge.gif" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 골반 너비로 선 뒤, 양손은 골반 위에 올리세요</p>
								<p class="mb-2" style="font-weight: 500;">2. 오른쪽 다리를 크게 앞으로 내딛으세요</p>
								<p class="mb-3" style="font-size: 0.9rem; color: #CC3D3D;">내려갈 때 상체가 움직이지 않도록 고정하세요</p>
								<p class="mb-3" style="font-weight: 500;">3. 앞쪽 무릎이 90도 각도가 될 때까지 상체를 낮추세요</p>
								<p class="mb-3" style="font-weight: 500;">4. 오른발을 사용해서 위 방향으로 몸을 밀어주세요</p>
								<p class="mb-5" style="font-weight: 500;">5. 양쪽 방향을 번갈아 진행해주세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/lunge'">
									런지 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 4-->
	<div class="portfolio-modal modal fade" id="portfolioModal4"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">사이드 런지</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/sideLunge.gif" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 어깨 너비로 선 뒤, 양손은 앞으로 편하게 뻗어주세요</p>
								<p class="mb-2" style="font-weight: 500;">2. 스케이트를 타는 것처럼 한쪽으로 앉으세요. 앉으실 때는 반대쪽 무릎은 곧게
									펴주세요</p>
								<p class="mb-3" style="font-size: 0.9rem; color: #CC3D3D;">앉은 다리는 무릎이 앞이나 옆으로 튀어나오지 않도록 주의해주세요</p>
								<p class="mb-3" style="font-weight: 500;">3. 상체는 곧게 세운 후에 엉덩이 빼면서 골반을 접어준다는 느낌으로 지그시
									눌러주세요</p>
								<p class="mb-5" style="font-weight: 500;">4. 양쪽 방향을 번갈아 진행해주세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/sideLunge'">
									사이드 런지 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 5-->
	<div class="portfolio-modal modal fade" id="portfolioModal5"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">사이드 니 업</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/sideKneeUp.gif" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 골반 너비로 선 뒤, 양손은 편하게 머리 위로 올려주세요</p>
								<p class="mb-3" style="font-weight: 500;">2. 발끝은 바깥쪽으로 45도 각도를 유지해 주세요</p>
								<p class="mb-2" style="font-weight: 500;">3. 옆구리를 굽혀준다는 느낌으로 무릎을 발꿈치와 닿도록 올려주세요</p>
								<p class="mb-3" style="font-size: 0.9rem; color: #CC3D3D;">무리한 동작보다는 정확하게 옆구리에 자극을 느끼면서 동작해주세요</p>
								<p class="mb-5" style="font-weight: 500;">4. 양쪽 방향을 번갈아 진행해주세요</p>
								
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/sideKneeUp'">
									사이드 니 업 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 6-->
	<div class="portfolio-modal modal fade" id="portfolioModal6"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">스탠딩 사이드 레그레이즈</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/sideLateralRaise.gif"
									alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4" style="font-size: 1rem; color: #030066; font-weight: 600">양손으로 벽이나 의자를 짚고 운동하면 균형잡기에 더욱 용이합니다.</p>
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">만약 짚고 운동할 손이 없다면 양손으로 허리를 짚고 운동하세요</p>
								<p class="mb-2" style="font-weight: 500;">1. 정면을 바라보고 서 주세요.</p>
								<p class="mb-3" style="font-size: 0.9rem; color: #CC3D3D;">다리를 들어올리는 동작에서 상체가 움직이면 운동강도와 효과가
									감소하므로주의하세요.
								<p class="mb-3" style="font-weight: 500;">2. 오른쪽 다리를 45도 각도 이상 들어올렸다가 내려줍니다. 다리의 각도를
									더욱 높이 올릴 수록 자극이 더욱 강해집니다.</p>
								<p class="mb-5" style="font-weight: 500;">3. 양쪽 방향을 번갈아 진행해주세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/standingSideLegRaises'">
									스탠딩 사이드 레그레이즈 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 7-->
	<div class="portfolio-modal modal fade" id="portfolioModal7"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">굿모닝</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/goodMorning.gif" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4" style="font-size: 1rem; color: #030066; font-weight: 600">상체가 앞으로 많이 쏠리게 되면, 척추에 무리가 갈 수 있습니다. 주의해주세요</p>
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-2" style="font-weight: 500;">1. 골반 너비로 선 뒤, 양 손은 깍지 껴서 가슴 앞에 두세요</p>
								<p class="mb-3" style="font-size: 0.9rem; color: #CC3D3D;">무릎이 안쪽으로 모이지 않도록 주의해주세요</p>
								<p class="mb-3" style="font-weight: 500;">2. 가슴이 골반 위치보다 더 내려가지 않도록 주의하면서, 내려가주세요</p>
								<p class="mb-5" style="font-weight: 500;">3. 엉덩이 근육이 당겨지면, 고관절 당겨준다는 느낌으로 올라와 주세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/goodMorning'">
									굿모닝 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 8-->
	<div class="portfolio-modal modal fade" id="portfolioModal8"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">사이드 레터럴 레이즈</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/standingSideLegRaises.gif"
									alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4" style="font-size: 1rem; color: #030066; font-weight: 600">초보자의 경우 가벼운 덤벨을 사용하시는 것을 추천합니다</p>
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 어깨 너비로 선 뒤, 덤벨을 들고 자세를 잡아주세요</p>
								<p class="mb-2" style="font-weight: 500;">2. 상체를 약간 앞으로 숙여주세요</p>
								<p class="mb-3" style="font-size: 0.9rem; color: #CC3D3D;">상체를 앞으로 숙이면 좀 더 안정된 자세로 운동을 진행할 수 있습니다</p>
								<p class="mb-3" style="font-weight: 500;">3. 덤벨을 위로 올릴 때, 팔꿈치 각도를 약간 굽힌 상태로 올려주세요.
									초보자의 경우 팔을 다 펴서 진행해주세요</p>
								<p class="mb-5" style="font-weight: 500;">4. 팔을 올릴 때 높이는 어깨 높이 정도까지 올주세요. 팔을 뒤로 올리거나,
									머리 뒤로 올리지 않도록 주의하세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/sideLateralRaise'">
									사이드 레터럴 레이즈 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 9-->
	<div class="portfolio-modal modal fade" id="portfolioModal9"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">스탠딩 숄더 프레스</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/standingShoulderPress.gif"
									alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4" style="font-size: 1rem; color: #030066; font-weight: 600">덤벨을 사용해서 진행해야 효과가 좋습니다.</p>
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 골반 너비로 선 뒤, 덤벨을 들어주세요</p>
								<p class="mb-2" style="font-weight: 500;">2. 허리를 곱게 피고, 덤벨을 든 팔을 11자로 올려주세요</p>
								<p class="mb-3" style="font-size: 0.9rem; color: #CC3D3D;">팔이 앞으로 쏠리지 않게 주의하세요</p>
								<p class="mb-5"  style="font-weight: 500;">3. 팔을 내리고 올리고를 반복해주세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/standingShoulderPress'">
									스탠딩 숄더 프레스 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 10-->
	<div class="portfolio-modal modal fade" id="portfolioModal10"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">프론트 레이즈</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/frontRaise.gif" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-2" style="font-size: 1rem; color: #030066; font-weight: 600">너무 무거운 덤벨은 어깨에 무리가 갈 수 있으니</p>
								<p class="mb-4" style="font-size: 1rem; color: #030066; font-weight: 600">본인이 들 수 있는 무게보다 조금 저중량으로 준비해 주세요</p>
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 어깨 너비로 선 뒤, 덤벨을 들고 자세를 잡아주세요</p>
								<p class="mb-3" style="font-weight: 500;">2. 덤벨을 앞으로 들어올 때, 어깨를 아래로 누른 후 올려주세요</p>
								<p class="mb-5" style="font-weight: 500;">3. 덤벨을 올리고 내릴 때, 천천히 저항을 느끼면서 근육의 긴장을 주세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/frontRaise'">
									프론트 레이즈 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 11-->
	
	<!-- Portfolio Modal 12-->
	<div class="portfolio-modal modal fade" id="portfolioModal12"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">스탭 업</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/step.gif" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4" style="font-size: 1rem; color: #030066; font-weight: 600">발판이나 계단을 사용해서 운동을 시작합니다</p>
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 발판 혹은 계단 앞에 서 주세요</p>
								<p class="mb-3" style="font-weight: 500;">2. 오른 발을 올려 그 위에 단단히 밀착시주세요</p>
								<p class="mb-3" style="font-weight: 500;">3. 발판 위에 올라가면서 왼쪽 다리가 완전히 펴질때까지,왼쪽 뒤꿈치로부터 몸을
									밀어올려주세요</p>
								<p class="mb-3" style="font-weight: 500;">4. 올라간 후 오른발이 바닥에 닿도록 몸을 내리면서, 내려가주세요</p>
								<p class="mb-5" style="font-weight: 500;">5. 양쪽 방향을 번갈아 진행해주세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/stepUp'">
									스탭 업 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 13-->
	<div class="portfolio-modal modal fade" id="portfolioModal13"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">덤벨 쓰러스터</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/dumbebellTruster.gif"
									alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4" style="font-size: 1rem; color: #030066; font-weight: 600">아령이 필요한 운동입니다. 아령을 준비해주세요</p>
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 어깨 너비로 선 뒤, 덤벨을 어깨 위에 얹어 놓아주세요. 팔꿈치는 앞으로
									보게한 상태로 유지해주세요</p>
								<p class="mb-3" style="font-weight: 500;">2. 골반을 뒤로 뺴면서 스쿼트하듯이 천천히 앉았다가 일어나세요</p>
								<p class="mb-3" style="font-weight: 500;">3. 일어날 때는 양손을 위를 향해 쭉 뻗어주세요</p>
								<p class="mb-5" style="font-weight: 500;">4. 팔을 내리면서 다지 않아서 스쿼트 자세를 취해주세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/dumbbellThruster'">
									덤벨 쓰러스터 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 14-->

	<!-- Portfolio Modal 15-->
	<div class="portfolio-modal modal fade" id="portfolioModal15"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">의자 스쿼트</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/chairSquat.gif" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4" style="font-size: 1rem; color: #030066; font-weight: 600">의자를 준비해주세요. 의자 없이도 가능합니다</p>
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 의자 앞에 골반 너비로 서 주세요</p>
								<p class="mb-2" style="font-weight: 500;">2. 스쿼트 하듯이 천천히 앉았다가 일어나세요</p>
								<p class="mb-3" style="font-size: 0.9rem; color: #CC3D3D;">이때 실제로 의자에 앉지 않도록 주의하세요</p>
								<p class="mb-5" style="font-weight: 500;">3. 발 뒤꿈치에 체중을 두면서, 반복해서 진행해주세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/chairSquat'">
									의자 스쿼트 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 16-->
	

	<!-- Portfolio Modal 17-->
	<div class="portfolio-modal modal fade" id="portfolioModal17"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">백워드 런지</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/backwardLunge.gif" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 골반 너비로 서 주세요</p>
								<p class="mb-3" style="font-weight: 500;">2. 체중을 왼발에 두고, 오른발은 뒤로 뻗으면서 뒤꿈치를 들어주세요</p>
								<p class="mb-3" style="font-weight: 500;">3. 양 무릎을 90도로 굽히면서, 엉덩이를 바닥으로 내려주세요</p>
								<p class="mb-3" style="font-weight: 500;">4. 왼발의 허벅지 상부와 엉덩이 쪽의 근육에 힘을 주면서 일어나주세요</p>
								<p class="mb-5" style="font-weight: 500;">5. 양쪽을 반복해서 진행해주세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/backwardLunge'">
									백워드 런지 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 18-->
	<div class="portfolio-modal modal fade" id="portfolioModal18"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">쿼트 스쿼트</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/quaterSquat.gif" alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-4" style="font-size: 1rem; color: #030066; font-weight: 600">무릎 관절이 약하신 분들이 하기에 추천하는 스쿼트 입니다</p>
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 어깨 너비로 선 뒤, 양 손은 깍지 껴서 얼굴 앞에 두세요</p>
								<p class="mb-3" style="font-weight: 500;">2. 발은 11자에서 약간만 바깥으로 향하도록 유지해주세요</p>
								<p class="mb-3" style="font-weight: 500;">3. 무릎을 굽혀 무릎의 각도가 30~45도가 될 때까지 내려주세요</p>
								<p class="mb-5" style="font-weight: 500;">4. 발다닥으로 바닥으로 밀어준다는 느낌으로 올라오세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/quarterSquat'">
									쿼트 스쿼트 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 19-->
	<div class="portfolio-modal modal fade" id="portfolioModal19"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">덤벨 데드리프트</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/workoutImage/dumbbellDeadlift.PNG"
									alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-3" style="font-size: 1rem; color: #030066; font-weight: 600">균형을 잡기 어렵다면 하나의 덤벨을 양손으로 잡아 연습해주세요</p>
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3" style="font-weight: 500;">1. 어깨 너비만큼 선 뒤, 발 끝과 무릎이 같이 방향을 보도록 유지해주세요</p>
								<p class="mb-3" style="font-weight: 500;">2. 무릎은 완전히 펴지 말고, 살짝만 구부려 주세요</p>
								<p class="mb-2" style="font-weight: 500;">3. 덤벨을 내릴 때는 무릎 정도까지 내려주세요</p>
								<p class="mb-5" style="font-size: 0.9rem; color: #CC3D3D;">하중이 앞으로 쏠리지 않게 주의 해 주세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/dumbbellDeadlift'">
									덤벨 데드리프트 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Portfolio Modal 20-->
	<div class="portfolio-modal modal fade" id="portfolioModal20"
		tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document">
			<div class="modal-content">
				<button class="close2" type="button" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true"><i class="fas fa-times"></i></span>
				</button>
				<div class="modal-body text-center">
					<div class="container">
						<div class="row justify-content-center">
							<div class="col-lg-11">
								<!-- Portfolio Modal - Title-->
								<h2
									class="portfolio-modal-title text-secondary text-uppercase mb-0"
									id="portfolioModal1Label">스탠딩 풀다운</h2>
								<!-- Icon Divider-->
								<div class="divider-custom">
									<div class="divider-custom-line"></div>
									<div class="divider-custom-icon2">
										<i class="fas fa-dumbbell"></i>
									</div>
									<div class="divider-custom-line"></div>
								</div>
								<!-- Portfolio Modal - Image-->
								<img class="modal-img-fluid rounded mb-5"
									src="resources/images/gif/standingPulldwon.gif"
									alt="..." />
								<!-- Portfolio Modal - Text-->
								<p class="mb-3" style="font-size: 1rem; color: #030066; font-weight: 600">도구 없이 하는 풀다운입니다</p>
								<p class="mb-5" style="font-size: 1.5rem; font-weight: bold;">[
									운동순서 설명 ]</p>
								<p class="mb-3">1. 어깨 너비만큼 선 뒤, 양 팔을 90도로 올리세요</p>
								<p class="mb-3">2. 어깨를 고정한 상태에서 양 팔을 올렸다가, 등근육을 사용해서 팔을 내리세요</p>
								<p class="mb-5">3. 어깨가 같이 올라가지 않도록 주의하세요</p>
								<button class="btn-buy" data-dismiss="modal"
									onclick="location.href='${pageContext.request.contextPath}/standingPulldown'">
									스탠딩 풀다운 시작</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>