<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!-- start container -->
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">로그인</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">요미우리랜드</li>
				<li class="freeboard.jsp">로그인</li>
				<!-- active는 활성화된 현재위치 -->
			</ol>
		</div>
	</div>
</div>







<div class="container">

<div class="col-md-3">
		<div class="lnBox">
			<div class="inner">
				<div class="top">축제 및 이벤트</div>
				<div class="mid">
					<ul class="lnb">
						<!-- 1레벨 단노드 -->
						<li class="bdbt"><a class="lnbBtn"
							href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1530&amp;mn=KFS_34_02_04">연간축제일정</a></li>

						<!-- 1레벨 단노드 -->
						<li class="on bdbt"><a class="lnbBtn on"
							href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1532&amp;mn=KFS_34_02_02">O!World
								공연안내</a></li>
						<!-- 1레벨 단노드 -->
						<li class="bdbt"><a class="lnbBtn"
							href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1534&amp;mn=KFS_34_02_05">버드랜드
								퍼포먼스</a></li>

						<!-- 1레벨 -->
						<li class="bdbt"><a class="lnbBtn"
							href="/newkfsweb/kfi/kfs/event/selectDccoEventList.do?mn=KFS_34_02_03_01"
							onclick="jsToggleMenu('mn_KFS_34_02_03'); return false;">O!World
								축제&amp;이벤트<span>&nbsp;</span>
						</a> <!-- 주의 1레벨 단노드가 아니믈 li를 닫지 않고있음 --> <!-- Loop level 2 시작 --> <!-- 2레벨 li 닫기 -->
					</ul>
				</div>
			</div>
			<div class="bottom"></div>
			
			
			<div class="sub_customer_wrap">
			<div class="mdArea">
				<p><span><i class="fa fa-bus" aria-hidden="true" style="color:#fff;"></i></i></span>7월 8일</p>
				<span class="line1"></span>
				<span class="line2"></span>
			</div>
			<div class="btnBoxArea">
				<ul>
					<li><a href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1459&amp;mn=KFS_34_01_02_01"><i class="fa fa-money fa-2x" aria-hidden="true"></i><p>이용요금</p></a></li>
					<li><a href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1468&amp;mn=KFS_34_01_07"><i class="fa fa-map-o fa-2x" aria-hidden="true"></i><p>가이드맵</p></a></li>
					<li><a href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1465&amp;mn=KFS_34_01_04"><i class="fa fa-car fa-2x" aria-hidden="true"></i><p>오시는길</p></a></li>
				</ul>
			</div>
			<div class="telArea">
				<p class="tel_txt">문의안내<br> (대표전화)</p>
				<p class="tel_info">042-580-4820</p>
			</div>
			<div class="btnBoxArea2">
				<ul>
					<li><a href="/newkfsweb/kfi/kfs/linkage/selectDccoLinkageList.do?mn=KFS_34_01_06_01">자주하는질문</a></li>
					<li><a href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1531&amp;mn=KFS_34_01_06_04">안내전화</a></li>
				</ul>
			</div>
		</div>
			
			
			
		</div>

	</div>






<div class="col-md-9">


<form name="my" method="post" action="memberupdatepro.do" onsubmit="return check();">
	
		<table class="tb_style2">
			<colgroup>
				<col width="140px">
				<col width="*">
			</colgroup>
			<tbody>
				<tr class="socialForm">
					<th>아이디<span>*</span></th>
					<td><input type="text" id="mbrid" name="id" value = "${mem.id }" readonly
						class="wsize3 vertim" style="width:140px;"> 
					
						</td>
				</tr>
				<tr class="socialForm">
					<th>비밀번호<span>*</span></th>
					<td><input type="password" id="pw1" name="pw1"
						class="wsize3 vertim"> <span class="ex_txt"></span></td>
				</tr>
				<tr class="socialForm">
					<th>비밀번호 확인<span>*</span></th>
					<td><input type="password" id="pw2" name="pw2" class="wsize3">
					 <span class="check_font" id="pwCheck" style="color:#f00;"></span>
					 <span class="check_font" id="pwCheck2" style="color:#0f0;"></span>
					</td>
				</tr>
				<tr>
					<th>이름(한글)<span>*</span></th>
					<td><input type="text" id="name" name="name" class="wsize3" value="${mem.name }"
					readonly	></td>
				</tr>
				<tr>
					<th>주민등록번호<span>*</span></th>
					<td><input type="text" id="birth" name="birth" value="${fn:substring(mem.birth,0,6)}" readonly
						class="wsize2 vertim">-
						<input type="password" id="birth" name="birth" value="${fn:substring(mem.birth,6,14)}" readonly
						class="wsize2 vertim">
							</td>
				</tr>

				<tr>
					<th>이메일<span>*</span></th>
					<td><input type="text" id="email" name="email" value="${mem.email }"
						class="wsize2">  </td>
				</tr>
				<tr>
					<th>휴대전화<span>*</span></th>
					<td><input type="text" id="tel" name="tel" value="${mem.tel }"
						class="wsize1" ></td>
				</tr>
			

				<tr>
				
				<th>주소</th>
					<td><input type="text" id="address" name="address" value="${mem.address }"
						class="wsize4" placeholder="기본 주소 입력">
					</td>
				</tr>
				
				<tr>
				<td class="btd" colspan="2">
				<input type="submit" class="wsize4" value="수정" >
				<input type="button" class="wsize4" value="취소" onclick="cancel();" >
				</td>
			
				</tr>
			</tbody>
		</table>





</form>

</div>
</div>













<script>
	function check(){
		if(my.id.value==""){
			alert('아이디를 입력하세요');
			my.id.focus();
			return false;
		}
		if(my.pw1.value==""){
			alert('비밀번호를 입력하세요');
			my.pw1.focus();
			return false;
		}
		if(my.pw2.value==""){
			alert('비밀번호 확인을 입력하세요');
			my.pw2.focus();
			return false;
		}
		if(my.pw1.value != my.pw2.value){
			alert("패스워드와 패스워드 확인이 일치하지 않습니다");
			my.pw1.focus();
			return false;
		}
		if(my.name.value==""){
			alert('이름을 입력하세요');
			my.name.focus();
			return false;
		}
		
		var email = document.getElementById("email").value;
		var emailpattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9_\.\-]+\.[A-Za-z0-0\-]+/;
		
		if(emailpattern.test(email)==false){
			alert('이메일 형식이 올바르지 않습니다');
			my.email.focus();
			return false;
		}
		if(my.tel.value==""){
			alert('연락처를 입력하세요');
			my.tel.focus();
			return false;
		}
		if(my.address.value==""){
			alert('주소를 입력하세요');
			my.address.focus();
			return false;
		}
	
		
		return true;
	}
</script>

<script>
$(function(){
	$('#pw2').blur(function(){
		if(my.pw1.value != my.pw2.value){
			$("#pwCheck2").empty();
			$("#pwCheck").text("패스워드가 서로 일치하지 않습니다")
			my.pw1.focus();
			
		}else{
			$("#pwCheck").empty();
			$("#pwCheck2").text("패스워드가 일치합니다")
		}
		
	})
})

</script>


<script>
 function idCheck(){
	 if(my.id.value==""){
		 alert('아이디를 입력하세요');
		 my.id.focus();
		 return;
	 }
	 var url = "idcheck.do?id="+my.id.value;
	 window.open(url,"id","width=450, height=200");
 }

</script>
<script>
	function cancel(){
		alert("취소되었습니다");
		location.href="main.do";
	}
</script>



<%@ include file="../footer.jsp"%>
