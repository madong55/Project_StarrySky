<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <c:set var="root" value="${pageContext.request.contextPath }/" />
 <script type="text/javascript">
 

 
function LeyerPopupView(sDivName, nTop, nLeft, nHeight, nWidth) 
{
    /*
    레이어 팝업을 띄웁니다.
    팝업의 크기는 내용물의 크기에 영향을 받습니다.
    그렇기 때문에 내용물에 따라 정확하지 않은 크기가 적용될수 있습니다.
        
    매개변수 
    sDivName : 레이어 팝업으로 쓸 div id
    nTop : 팝업의 세로 위치
    nLeft : 팝업의 가로 위치
    nHeight : 팝업의 세로 크기
    nWidth : 팝업의 가로 크기
    */

    //사용할 레이어을 불러온다.
    var oPopup = document.getElementById(sDivName);
    //어을 표시하고
    oPopup.style.display = "block";

    //위치 및 크기 설정
    oPopup.style.top = nTop + "px";
    oPopup.style.left = nLeft + "px";
    oPopup.style.height = nHeight + "px";
    oPopup.style.width = nWidth + "px";
}

function LeyerPopupClose(sDivName) 
{
    /*
    레이어 팝업을 닫습니다.
        
    매개변수 
    sDivName : 레이어 팝업으로 쓸 div id
    */
    var oPopup = document.getElementById(sDivName);
    oPopup.style.display = "none";
}

/* 높이자동조절*/
function resizeIframe(obj) {
    obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
  }
 </script>


<section class="services-section spad">

  <c:forEach var='tempMainReviewBean' items="${tempMainReviewBean }">
  <div id="layerPopup_${tempMainReviewBean.review_num }"  style="border: none;display: none;position: absolute;top: 120%;left: 50%;transform: translate(-50%,0);z-index: 100;overflow: hidden;" ><!-- style="display:none; z-index:99;position:absolute;" --> 
                          
                          <iframe src="review/read?review_num=${tempMainReviewBean.review_num }&location2_id=${tempMainReviewBean.location2_id }&location1_id=${tempMainReviewBean.location1_id }" style="width: 800px;min-height: 600px; border:0;" onload="resizeIframe(this)" ></iframe>
                          
                          <a href="#" class="icon_close" onclick="LeyerPopupClose('layerPopup_${tempMainReviewBean.review_num }'); return false;"  
                          style="position: absolute; top: 0; right: 0%; font-size: xx-large; background-color: #888;"></a>
                      
   </div>
   </c:forEach>
        <div class="container">
            <div class="row">
             
<!--       <form name="form1" style="width:100%; height:100%;"> -->
             <!-- <div class="col-lg-4 col-md-6 col-sm-6">  
                   
                    <div class="services-item" >     
                     <a href="#" onclick="LeyerPopupView('layerPopup'); return false;" > sDivName, nTop, nLeft, nHeight, nWidth            
                        <img src="img/services/service-1.jpg" >
                         
                            <h3>ㄴㄴㄴ</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                            magna aliqua. Quis ipsum suspendisse ultrices gravida.</p>
                    </a>
                
                 </div> 
               
                </div> -->
                
                <c:forEach var='tempMainReviewBean' items="${tempMainReviewBean }">
                <div class="col-lg-4 col-md-6 col-sm-6">  
                    <div class="services-item" style="position:relative">     
                     <a href="#" onclick="LeyerPopupView('layerPopup_${tempMainReviewBean.review_num }'); return false;"> <!-- sDivName, nTop, nLeft, nHeight, nWidth -->            
                        <img src="${root}reviewupload/${tempMainReviewBean.review_image}" >
                         
                         <h3>${tempMainReviewBean.review_subject }</h3>
                       	 <p>${tempMainReviewBean.review_contents }</p>
                    </a>
                          <div id="layerPopup_${tempMainReviewBean.review_num }" style="display:none; position:absolute; z-index:99; overflow:hidden " ><!-- style="display:none; z-index:99;position:absolute;" --> 
                          
                          
                          <a href="#" onclick="LeyerPopupClose('layerPopup_${tempMainReviewBean.review_num }'); return false;" >close</a>
                      
                    </div>
                 </div>
                </div>
                </c:forEach>
                 
                
                 <!-- <div class="col-lg-4 col-md-6 col-sm-6">  
                   
                    <div class="services-item" >     
                     <a href="#" onclick="LeyerPopupView('layerPopup');  return false;"> sDivName, nTop, nLeft, nHeight, nWidth            
                        <img src="img/services/service-1.jpg" >
                         
                            <h3>ㄴㄴㄴ</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                            magna aliqua. Quis ipsum suspendisse ultrices gravida.</p>
                    </a>
                          <div id="layerPopup" style="display:none; position:absolute; z-index:99; overflow:hidden " >style="display:none; z-index:99;position:absolute;" 
                          
                          <iframe src="review/review1"></iframe>
                          <a href="#" onclick="LeyerPopupClose('layerPopup'); return false;" >close</a>
                      
                    </div>
                 </div>
               
                </div>
                 -->
          
                

            </div>
        </div>
    </section>