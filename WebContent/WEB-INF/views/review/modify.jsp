<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Starry Sky</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

	<header>
		<jsp:include page="/WEB-INF/views/include/starry_top.jsp" />
	</header>
	
<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form:form action='${root }review/modify_pro' method='post' modelAttribute="modifyReviewBean" enctype="multipart/form-data">
							<!-- 어떤 글을 수정할지 알아야 하니 -->
							<form:hidden path="review_num" />

							<div class="form-group">
								<form:label path="user_nickname">작성자</form:label>
								<form:input path="user_nickname" class='form-control' readonly="true" />
							</div>

							<div class="form-group">
								<form:select path="location2_name"> 지 역 
								<c:forEach items='${location2List}' var='obj'>
										<form:option value="${obj.location2_id}">${obj.location2_name}</form:option>
									</c:forEach>
								</form:select>
							</div>

							<div class="form-group">
								<form:label path="review_date">작성 날짜</form:label>
								<form:input path="review_date" class='form-control' readonly='true' />
							</div>

							<div class="form-group">
								<form:label path="review_subject">제 목</form:label>
								<form:input path="review_subject" class='form-control' />
								<form:errors path="review_subject" style='color:red' />
							</div>

							<div class="form-group">
								<form:label path="review_contents">내 용</form:label>
								<form:textarea path="review_contents" class="form-control" rows="10" style="resize:none" />
								<form:errors path="review_contents" style='color:red' />
							</div>					
							
							<div class="form-group">
								<form:label path="recommnd_product">추천 상품</form:label>
								<form:input path="recommnd_product" class="form-control"></form:input>
							</div>

							 <!-- 이미지 -->
							<div class="form-group">
								<form:label path="review_file">첨부 이미지</form:label>
								<c:if test="${modifyReviewBean.review_image != null }">
									<img src="${root }review_upload/${modifyReviewBean.review_image}" width="100%" />
									<!-- 수정시 첨부파일 이미지 파일 변경없이 유지하도록 form태그에 담아둠-->
									<form:hidden path="review_image" />
								</c:if>
								<form:input path="review_file" type='file' class="form-control" accept="review/image/*" />
							</div>
							
							<div>
								<br /> 별점 <br />
								<div class="startRadio">
									<label class="startRadio__box"> 
									<input type="radio" name="star" id=""> 
									<span class="startRadio__img"><span class="blind">별 1개</span></span>
									</label> 
									
									<label class="startRadio__box"> 
									<input type="radio" name="star" id=""> 
									<span class="startRadio__img">
									<span class="blind">별 1.5개</span></span>
									</label> 
									
									<label class="startRadio__box"> 
									<input type="radio" name="star" id=""> 
									<span class="startRadio__img">
									<span class="blind">별 2개</span></span>
									</label> 
									
									<label class="startRadio__box"> 
									<input type="radio" name="star" id=""> 
									<span class="startRadio__img">
									<span class="blind">별 2.5개</span></span>
									</label> 
									
									
									<label class="startRadio__box"> 
									<input type="radio" name="star" id=""> 
									<span class="startRadio__img">
									<span class="blind">별 3개</span></span>
									</label> 
									
									<label class="startRadio__box"> 
									<input type="radio" name="star" id=""> 
									<span class="startRadio__img"><span class="blind">별 3.5개</span></span>
									</label> 
									
									<label class="startRadio__box"> 
									<input type="radio" name="star" id=""> 
									<span class="startRadio__img">
									<span class="blind">별 4개</span></span>
									</label> 
									
									<label class="startRadio__box"> 
									<input type="radio" name="star" id=""> 
									<span class="startRadio__img">
									<span class="blind">별 4.5개</span></span>
									</label> 
									
									<label class="startRadio__box"> 
									<input type="radio" name="star" id=""> 
									<span class="startRadio__img">
									<span class="blind">별 5개</span></span>
									</label> 
									
									<label class="startRadio__box"> <input type="radio" name="star" id=""> 
									<span class="startRadio__img">
									<span class="blind">별 5.5개</span></span>
									</label>
								</div>
							</div>
							
							<div class="form-group">
								<div class="text-right">
									<form:button class='btn btn-primary'>수정 완료</form:button>
									<a href="${root }review/read?review_num=${modifyReviewBean.review_num}&location2_id=${modifyReviewBean.location2_id}&location1_id=${modifyReviewBean.location1_id}" class="btn btn-info">취소</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		<div class="col-sm-3" style="margin-bottom: 100px;"></div>
	</div>
</div>

	  <jsp:include page="/WEB-INF/views/include/starry_footer.jsp"/>   
	  
</body>

<style>
.blind {
	position: absolute;
	overflow: hidden;
	margin: -1px;
	padding: 0;
	width: 1px;
	height: 1px;
	border: none;
	clip: rect(0, 0, 0, 0);
}

.startRadio {
	display: inline-block;
	overflow: hidden;
	height: 40px;
}

.startRadio:after {
	content: "";
	display: block;
	position: relative;
	z-index: 10;
	height: 40px;
	background:
		url("data:image/png;base64,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")
		repeat-x 0 0;
	background-size: contain;
	pointer-events: none;
}

.startRadio__box {
	position: relative;
	z-index: 1;
	float: left;
	width: 20px;
	height: 40px;
	cursor: pointer;
}

.startRadio__box input {
	opacity: 0 !important;
	height: 0 !important;
	width: 0 !important;
	position: absolute !important;
}

.startRadio__box input:checked+.startRadio__img {
	background-color: #0084ff;
}

.startRadio__img {
	display: block;
	position: absolute;
	right: 0;
	width: 500px;
	height: 40px;
	pointer-events: none;
}
</style>

</html>
