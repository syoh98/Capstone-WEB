<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />

<link rel="icon" href="resources/images/logo/favicon.ico">

<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.3/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/styles.css" rel="stylesheet" />
<link href="resources/css/countdown.css" rel="stylesheet" />

<title>Choice:: Knee Push Up</title>
<style>
@media ( min-width : 576px) {
	#wrap {
		max-width: 450px;
	}
	.start-img {
		margin-top: -10%;
	}
	.wrap-text {
		top: 400px;
		left: 20px;
		font-size: 1.25rem;
	}
	.btn-back {
		top: 24%;
		left: 88%;
		font-size: 2rem;
	}
}

@media ( min-width : 768px) {
	#wrap {
		max-width: 540px;
	}
	.start-img {
		margin-top: -10%;
	}
	.wrap-text {
		top: 400px;
		left: 55px;
		font-size: 1.3rem;
	}
	.btn-back {
		top: 22%;
		left: 88%;
		font-size: 2.2rem;
	}
}

@media ( min-width : 992px) {
	#wrap {
		max-width: 600px;
	}
	.start-img {
		margin-top: -5%;
	}
	.wrap-text {
		top: 400px;
		left: 60px;
		font-size: 1.5rem;
	}
	.btn-back {
		top: 20%;
		left: 89%;
		font-size: 2.5rem;
	}
	.circle-out {
		width: 120px;
		height: 120px;
		top: 7%;
		left: 88%;
	}
	.circle-in {
		width: 110px;
		height: 110px;
		top: 7%;
		left: 88%;
	}
}

@media ( min-width : 1200px) {
	#wrap {
		max-width: 750px;
	}
	.start-img {
		margin-top: -5%;
	}
	.wrap-text {
		top: 400px;
		left: 87px;
		font-size: 1.7rem;
	}
	.btn-back {
		top: 12%;
		left: 89%;
		font-size: 2.75rem;
	}
	.circle-out {
		width: 120px;
		height: 120px;
		top: 7%;
		left: 88%;
	}
	.circle-in {
		width: 110px;
		height: 110px;
		top: 7%;
		left: 88%;
	}
}

#range {
	display: block;
}

.choice-border {
	position: relative;
	border: 6px solid #FFFFFF;
	margin: -13% 8% -10% 8%;
	padding-top: 5%;
}

.video-fluid {
	position: relative;
	max-width: 100%;
	height: auto;
	margin-top: -10%;
	margin-bottom: 3%;
	margin-right: 2%;
	z-index: 1;
}

.workout-count-time {
	font-size: 1.5rem;
	line-height: 1.5rem;
}

.rect-white {
	max-width: 100%;
	height: auto;
	padding: 10%;
	border-radius: 50% 20%/10% 40%;
	background-color: #FFFDFF;
	text-align: center;
	font-size: 2rem;
	font-weight: bold;
}

.btn-back {
	background-color: transparent;
	color: #6799FF;
	opacity: 0.5;
	z-index: 2;
}

#message {
	font-size: 2rem;
}

#wrap:hover {
	background: #D9E5FF;
	color: #9DCEFF;
	opacity: 0.8;
}

#wrap {
	position: fixed;
	width: 750px;
	height: 500px;
	margin: 0;
	padding: 0;
	background: #FFFFFF;
	color: #4374D9;
	border-radius: 10% 10%/10% 10%;
	top: 50%;
	left: 50%;
	z-index: 3;
	text-align: center;
	font-style: bold;
}

.start-img:hover {
	opacity: 0.8;
}

.start-img {
	position: fixed;
	width: 250px;
	height: auto;
	padding: 20px 10px 5px 10px;
	border: 4px dashed #B2CCFF;
}

.wrap-text {
	position: fixed;
}

.circle-out {
	width: 100px;
	height: 100px;
	border-radius: 50%;
	background: #FFFFFF;
	top: -5%;
	left: 90%;
	z-index: 4;
}

.circle-in {
	width: 90px;
	height: 90px;
	border-radius: 50%;
	background: #FFFFFF;
	text-align: center;
	line-height: 200px;
	border: 5px solid #00d3d3;
	top: 50%;
	left: 50%;
	z-index: 4;
}

