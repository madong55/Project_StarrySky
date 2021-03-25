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
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

</head>
<body>

<c:import url="/WEB-INF/views/include/top_menu.jsp"></c:import>

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
					<form:label path="preference_location">선호지역</form:label><br/>
							<form:select path="preference_location">
							<form:option value="selct로불러온값" label="불러온값"></form:option>
							<form:option value="서울" label="서울"></form:option>
							<form:option value="강릉" label="강릉"></form:option>
							<form:option value="제주" label="제주"></form:option>
							</form:select>
					
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
    