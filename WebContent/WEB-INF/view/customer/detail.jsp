<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<jsp:include page="../home/top.jsp"/>
<link rel="stylesheet" href="${css}/customer/detail.css" />
<div class="grid-item" id="navi_bar">
	<ul class="ul_navi_bar">
	    <li ><a href="home.do">홈으로</a></li>
	    <li ><a href="#">카테고리</a></li>
	    <li ><a href="#">사원</a></li>
	    <li ><a href="#">주문</a></li>
	    <li ><a href="#">상품</a></li>
	    <li ><a href="#">선박</a></li>
	    <li ><a href="#">공급업체</a></li>
	</ul>
</div>
<div class="grid-item" id= "side_bar">
	<div class= "myphoto">
	<div class= "myphotoin"><img src="${img }/default.png"  style="height: 200px; width: 100%; "></div>
	</div>
</div>
    <div class="grid-item" id= "content">
	<div class ="mypage">
	<div class ="mypage1">
	<br />
	아이디:<br />
	이름: <br />
	생년월일:<br />
	성별:<br />
	전화번호:<br />
	주소:<br />
	상세주소:<br />
	우편번호:<br />
	</div>
	<div class ="mypage2">
	검색한 사람의 정보<br />
	${cus.customerID } <br />
	${cus.customerName} <br />
	${cus.ssn} <br />	
	성별 : 남 <br />
	${cus.phone}<br />	
	${cus.postalcode} <br />
	${cus.city}<br />
	${cus.address}
	</div>
	</div>
	<div class="grid-item">
	<span id="update_btn" class="label label-warning">수정</span>
</div>
</div>      

<jsp:include page="../home/bottom.jsp"/> 
<script>
$('#update_btn').click(function(){
	alert('수정버튼 클릭');
	location.assign('${ctx}/customer.do?cmd=cus_retrieve&page=update&customerID=${cus.customerID}');
});
</script>        
          





<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../home/top.jsp"/>
<link rel="stylesheet" href="${css}/employee/register.css" />
검색한 사람의 정보<br />
아이디	 ${cus.customerID } <br />
이 름		${cus.customerName} <br />
생년월일	${cus.ssn} <br />	
성별 : 남 <br />
전화번호 : ${cus.phone}<br />	
우편번호 : ${cus.postalcode} <br />
주소 : 	${cus.city}<br />
상세주소 : ${cus.address}

 <jsp:include page="../home/bottom.jsp"/>
<script>

</script> --%>