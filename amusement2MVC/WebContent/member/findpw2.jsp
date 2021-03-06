<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!-- start container -->
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">PW検索</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">会員管理</li>
				<li class="freeboard.jsp">PW検索</li>
				<!-- active는 활성화된 현재위치 -->
			</ol>
		</div>
	</div>
</div>


<div class="container">


	<div class="col-md-3">
		<div class="lnBox">
			<div class="inner">
				<div class="top">よみうりランド?</div>
				<div class="mid">
					<ul class="lnb">
						<!-- 1레벨 단노드 -->
						<li class="bdbt"><a class="lnbBtn"
							href="introduce.do">よみうりランド?</a></li>

						<!-- 1레벨 단노드 -->
						<li class="on bdbt"><a class="lnbBtn on"
							href="trafficinfo.do">交通アクセス
								</a></li>
						<!-- 1레벨 단노드 -->
						<li class="bdbt"><a class="lnbBtn"
							href="notice.do">お知らせ
								</a></li>

						<!-- 1레벨 -->
						<li class="bdbt"><a class="lnbBtn"
							href="ride.do"
							onclick="jsToggleMenu('mn_KFS_34_02_03'); return false;">アトラクション
							<span>&nbsp;</span>
						</a> <!-- 주의 1레벨 단노드가 아니믈 li를 닫지 않고있음 --> <!-- Loop level 2 시작 --> <!-- 2레벨 li 닫기 -->
					</ul>
				</div>
			</div>
			<div class="bottom"></div>
			
			
			<div class="sub_customer_wrap">
			<div class="mdArea">
				<p><span><i class="fa fa-bus" aria-hidden="true" style="color:#fff;"></i></i></span>8月16日</p>
				<span class="line1"></span>
				<span class="line2"></span>
			</div>
			<div class="btnBoxArea">
				<ul>
					<li><a href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1459&amp;mn=KFS_34_01_02_01"><i class="fa fa-money fa-2x" aria-hidden="true"></i><p>利用料金</p></a></li>
					<li><a href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1468&amp;mn=KFS_34_01_07"><i class="fa fa-map-o fa-2x" aria-hidden="true"></i><p>GuideMap</p></a></li>
					<li><a href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1465&amp;mn=KFS_34_01_04"><i class="fa fa-car fa-2x" aria-hidden="true"></i><p>アクセス</p></a></li>
				</ul>
			</div>
			<div class="telArea">
				<p class="tel_txt">お問い合わせ<br>(代表電話)</p>
				<p class="tel_info">044-966-2222</p>
			</div>
			<div class="btnBoxArea2">
				<ul>
					<li><a href="/newkfsweb/kfi/kfs/linkage/selectDccoLinkageList.do?mn=KFS_34_01_06_01">よくある質問</a></li>
					<li><a href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1531&amp;mn=KFS_34_01_06_04">案内電話</a></li>
				</ul>
			</div>
		</div>
			
			
			
		</div>

	</div>




	<div class="col-md-9">
		<hr class="hr">
		<div class="loginArea">
			<div class="loginField">


				<c:choose>
					<c:when test="${not empty mvo.id }">
						<form name="searchpw1" id="frmlogin" class="userForm"
							method="post" action="findpw3.do">
						<input name="id" value="${mvo.id }" id="userid" type="hidden">	
							<table>
								<tr>

									<td><input type="text" id="email" name="email" style="width:400px;"
										placeholder="メールアドレス入力" class="wsize2 width60"> <input
										type="button" value="メール送信" id="btn_email" style="width:400px;"
										class="btn_sendemail"></td>
								</tr>

								<tr>
									<td><input name="certinumber" id="certinumber" type="text" style="width:400px;"
										placeholder="認証番号入力"> <span class="check_font"
										id="ctCheck" style="color: #f00;"></span> <span
										class="check_font" id="ctCheck2" style="color: #0f0;"></span>
									</td>
								</tr>
							</table>
						</form>

						<div class="login_btn">
							<a href="javascript:fn_searchpw();">確認</a>
						</div>

					</c:when>
					<c:otherwise>

						<h4>入力した情報と一致するアカウントが存在しません。</h4>


					</c:otherwise>
				</c:choose>



			</div>
		</div>
	</div>

</div>



<script>
	function fn_searchpw() {
		if (searchpw1.email.value == "") {
			alert("メールアドレスを入力してください！");
			searchpw1.email.focus();
			return false;
		}
		if (searchpw1.certinumber.value == "") {
			alert("認証番号を入力してください！")
			searchpw1.certinumber.focus();
			return false;
		}
		searchpw1.submit();
	}
</script>


<script>

$(function(){
	$("#btn_email").on("click",function(){
		var email = $("#email").val();
		var id = $("#userid").val();
		if(email == ""){
			alert("メールアドレスを入力してください。")
			$("#email").focus();
		}else{
			$.ajax({
				type : "post",
				dataType : "json",
				async : false,
				data : {"email":email,"id":id},
				url : "sendemail2.do",
				success : function(data){
					if(data.msg == "oo"){
						alert(data.msg1);
					}else{
						alert(data.msg55);
					}
				},
				error : function(){
					alert("회원가입 정보가 없습니다");
				}
				
				
				
			})
		}
		
		
	})
})	


$(function(){
	$('#certinumber').blur(function(){
		if($('#certinumber').val() == ""){
			$("#ctCheck").text("認証番号を入力してください！")
			
		}else{
		$.ajax({
			type:"post",
			dataType:"json",
			data:{certinumber:$("#certinumber").val()},
			async:false,
			url:"certicompare.do",
			success:function(data){
				
				
					if(data.check == "ok"){
						$("#ctCheck").empty();
						$("#ctCheck2").text("認証番号一致")
					}else{
						$("#ctCheck2").empty();
						$("#ctCheck").text("認証番号の不一致")
						$("#certinumber").val('');
					}
				
				
			},error:function(){
				
			}
			
		})
		}
	})
})

</script>



<%@ include file="../footer.jsp"%>