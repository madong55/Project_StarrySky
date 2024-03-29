<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="root" value="${pageContext.request.contextPath }"></c:set>
<c:set var="root2" value="${param.pay }"></c:set>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<script language="JavaScript">
var sell_price;
var amount;

function init () {
	sell_price = document.form.sell_price.value;
	pay_amount = document.form.pay_amount.value;
	document.form.pay_sum.value = sell_price;
	change();
}

function add () {
	hm = document.form.pay_amount;
	pay_sum = document.form.pay_sum;
	hm.value ++ ;

	pay_sum.value = parseInt(hm.value) * sell_price;
}

function del () {
	hm = document.form.pay_amount;
	pay_sum = document.form.pay_sum;
		if (hm.value > 1) {
			hm.value -- ;
			pay_sum.value = parseInt(hm.value) * sell_price;
		}
}

function change () {
	hm = document.form.pay_amount;
	pay_sum = document.form.pay_sum;

		if (hm.value < 0) {
			hm.value = 0;
		}
	pay_sum.value = parseInt(hm.value) * sell_price;
} 

document.addEventListener("DOMContentLoaded", function() {

    // 브라우저의 현재 날짜를 받아온다.

    var toDay = new Date();
    document.getElementById("toYmd").value = toDay.yyyymmdd();
  });

  // 현재 날짜값을 yyyy-mm-dd 형식으로 변환해주는 함수
  Date.prototype.yyyymmdd = function() {
      var yyyy = this.getFullYear().toString();
      var mm = (this.getMonth() + 1).toString();
      var dd = this.getDate().toString();
      return  yyyy + "-" + (mm[1] ? mm : "0" + mm[0]) + "-" + (dd[1] ? dd : "0" + dd[0]);
  }


</script>



<body onload="init();">
<jsp:include page="/WEB-INF/views/include/starry_top.jsp" /> 
<div class="container">
    <div class="row">
    <div class="col-sm-12 text-center" >
    <div class="col-sm-3"></div>
     
    <div class="col-sm-6" style="margin-top: 5%; ">
    <!-- <h2>무통장입금</h2><br> -->

 <form action="input_pro" name="form" method="post">
 <table class="table table-boardered" >
            <tr>
                <th style="width:15%">이메일</th>
                 <td><input type="text" class="form-control" name='pay_id' value="${id}" style="text-align:center;" readonly="readonly"/></td>        
            </tr>
            
            <tr>
                <th>결제일</th>
                <td><input type="text" class="form-control" id="toYmd" name='pay_date' style="text-align:center;" readonly="readonly"/></td>        
            </tr>
            <tr>
                <th>결제방식</th>
                <td><input type="text" class="form-control" value="무통장입금" name='pay_method' style="text-align:center;" readonly="readonly"/></td>        
            </tr>
            <tr>
                <th>계좌안내</th>
                <td>신한 158648-26-3358, 예금주 StarrySky</td>        
            </tr>
             <tr>
                <th>이미지</th>
                <td>
                <img src="${root }/shop/product/shop/img/product/details/${product_category_id }/product_${product_id }_1.png" alt="">
                </td>        
            </tr>
             <tr>
                <th>상품명</th>
                <td><input type="text" class="form-control" name='product_name' value="${product_name }"/></td>        
            </tr>
            <tr>
                <th>가격</th>
                <td><input type="text" class="form-control" name='product_price' readonly="readonly" value="${product_price}"/></td>        
            </tr>
            <tr>
                <th>수량</th>
                <td><input type="hidden" name='sell_price' value="${product_price }"/>
                <input type="button" value=" - " onclick="del();">
                	<input type="text" name='pay_amount' value="${product_temp_quantity }" size="3" onchange="change();"/>
					<input type="button" value=" + " onclick="add();"></td>        
            </tr>
            <tr>
                <th>총 금액</th>
                <td><input type="text" class="form-control" size="11" name="pay_sum" readonly="readonly"/></td>        
            </tr>
            <tr>
                <td colspan="2">
                <input type="submit" class="btn btn-primary" value="확인">
                <button type="button" class="btn btn-danger" onclick='history.back(-1);'>취소</button>
                </td>
            </tr>
            </table>

  	<input type="hidden" name='pay_company' value="null"/>
  	<input type="hidden" name='pay_number' value="null"/>
	
 </form>
 </div>  
 </div>
 </div>
 </div>
 

 
</body>
</html>