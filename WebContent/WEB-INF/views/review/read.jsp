<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">

							<div class="form-group">
								<label for="user_nickname">작성자</label>
								<input type="text" id="user_nickname" name="user_nickname" class="form-control" value="${readReviewBean.user_nickname }" disabled="disabled" />
							</div>

							<div class="form-group">
								<label for="review_date" >작성 날짜</label>
								<input type="text" id="review_date" name="review_date" class="form-control" value="${readReviewBean.review_date }" disabled="disabled" />
							</div>

							<div class="form-group">
								<label for="location2_name">지역명</label>
								<input type="text" id="location2_name" name="location2_name" class="form-control" value="${readReviewBean.location2_name }" disabled="disabled" />
							</div>
							
							<div class="form-group">
								<label for="review_subject">제목</label>
								<input type="text" id="review_subject" name="location2_name" class="form-control" value="${readReviewBean.review_subject }" disabled="disabled" />
							</div>

							<div class="form-group">
								<label for="review_contents">내용</label>
								<textarea id="review_contents" name="review_contents" class="form-control" rows="10" style="resize: none" 
										  disabled="disabled">${readReviewBean.review_contents }</textarea>
							</div>
								
							<div class="form-group">
								<label for="recommnd_product">추천 상품</label>
								<a href="${root }shop/product/product_details?product_category_id=${productBean.product_category_id}&product_id=${productBean.product_id}" id="recommnd_product" name="recommnd_product" class="form-control" target="_blank">${productBean.product_name }</a>
								<%-- <input type=button onclick="location.href='${root }/shop/product/product_details?product_category_id=${productBean.product_category_id}&product_id=${productBean.product_id}" id="recommnd_product" name="recommnd_product" class="form-control" value="${productBean.product_name }'" disabled="disabled" /> --%>
							</div>
	
							<c:if test="${readReviewBean.review_image !=null }">
								<div class="form-group">
									<label id="review_file">첨부 이미지</label>
									<img src="${root}reviewupload/${readReviewBean.review_image}" width="100%" style="cursor:pointer;" onclick="location.href='${root }/shop/product/product_details?product_category_id=${productBean.product_category_id}&product_id=${productBean.product_id}'"/>
								</div>
							</c:if>

							<div class="form-group">
								<div class="text-right">
									<a href="${root }review/list" class="btn btn-primary">목록 보기</a>
									<c:if test="${loginUserBean.user_email == readReviewBean.user_email }">
										<a href="${root }review/modify?review_num=${readReviewBean.review_num}&location2_id=${readReviewBean.location2_id}&location1_id=${readReviewBean.location1_id}" class="btn btn-info">수정하기</a>
										<a href="${root }review/delete?review_num=${readReviewBean.review_num}&location2_id=${readReviewBean.location2_id}&location1_id=${readReviewBean.location1_id}" class="btn btn-danger">삭제하기</a>
									</c:if>
								</div>
							</div>
							
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>

</body>
</html>
