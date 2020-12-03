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
							<input type="hidden" id="userid" name="id" value="${id }">
								<table>
									<tr>
										
										<td><input type="password" id="userpw" name="pw1"  style="width:225%;"
											placeholder="パスワード"></td>
									</tr>

									<tr>
										<td><input type="password" id="pw" name="pw2"
											placeholder="パスワード確認" style="width:225%;">
										
											</td>
									</tr>
								</table>
						
							<div class="login_btn">
								<a href="#" id="btn_ok">パスワード修正</a>
							</div>
						
					
					</div>
				</div>
			</div>

</div>

<script>
		$(function() {
		
			
			$("#btn_ok").on("click", function(e) {
				e.preventDefault();
				var id = $("#userid").val();
				var pw1 = $("#userpw").val();
				if (pw1 == "") {
					alert("パスワードを入力してください。");
					$("#userpw").focus();
				} else {
					$.ajax({
						type : "post",
						dataType : "json",
						async : false,
						data : {
							"id" : id,"pw1" : pw1
						},
						url : "findpwpro3.do",
						success : function(data) {
						
								alert(data.mdck);
								location.href="main.do";
							
							
						},
						error : function() {
							alert('ajx에러');
						}
					})

				}

			});
			
		
			
			
			
			
		});
	</script>


<script>
/*
function fn_searchpw(){
	if(searchpw1.pw1.value==""){
		alert("비밀번호를 입력하세요");
		searchpw1.pw1.focus();
		return false;
	}
	if(searchpw1.pw2.value==""){
		alert("비밀번호확인 입력하세요")
			searchpw1.pw2.focus();
			return false;
	}
	if(searchpw1.pw1.value != searchpw1.pw2.value){
		alert("패스워드와 패스워드 확인이 일치하지 않습니다");
		searchpw1.pw1.focus();
		return false;
	}
	searchpw1.submit();
}
*/
</script>



<%@ include file="../footer.jsp"%>