.counter-text {
	text-align: center;
	color: #8C8C8C;
	font-size: 50px;
	font-weight: bold;
	top: 50%;
	left: 50%;
	z-index: 4;
}
</style>
</head>
<body class="bg-primary">
	<div class="masthead c bg-primary text-dark text-center bg-primary">
		<div id="wrap" class="center">
			<img class="center start-img"
				src="resources/images/img/stretching.png" alt="..." />
			<p class="wrap-text">운동을 위해 카메라를 켜고 자세를 잡아주세요</p>

		</div>

		<script type="text/javascript">
			document.getElementById('wrap').onclick = function() {
				view();
				//document.getElementById("wrap").style.visibility = "hidden";
				//document.getElementById("main").style.visibility = true;
				document.getElementById("main").hidden = false;
	            document.getElementById("wrap").hidden = true;
				
			}
		</script>

		<div id="main" hidden>

			<i class="center btn-back fas fa-times-circle"
				onclick="location.href='${pageContext.request.contextPath}/choice'"></i>
				
			<div class="choice-border">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-4 md-4">
							<table>
								<tr>
									<td><img class="img-fluid"
										src="resources/images/workoutImage/kneePushUp.png" alt="..." />
									</td>
								</tr>
								<tr>
									<td>
										<div style="margin-top: 10%;">
											<input type="hidden" id="set-time" value="1" />
											<div id="countdown">
												<div id='tiles' class="color-full"></div>
											</div>
										</div>
									</td>
								</tr>

								<tr>
									<td>
										<div class="rect-white mt-5 mb-5 py-5 px-5">
											<div id="message"></div>
										</div>
									</td>
								</tr>
							</table>
						</div>

						<div class="col-md-8 col-lg-8 mt-4">
							<div class="circle-out center">
								<div class="circle-in center">
									<div id="counter" class="counter-text center">0</div>
								</div>
							</div>
							<div>
								<canvas id="canvas" class="video-fluid"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@teachablemachine/pose@0.8/dist/teachablemachine-pose.min.js"></script>

	<script type="text/javascript">
        // More API functions here:
        // https://github.com/googlecreativelab/teachablemachine-community/tree/master/libraries/pose

        // Teachable Machine 내보내기 패널에서 제공하는 모델에 대한 링크
        const URL = "resources/model/";
        let model, webcam, ctx, labelContainer, maxPredictions;

        async function init() { //model을 불러오고, 카메라를 설정해 준다음 loop를 돈다. 
            const modelURL = URL + "model.json"; //teachable machine에서 학습시킨 json 파일
            const metadataURL = URL + "metadata.json"; //teachable machine에서 학습시킨 json 파일

            // 모델 및 메타 데이터로드
            // 파일 선택기의 파일을 지원하려면 API의 tmImage.loadFromFiles()을 참조
            // 참고 : 포즈 라이브러리는 창에 tmPose 개체를 추가합니다 (window.tmPose)
            model = await tmPose.load(modelURL, metadataURL);
            maxPredictions = model.getTotalClasses();

            // 웹캠 설정을위한 편의 기능(const -> 상수)
           /*  const webWidth = 800; // 웹캠 사이즈 가로 
            const webHeight = 800; //웹캠 사이즈 세로 */
            const size = 800;
            const flip = true; // 웹캠을 뒤집을 지 여부
            webcam = new tmPose.Webcam(size, size, flip); // width, height, flip
            await webcam.setup(); // 웹캠에 대한 액세스 요청
            await webcam.play(); //웹캠 재생
            window.requestAnimationFrame(loop);

            // DOM에 요소 추가 / 가져 오기
            const canvas = document.getElementById("canvas");
            canvas.width = size; 
            canvas.height = size;
            ctx = canvas.getContext("2d");
            labelContainer = document.getElementById("label-container");
            
            for (let i = 0; i < maxPredictions; i++) { // and class labels
                labelContainer.appendChild(document.createElement("div"));
            }
        }

        async function loop(timestamp) { //계속 자기 자신을 호출하면서 반복된
            webcam.update(); // 웹캠 프레임 업데이트
            await predict(); 
            window.requestAnimationFrame(loop);
        }
        
        var progress = 327;
        var status = "stand"; //서 있는 상태
        var count = 0; //운동 카운트
        var msg = "start!"; //msg 선언
        async function predict() {
            //1번 model을 불러오고
            //2번 model의 결과를 뽑아서 prediction classname, classname하고
            //3번 prediction probablity 가능성을 문장으로 만들어서 html에 넣어주는 역할을 함

            // 예측 # 1 : Posenet을 통해 입력 실행
            // EstimatePose는 이미지, 비디오 또는 캔버스 HTML 요소를 가져올 수 있습니다.
            const { pose, posenetOutput } = await model.estimatePose(webcam.canvas);
            // 예측 2 : 학습 가능한 기계 분류 모델을 통해 입력 실행
            const prediction = await model.predict(posenetOutput);
            //stand:0  squat:1  bent:2
            if (prediction[0].probability.toFixed(2) > 0.90) {
                if (status == "squat") {
                    count++; //카운트 증가
                    progress = progress-32.7;
                    if(progress <= 0) {
                        progress = 327-32.7;
                    }
                    $('.progress').css('stroke-dashoffset', progress);
                    $('#counter').html(count);
                }
                status = "stand";
                
            } else if (prediction[1].probability.toFixed(2) == 1.00) {
                status = "squat";
                
                msg = "GOOD";
                $('#message').css("color","blue");
                $('#message').html(msg);
                
            } else if (prediction[2].probability.toFixed(2) == 1.00) {
                if (status == "squat" || status == "stand") {
                    
                }
                status = "bent"; //우리는 wrong을 사용하고 있음.
               	msg = "BAD";
               	$('#message').css("color","red");
                $('#message').html(msg);
                
            }
            //squat, 0~1까지의 확률
            /* for (let i = 0; i < maxPredictions; i++) { //3번
                const classPrediction =
                    prediction[i].className + ": " + prediction[i].probability.toFixed(2);
                labelContainer.childNodes[i].innerHTML = classPrediction;
            } */
            // 포즈 그리기
            drawPose(pose);
        }

        function drawPose(pose) {
            if (webcam.canvas) {
                ctx.drawImage(webcam.canvas, 0, 0);
                // 키포인트와 스켈레톤 그리기, 지우면 키 포인트 사라짐
               /*  if (pose) {
                    const minPartConfidence = 0.5;
                    tmPose.drawKeypoints(pose.keypoints, minPartConfidence, ctx);
                      tmPose.drawSkeleton(pose.keypoints, minPartConfidence, ctx);
                } */
            }
        }
        
        var ring = document.getElementsByTagName('path')[0];
        var range = document.getElementsByTagName('input')[0];
        var text = document.getElementsByTagName('text')[0];
        var toRadians = Math.PI / 180;
        var r = 100;

        function draw() {

          var degrees = range.value * 3.5999;
          var rad = degrees * toRadians;
          var x = (Math.sin(rad) * r).toFixed(2);
          var y = -(Math.cos(rad) * r).toFixed(2);
          var lenghty = Number(degrees > 180);
          var descriptions = ['M', 0, 0, 'v', -r, 'A', r, r, 1, lenghty, 1, x, y, 'z'];
          ring.setAttribute('d', descriptions.join(' '));
          text.textContent = range.value;
        }

        ring.setAttribute('transform', 'translate(' + r + ', ' + r + ')');
        range.addEventListener('input', draw);
        draw();
        

        function view(){
           init();
           
           var minutes = $( '#set-time' ).val();
		   var target_date = new Date().getTime() + ((minutes * 15 ) * 1000); // set the countdown date
		   var time_limit = ((minutes * 15 ) * 1000);
           
		   setTimeout(
		 		function() {
		 			SetCountDown();
			}, time_limit );
		   
        }

		//countdown code
	 	function SetCountDown() {
	 			
				//init();
	 			/* async function loop(timestamp) { //계속 자기 자신을 호출하면서 반복된
	 	            webcam.update(); // 웹캠 프레임 업데이트
	 	            await predict(); 
	 	            window.requestAnimationFrame(loop);
	 	        } */
		
				var minutes = $( '#set-time' ).val();
				var target_date = new Date().getTime() + ((minutes * 60 ) * 1000); // set the countdown date
				var time_limit = ((minutes * 60 ) * 1000);
				//set actual timer
				setTimeout(
		 			function() {
		 				location.href = "choiceEnd"; //"choiceEnd?count="+count;
	 				  //alert( 'done' );
	 			     //$(location).attr('href','choiceEnd.jsp');

			  	}, time_limit );

				var days, hours, minutes, seconds; // variables for time units
				var countdown = document.getElementById("tiles"); // get tag element

				getCountdown();

				setInterval(function () { getCountdown(); }, 1000);

				function getCountdown(){
					// find the amount of "seconds" between now and target
					var current_date = new Date().getTime();
					var seconds_left = (target_date - current_date) / 1000;
	  
					if ( seconds_left >= 0 ) {
	 	 				console.log(time_limit);
	  					 if ( (seconds_left * 1000 ) < ( time_limit / 2 ) )  {
	     					$( '#tiles' ).removeClass('color-full');
	     					$( '#tiles' ).addClass('color-half');
	   					} 
	  	  				if ( (seconds_left * 1000 ) < ( time_limit / 4 ) )  {
	  		  				$( '#tiles' ).removeClass('color-half');
	  		  				$( '#tiles' ).addClass('color-empty');
	 	 			 	}
	  
						days = pad( parseInt(seconds_left / 86400) );
						seconds_left = seconds_left % 86400;
			 
						hours = pad( parseInt(seconds_left / 3600) );
						seconds_left = seconds_left % 3600;
			 	 
						minutes = pad( parseInt(seconds_left / 60) );
						seconds = pad( parseInt( seconds_left % 60 ) );
			
						// format countdown string + set tag value
						countdown.innerHTML = "<span>" + hours + ":</span><span>" + minutes + ":</span><span>" + seconds + "</span>"; 

					}
				}

				function pad(n) {
					return (n < 10 ? '0' : '') + n;
				}
		} //카메라 켜지는 시간을 고려해 10초 뒤에 타이머가 작동하도록

    </script>
</body>
</html>
