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
<title>Starry Sky Sign-In</title>

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
				<c:if test="${fail==true }">
					<div class="alert alert-danger">
						<h3>로그인 실패</h3>
						<p>이메일과 비밀번호를 확인해주세요</p>
					</div>
					</c:if>
					<form:form action="${root }/user/login_pro" method="post" modelAttribute="tempLoginUserBean">
						<div class="form-group">
							<form:label path="user_email">이메일</form:label>
							<form:input path="user_email" class="form-control"/>
							<form:errors path="user_email" style='color:red'/>
						</div>
						<div class="form-group">
							<form:label path="user_pw">비밀번호</form:label>
							<form:input type="password" path="user_pw" class="form-control"/>
							<form:errors path="user_pw" style='color:red'/>
						</div>
						<div class="form-group text-right">
							<form:button class="btn btn-primary">로그인</form:button>
							<a href="${root }/user/join" class="btn btn-danger">회원가입</a>
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








