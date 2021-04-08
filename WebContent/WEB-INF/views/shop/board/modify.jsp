<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Starry Shop</title>
<!-- Bootstrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
</head>
<body>

	<!-- 상단 메뉴 부분 -->
	<header>
		<jsp:include page="/WEB-INF/views/include/starry_top.jsp" />
	</header>
	
<div class="container" style="margin-top:100px">
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-6">
			<div class="card shadow">
				<div class="card-body">
					<form:form action='${root }shop/board/modify_pro' method='post' modelAttribute="modifyQnAContentBean">
							<!-- 어떤 글을 수정할지 알아야 하니 -->
							<form:hidden path="qna_num" />
							
							<div class="form-group">
								<form:label path="user_nickname">작성자</form:label>
								<form:input path="user_nickname" class='form-control' readonly="true" />
							</div>

							<div class="form-group">
								<form:select path="product_id">
								<c:forEach items='${productList}' var='obj'>
									<form:option value="${obj.product_id}" >${obj.product_name}</form:option>
								</c:forEach>
								</form:select>
							</div>

							<div class="form-group">
								<form:label path="qna_date">작성날짜</form:label>
								<form:input path="qna_date" class='form-control' readonly='true' />
							</div>
							<div class="form-group">
								<form:label path="qna_subject">제목</form:label>
								<form:input path="qna_subject" class='form-control' />
								<form:errors path="qna_subject" style='color:red' />
							</div>

							<div class="form-group">
								<form:label path="qna_contents">내용</form:label>
								<form:textarea path="qna_contents" class="form-control" rows="10" style="resize:none" />
								<form:errors path="qna_contents" style='color:red' />
							</div>

							<div class="form-group">
								<div class="text-right">
									<form:button class='btn btn-primary'>수정 완료</form:button>
									<a href="${root }shop/board/read?qna_num=${qna_num}" class="btn btn-info">취소</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		<div class="col-sm-3" style="margin-bottom: 100px;"></div>
	</div>
</div>

	<!-- 하단 부분 -->
	  <jsp:include page="/WEB-INF/views/include/starry_footer.jsp"/>   
	  
</body>
</html>
