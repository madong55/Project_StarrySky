<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Starry Shop</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>

<body>

	<header>
		<jsp:include page="/WEB-INF/views/include/starry_top.jsp" />
	</header>

	<div class="container" style="margin-top: 100px">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6">
				<div class="card shadow">
					<div class="card-body">

						<form:form action="${root }shop/board/write_pro" method="post" modelAttribute="writeQnAContentBean">
							<c:choose>
									<c:when
										test="${loginUserBean.user_email == 'admin01@gmail.com' }">
									
											<p>[답변]</p>

										<div class="form-group">
											<form:label path="qna_subject">제 목</form:label>
											<form:input path="qna_subject" class="form-control"
												value="[답변] " />
											<form:errors path="qna_subject" style="color:red"></form:errors>
										</div>

										<div class="form-group">
											<form:label path="qna_contents">내 용</form:label>
											<form:textarea path="qna_contents" class="form-control"
												rows="10" style="resize: none"></form:textarea>
											<form:errors path="qna_contents" style="color:red"></form:errors>
										</div>

										<div class="form-group">
											<div class="text-right">
												<form:button class="btn btn-primary"
													style=" background-color: #666666; border-color: #666666">작성하기</form:button>
												<a href="${root }shop/main?page=${page}"
													class="btn btn-info">취소</a>
											</div>
										</div>
									</c:when>

									<c:otherwise>
										<div class="form-group">
											<form:select path="product_id">
												<c:forEach items='${productList}' var='obj'>
													<form:option value="${obj.product_id}">${obj.product_name}</form:option>
												</c:forEach>
											</form:select>
										</div>

										<div class="form-group">
											<form:label path="qna_subject">제 목</form:label>
											<form:input path="qna_subject" class="form-control"
												value="[답변] " />
											<form:errors path="qna_subject" style="color:red"></form:errors>
										</div>

										<div class="form-group">
											<form:label path="qna_contents">내 용</form:label>
											<form:textarea path="qna_contents" class="form-control"
												rows="10" style="resize: none"></form:textarea>
											<form:errors path="qna_contents" style="color:red"></form:errors>
										</div>

										<div class="form-group">
											<div class="text-right">
												<form:button class="btn btn-primary"
													style=" background-color: #666666; border-color: #666666">작성하기</form:button>
												<a href="${root }shop/main?page=${page}"
													class="btn btn-info">취소</a>
											</div>
										</div>
									</c:otherwise>
							</c:choose>

						</form:form>
					</div>
				</div>
			</div>
		</div>
		<div class="col-sm-3"></div>
	</div>

	<jsp:include page="/WEB-INF/views/include/starry_footer.jsp" />

</body>
</html>
