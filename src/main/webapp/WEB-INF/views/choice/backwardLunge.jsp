<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
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
<link href="resources/css/choice.css" rel="stylesheet" />
<title>HealthU:: Backward Lunge</title>
<style>
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

.close2:not (:disabled ):not (.disabled ):hover, .close:not (:disabled ):not
	(.disabled ):focus {
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

.finish-text {
	font-size: 2.5rem;
	text-align: center;
	font-style: bold;
	color: #4374D9;
}

table {
	width: 90%;
	margin: 2% 4% 2% 4%;
	table-layout: fixed;
	border-collapse: collapse;
	table-layout: auto;
}

table th, table td {
	height: 25px;
	margin-left: 2%;
	text-align: center;
	font-weight: bold;
	font-size: 2rem;
}
</style>
</head>

<body class="bg-primary">
	<div>
		<div id="wrap" class="center">
			<div>
				<img class="center start-img"
					src="resources/images/img/stretching.png" alt="..." />
			</div>
			<div class="wrap-text" style="top: 88%; left: 3%;">
				운동을 위해
				<p
					style="color: RED; display: inline; font-weight: bold; text-align: center;">화면</p>
				을 돌리고 자세를 잡아주세요<br />
				<p class="mt-2">화면을 터치하면 운동이 시작됩니다</p>
			</div>

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
			<i id="btn-back" class="fas fa-times"
				onclick="location.href='${pageContext.request.contextPath}/choice'"></i>
			<div
				style="position: static; border: 5px solid #fff; border-radius: 15% 15%/15% 15%; margin-left: 20px; margin-right: 20px;'">
				<table>
					<tr>
						<td style="width: 20%;"><img class="choice-img-fluid"
							src="resources/images/workoutImage/backwardLunge.png" alt="..." /></td>

						<td rowspan="3" style="width: 80%;">
							<div class="circle-out center">
								<div class="circle-in center">
									<div id="counter" class="counter-text center">0</div>
								</div>
							</div>
							<div>
								<canvas id="canvas" class="video-fluid"></canvas>
							</div>
						</td>

					</tr>
					<tr>
						<td><input type="hidden" id="set-time" value="1" />
							<div id="countdown">
								<div id='tiles' class="color-full">00:00:00</div>
							</div></td>
					</tr>
					<tr>
						<td>
							<div class="rect-white py-5 px-5">
								<p id="message" class="center">Start!</p>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>

	<!-- end Modal 1-->
	<div class="portfolio-modal modal fade" id="modal" tabindex="-1"
		role="dialog" aria-labelledby="portfolioModal1Label"
		aria-hidden="true">
		<div class="modal-dialog modal-xl" role="document" style="top: 10%;">
			<div class="modal-content">
				<div class="modal-body text-center">
					<div class="container">


						<div class="finish-text mb-5">수고하셨습니다.</div>
						<div>
							<sf:form method="post"
								action="${pageContext.request.contextPath}/saveTotalTime"
								modelAttribute="user">
								<c:set var="total_backwardLunge_time"
									value='${user.day_time + 60.0 }' />
								<c:set var="total_backwardLunge_cal"
									value='${user.day_cal + 7.0 }' />
								<sf:input id="day_time" value="${total_backwardLunge_time }" path="day_time"
									style="display:none;" />
								<sf:input id="day_cal" value="${total_backwardLunge_cal }" path="day_cal"
									style="display:none;" />

								<sf:input type="text" class="form-control" id="point"
									value="${user.point }"
									style="background-color: white; width:250px; display:none;"
									path="point" />
								<sf:input type="text" class="form-control" id="id"
									value="${user.id }"
									style="background-color: white; width:250px; display:none;"
									path="id" />
								<sf:input type="text" class="form-control" id="user_id"
									value="${user.user_id }"
									style="background-color: white; width:250px; display:none;"
									path="user_id" />
								<sf:input type="text" class="form-control" id="username"
									value="${user.username }"
									style="background-color: white; width:250px; display:none;"
									path="username" />
								<sf:input type="text" class="form-control" id="password"
									value="${user.password }"
									style="background-color: white; width:250px; display:none;"
									path="password" />
								<sf:input type="text" class="form-control" id="enabled"
									value="${user.enabled }"
									style="background-color: white; width:250px; display:none;"
									path="enabled" />
								<sf:input type="text" class="form-control" id="gender"
									value="${user.gender }"
									style="background-color: white; width:250px; display:none;"
									path="gender" />
								<sf:input type="text" name="height" id="height"
									onkeypress="isNumber()" class="form-control2"
									value="${user.height }"
									style="background-color: white; width: 200px; display:none;"
									path="height" />
								<sf:input type="text" name="weight" id="weight"
									onkeypress="isNumber()" class="form-control2"
									value="${user.weight }"
									style="background-color: white; width: 200px; display:none;"
									path="weight" />
								<sf:input type="text" name="profile_character"
									id="profile_character" class="form-control2"
									value="${user.profile_character }"
									style="background-color: white; width: 200px; display:none;"
									path="profile_character" />


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
								<sf:input type="text" class="form-control" id="getRapunzel"
									value="${user.rapunzel }"
									style="background-color: white; width:250px; display:none;"
									path="rapunzel" />

								<button type="submit" class="btn-buy">메인으로</button>
							</sf:form>
						</div>
						<div id="startConfetti"></div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="resources/js/jquery.confetti.js"></script>

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
        const URL = "resources/images/gif/backwardLunge.gif";
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
        var msg = "START"; //msg 선언
        
        $('#message').css("color","white");
        $('#message').html(msg);
        
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
                if (status == "lunge") {
                    count++; //카운트 증가
                    progress = progress-32.7;
                    if(progress <= 0) {
                        progress = 327-32.7;
                    }
                    $('.progress').css('stroke-dashoffset', progress);
                    $('#counter').html(count);
                    
                    msg = "GREAT";
                    $('#message').css("color","blue");
                    $('#message').html(msg);
                }
                status = "stand";
 
            } else if (prediction[1].probability.toFixed(2) == 1.00) {
                status = "lunge";  
                
                msg = "AGAIN";
                  $('#message').css("color","white");
                $('#message').html(msg);
            } else if (prediction[2].probability.toFixed(2) == 1.00) {
                if (status == "lunge" || status == "stand") {
                    
                }
                status = "wrong"; //우리는 wrong을 사용하고 있음.
                  msg = "AGAIN";
                  $('#message').css("color","red");
                $('#message').html(msg);
                
            }else {
               msg = "AGAIN";
                  $('#message').css("color","white");
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
                  if (pose) {
                    const minPartConfidence = 0.5;
                    tmPose.drawKeypoints(pose.keypoints, minPartConfidence, ctx);
                     tmPose.drawSkeleton(pose.keypoints, minPartConfidence, ctx);
                }
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
           var target_date = new Date().getTime() + ((minutes * 8 ) * 1000); // set the countdown date
           var time_limit = ((minutes * 8 ) * 1000);
           
           setTimeout(
              function() {
                 SetCountDown();
           }, time_limit );
          
           msg = "Camera ON";
           $('#message').css("color","black");
           $('#message').html(msg);

        }

      //countdown code
       function SetCountDown() {
    	  
    	   var minutes = $( '#set-time' ).val();
           var target_date = new Date().getTime() + ((minutes * 60) * 1000); // set the countdown date
           var time_limit = ((minutes * 60) * 1000);
           
           setTimeout(
        	function() {
        		msg = "FINISH";
                $('#message').css("color","black");
                $('#message').html(msg);
                
                $(".modal").modal({show:true});
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