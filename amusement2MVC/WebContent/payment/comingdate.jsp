<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!-- start container -->


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">日付選択</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">前売</li>
				<li class="freeboard.jsp">利用権予約</li>
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
							href="payment.do">利用権予約</a></li>

						<!-- 1레벨 단노드 -->
						<li class="on bdbt"><a class="lnbBtn" href="javascript:void(0);">予約確認</a></li>
						<!-- 1레벨 단노드 -->
						<li class="bdbt"><a class="lnbBtn"
							href="bbs.do">自由掲示板
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
		<div class="stepWrap">
			<ul>
				<li class="active"><span>Step 01. 日付選択</span></li>
				<li><span>Step 02. 商品選択</span></li>
				<li><span>Step 03. 確認·決済</span></li>
			</ul>
		</div>

		<div class="cd1">
		<form name="my" action="mselect.do" method="get">
			<p>
				利用日選択: <input type="text" id="datepicker" name="cdate" class="datep">
			</p>
		</form>

		</div>
		
		
		<div class="agreeCheckWrap">
								<div class="check-ui-custom">
								<form name="theForm" method="get" action="mselect.do">
									<input type="checkbox" id="private_chk" name="agree">
									<label for="private_chk">個人情報の収集及び利用に同意します。</label>
									</form>
									
								</div>
							</div>
							
			<div class="infoBoxWrap">
								<ul>
									<li>
										<strong>収集目的</strong>
										<div>
											<p>ホームページ予約確認</p>
										</div>
									</li>
									<li>
										<strong>収集項目</strong>
										<div>
											<p>会員ID、氏名、電話番号、メール</p>
										</div>
									</li>
									<li>
										<strong>保有及び利用期間 </strong>
										<div>
											<p>目的達成時即時廃棄</p>
										</div>
									</li>
									<li>
										<strong>拒否権及び不利益</strong>
										<div>
											<p>個人情報の収集·利用に伴う同意を拒否することができますが、大田オーワールドの予約サービスは提供されません。</p>
										</div>
									</li>
								</ul>
							</div>				
							
				<div class="btnCenterWrap">
								<a href="payment.do" class="btn-default1 btn-medium2 bg-white1 btn-round">移設</a>&nbsp;&nbsp;
								<a href="javascript:checkCheckBoxes();" class="btn-default1 btn-medium2 bg-black1 btn-round" onclick="next();">つぎ</a>
							</div>			
							
							
							
							
	</div>

</div>

<script>
function checkCheckBoxes() {
    if (theForm.agree.checked == false){
        alert ('同意しないと次のページに進みません。');
        theForm.agree.focus();
        return false;
    }
    if (my.cdate.value == ""){
        alert ('日付を選択してください。');
        my.cdate.focus();
        return false;
    }
  
    my.submit();
}
//-->

</script>

<script>
	$(function() {
		$("#datepicker").datepicker({
			dateFormat: "yy-mm-dd",minDate: 0
		
		}).val()
		
		
		
	});
	
	
	
	
</script>


<script>
$(function(){
	var actionForm = $("#actionForm");
	$(".pagination a").on("click",function(e){
		e.preventDefault();
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit();
	})
	
	
	
});



</script>





<%@ include file="../footer.jsp"%>