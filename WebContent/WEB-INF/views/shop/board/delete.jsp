<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }/"/>

<script>
	/* alert('게시글이 삭제 되었습니다.')
	location.href = '${root}shop/board/main' */
	
	Delete = confirm("삭제 하시겠습니까?")

	if (Delete == true) {

		alert("삭제 되었습니다.")
		location.href = "${root}shop/board/main"

	} else {

		alert("취소 되었습니다.")

	}
	
</script>