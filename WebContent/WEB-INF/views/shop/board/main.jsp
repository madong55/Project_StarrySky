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
	<div class="card shadow">
		<div class="card-body" >
			<h4 class="card-title">문의 게시판</h4>
			<table class="table table-hover" id='qna_board_list'>
				<thead>
					<tr>
						<th class="text-center d-none d-md-table-cell">글 번호</th>
						<th class="w-50 text-center">제 목</th>
						<!-- <th class="text-center d-none d-md-table-cell">상품명</th> -->
						<th class="text-center d-none d-md-table-cell">작성자</th>
						<th class="text-center d-none d-md-table-cell">작성 날짜</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var='obj' items="${qnaContentList }">
					<tr>
						<td class="text-center d-none d-md-table-cell">${obj.qna_num }</td>
						<td><a href='${root }shop/board/read?qna_num=${obj.qna_num}'>${obj.qna_subject }</a></td>
						<%-- <td class="text-center d-none d-md-table-cell">${obj.product_id }</td> --%>
						<td class="text-center d-none d-md-table-cell">${obj.user_nickname }</td>
						<td class="text-center d-none d-md-table-cell">${obj.qna_date }</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div class="d-none d-md-block">
				<ul class="pagination justify-content-center">
					
					<c:choose>
					<c:when test="${qnaPageBean.prevPage <= 0 }">
					<li class="page-item disabled">
						<a href="#" class="page-link">이전</a>
					</li>
					</c:when>
					
					<c:otherwise>
					<li class="page-item">
						<a href="${root }shop/board/main?page=${qnaPageBean.prevPage}" class="page-link">이전</a>
					</li>
					</c:otherwise>
					</c:choose>
					
					<c:forEach var='idx' begin="${qnaPageBean.min }" end='${qnaPageBean.max }'>
					<c:choose>
					<c:when test="${idx == qnaPageBean.currentPage }">
					<li class="page-item active">
						<a href="${root }shop/board/main?page=${idx }" class="page-link">${idx }</a>
					</li>
					</c:when>
					<c:otherwise>
					<li class="page-item">
						<a href="${root }shop/board/main?page=${idx }" class="page-link">${idx }</a>
					</li>
					</c:otherwise>
					</c:choose>
					</c:forEach>
							
					<c:choose>
					<c:when test="${qnaPageBean.max >= qnaPageBean.pageCnt }">
					<li class="page-item disabled">
						<a href="#" class="page-link">다음</a>
					</li>
					</c:when>
					<c:otherwise>
					<li class="page-item">
						<a href="${root }shop/board/main?page=${qnaPageBean.nextPage}" class="page-link">다음</a>
					</li>
					</c:otherwise>
					</c:choose>
					
				</ul>
			</div>
			
			<div class="text-right">
				<a href="${root }shop/board/write" class="btn btn-primary" style=" background-color: #666666; border-color: #666666" >글 쓰기</a>
			</div>
			
		</div>
	</div>
</div>

	  <jsp:include page="/WEB-INF/views/include/starry_footer.jsp"/>   

</body>
</html>
