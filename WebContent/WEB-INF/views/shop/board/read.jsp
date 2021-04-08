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

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
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
						<div class="form-group">
							<label for="user_nickname">작성자</label> 
							<input type="text" id="user_nickname" name="user_nickname" class="form-control" value="${readQaAContentBean.user_nickname }" disabled="disabled" />
						</div>

						<div class="form-group">
							<label for="qna_date">작성 날짜</label> 
							<input type="text" id="qna_date" name="qna_date" class="form-control" value="${readQaAContentBean.qna_date }" disabled="disabled" />
						</div>

						<%-- <div class="form-group">
						<label for="product_id">상품명</label>
						<input type="text" id="product_id" name="product_id" class="form-control" value="${readQaAContentBean.product_id }" disabled="disabled"/>
						</div> --%>

						<div class="form-group">
							<label for="qna_subject">제목</label> 
							<input type="text" id="qna_subject" name="qna_subject" class="form-control" value="${readQaAContentBean.qna_subject }" disabled="disabled" />
						</div>

						<div class="form-group">
							<label for="qna_contents">내용</label>
							<textarea id="qna_contents" name="qna_contents" class="form-control" rows="10" style="resize: none" disabled="disabled">${readQaAContentBean.qna_contents }</textarea>
						</div>

						<div class="form-group">
							<div class="text-right">
								<c:choose>
									<c:when test="${loginUserBean.user_email == 'admin01@gmail.com' }"><!-- 계정을 안나눴으니 일단 하드코딩 해놓고 나중에 고치기 -->
										<a href="${root }shop/board/main" class="btn btn-primary">목록 보기</a>
										<a href="${root }shop/board/wirte?qna_num=${qna_num}" class="btn btn-info">답변하기</a><!-- 관리자는 관리자 본인 글에 답글이 안뜨게 -->
										<a href="${root }shop/board/delete?qna_num=${qna_num}" class="btn btn-danger">삭제하기</a>
									</c:when>

									<c:otherwise>
										<a href="${root }shop/board/main" class="btn btn-primary">목록 보기</a>
										<c:if test="${loginUserBean.user_nickname == readQaAContentBean.user_nickname }">
											<a href="${root }shop/board/modify?qna_num=${qna_num}" class="btn btn-info">수정하기</a>
											<a href="${root }shop/board/delete?qna_num=${qna_num}" class="btn btn-danger">삭제하기</a> 
										</c:if>
									
									</c:otherwise>
								</c:choose>
								
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-sm-3"></div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/include/starry_footer.jsp" />

</body>
</html>
