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
<title></title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

<jsp:include page="/WEB-INF/views/include/starry_top.jsp" /> 

<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
						<form:form action='${root }/shop/product/insert_product_pro' method='post'
							modelAttribute="insertProductBean" enctype="multipart/form-data">
							
							<div class="form-group">
								<form:label path="product_name">product_name</form:label>
								<form:input path="product_name" class='form-control' />
								
							</div>
							<div class="form-group">
								<form:label path="product_category_id">product_category_id</form:label>
								<form:input path="product_category_id" class='form-control' placeholder="tent slpbag backpack heater light" />
								
							</div>
							<div class="form-group">
								<form:label path="product_id">product_id</form:label>
								<form:input path="product_id" class='form-control' placeholder="영문,숫자 중복안되게입력"/>
								
							</div>
							<div class="form-group">
								<form:label path="product_price">product_price</form:label>
								<form:input path="product_price" class='form-control' />
							</div>
							<div class="form-group">
								<form:label path="product_sale_price">product_sale_price</form:label>
								<form:input path="product_sale_price" class='form-control' placeholder="null값 가능" />
							</div>
							<div class="form-group">
								<form:label path="product_quantity">product_quantity</form:label>
								<form:input path="product_quantity" class='form-control' placeholder="숫자" />
							</div>
							<div class="form-group">
								<form:label path="product_details">product_details</form:label>
								<form:textarea path="product_details" class="form-control" rows="10" style="resize:none" />
								
							</div>
							<div class="form-group">
								<form:label path="file_name">product_thumbnail</form:label>
								<form:input type='file' path='file_name' class="form-control" accept="image/*" />
							</div>
							<div class="form-group">
								<div class="text-right">
									<form:button class='btn btn-primary'>insert</form:button>
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
