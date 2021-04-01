<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Edit Profile</title>
<!-- Css Styles -->
<link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="../css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="../css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="../style.css" type="text/css">
<script src="js/jquery-3.6.0.js"></script>
</head>
<body>

<jsp:include page="/WEB-INF/views/include/starry_top.jsp" />

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form:form action="${root }/user/modify_pro" method="post" modelAttribute="modifyUserBean">
					<div class="form-group">
					<form:label path="user_name">이름</form:label>
					<form:input path="user_name" class="form-control" readonly="true"/>
					</div>
					<div class="form-group">
					<form:label path="user_email">이메일</form:label>
					<form:input path="user_email" class="form-control" readonly="true"/>
					</div>
					<div class="form-group">
					<form:label path="user_nickname">닉네임</form:label>
					<form:input path="user_nickname" class="form-control"/>
					<form:errors path="user_nickname" style="color:red"></form:errors>
					</div>
					<div class="form-group">
					<form:label path="user_phone_number">전화번호</form:label>
					<form:input path="user_phone_number" class="form-control"/>
					<form:errors path="user_phone_number" style="color:red"></form:errors>
					</div>
					<div class="form-group">
					<form:label path="user_pw">비밀번호</form:label>
					<form:password path="user_pw" class="form-control"/>
					<form:errors path="user_pw" style="color:red"></form:errors>
					</div>
					<div class="form-group">
					<form:label path="user_pw2">비밀번호 확인</form:label>
					<form:password path="user_pw2" class="form-control"/>
					<form:errors path="user_pw2" style="color:red"></form:errors>
					</div>
					<div class="form-group">
						<div class="text-right">
							<button type="submit" class="btn btn-primary">정보수정</button>
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
    