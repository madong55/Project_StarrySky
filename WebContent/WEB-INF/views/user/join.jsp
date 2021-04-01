<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Starry Sky Sign-Up</title>

<!-- Css Styles -->
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="../css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="../style.css" type="text/css">
<script src="js/jquery-3.6.0.js"></script>

<!-- eyes icon -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<!-- for emailAutoComplete -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>

<script>
	function checkUserIdExist(){
		//변수선언 : 사용자가 입력한 id값 가져오기
		var user_email = $("#user_email").val()
		//아이디를 입력하지 않았을 경우
		if(user_email.length == 0){
			alert('이메일을 입력해주세요')
			return
		}
		
		$.ajax({
			//요청할 주소
			url : '${root}/user/checkUserIdExist/' + user_email,
			//요청타입
			type : 'get',
			//응답결과
			dataType : 'text',
			//성공시 호출할 함수
			success : function(result){
				if(result.trim() == 'true'){
					alert("사용할 수 있는 이메일 입니다")
					$("#userIdExist").val('true')
				} else if(result.trim() == 'false'){
					alert('사용할 수 없는 이메일 입니다')
					$("#userIdExist").val('false')
				}
			}
		})
	}
	//사용자 아이디란에 입력하면 무조건 false
	function resetUserIdExist(){
		$("#userIdExist").val('false')
	}
	
	//visiblePassword
	$(document).ready(function(){
	    $('.eyes').on('click',function(){
	        $('input').toggleClass('active');
	        if($('input').hasClass('active')){
	        	$(this).find('.fa-eye').attr('class',"fas fa-eye-slash");
	            $(this).prev('input').attr('type',"text");
	        	//$(this).attr('class',"fas fa-eye-slash")
	            //.prev('input').attr('type',"text"); 
	            //.parents('.input').find('#password').attr('type',"text");
	        }else{
	        	$(this).find('.fa-eye-slash').attr('class',"fas fa-eye")
	            $(this).prev('input').attr('type','password');
	        	//$(this).attr('class',"fas fa-eye")
	            //.parents('.input').find('#text').attr('type','password');
	            
	        }
	    });
	});
	
	//emailAutoComplete
 	function autoEmail(user_email,inputed_value){
            /*
                user_email : form:input의 path값(user_email)
                inputed_value : input창에 입력되는 value값
            */
            var mailId = inputed_value.split('@'); // 메일계정의 ID만 받아와서 처리하기 위함 사용자가 @을 누르더라도 적용될 수 있도록함
            var mailList = ['gmail.com','naver.com','icloud.com','daum.net','hanmail.net','nate.com']; // 메일목록
            var availableMailList = new Array; // 자동완성 키워드 리스트
            for(var i=0; i < mailList.length; i++ ){
            	availableMailList.push( mailId[0] +'@'+ mailList[i] ); // 입력되는 텍스트와 메일목록을 조합후 리스트에 넣기 자동완성부분의 source에서 사용
            }
            
            //자동완성부분
            $("#"+user_email).autocomplete({
                source: availableMailList,
                focus: function(event, ui) {
                    return false;
                }
            });
        }	 
</script>
<body>
<jsp:include page="/WEB-INF/views/include/starry_top.jsp" />
	
	
	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">
						<form:form action="${root }/user/join_pro" method='post'
							modelAttribute="joinUserBean">
							<!-- 유효성 검사여부 보내기 -->
							<form:hidden path="userIdExist"/>
							<div class="form-group">
								<form:label path="user_name">이름</form:label>
								<form:input path="user_name" class='form-control' placeholder="이름을 입력해주세요" />
								<form:errors path="user_name" style='color:red' />
							</div>
							
							<div class="form-group">
								<form:label path="user_nickname">닉네임</form:label>
								<form:input path="user_nickname" class='form-control' placeholder="닉네임(2-12자 이내 한글,영문,숫자 사용 가능)" />
								<form:errors path="user_nickname" style='color:red' />
							</div>
							
							<div class="form-group">
								<form:label path="user_email">이메일</form:label>
								<div class="input-group">
									<!-- onkeypress="resetUserIdExist() :사용자가 입력을 하면 발생하는 이벤트로써 resetUserIdExist()함수 호출 -->
									<form:input path="user_email" class='form-control' placeholder="이메일을 입력해주세요" onkeyup="autoEmail('user_email',this.value)" onkeypress="resetUserIdExist()"/>
									<div class="input-group-append">
										<button type="button" class="btn btn-primary" onclick='checkUserIdExist()'>중복확인</button>
									</div>
								</div>
								<form:errors path="user_email" style='color:red' />
							</div>

							<div class="form-group">
								<form:label path="user_pw">비밀번호</form:label>
								<form:input type="password" path="user_pw" class='form-control' placeholder="비밀번호(8-20자 이내 영문,숫자,기호 사용 가능)"/>
								<div class="eyes" style="float:right;">
								<i class="fas fa-eye"></i>
								</div>
								<form:errors path='user_pw' style='color:red' />
							</div>

							<div class="form-group">
								<form:label path="user_pw2">비밀번호 확인</form:label>
								<form:input type="password" path="user_pw2" class='form-control' placeholder="비밀번호(8-20자 이내 영문,숫자,기호 사용 가능)"/>
								<div class="eyes" style="float:right;">
								<i class="fas fa-eye"></i>
								</div>
								<form:errors path='user_pw2' style='color:red' />
							</div>
							<div class="form-group">
								<div class="text-right">
									<form:button class='btn btn-primary'>회원가입</form:button>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>

</body>
</html>








