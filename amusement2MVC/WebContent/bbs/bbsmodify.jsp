<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">書き方修正</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">利用情報</li>
				<li class="freeboard.jsp">書き方修正</li>
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
						<li class="bdbt"><a class="lnbBtn" href="payment.do">利用権予約</a></li>

						<!-- 1레벨 단노드 -->
						<li class="on bdbt"><a class="lnbBtn"
							href="javascript:void(0);">予約確認</a></li>
						<!-- 1레벨 단노드 -->
						<li class="bdbt"><a class="lnbBtn" href="bbs.do">自由掲示板 </a></li>

						<!-- 1레벨 -->
						<li class="bdbt"><a class="lnbBtn" href="ride.do"
							onclick="jsToggleMenu('mn_KFS_34_02_03'); return false;">アトラクション
								<span>&nbsp;</span>
						</a> <!-- 주의 1레벨 단노드가 아니믈 li를 닫지 않고있음 --> <!-- Loop level 2 시작 --> <!-- 2레벨 li 닫기 -->
					</ul>
				</div>
			</div>
			<div class="bottom"></div>


			<div class="sub_customer_wrap">
				<div class="mdArea">
					<p>
						<span><i class="fa fa-bus" aria-hidden="true"
							style="color: #fff;"></i></i></span>8月16日
					</p>
					<span class="line1"></span> <span class="line2"></span>
				</div>
				<div class="btnBoxArea">
					<ul>
						<li><a
							href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1459&amp;mn=KFS_34_01_02_01"><i
								class="fa fa-money fa-2x" aria-hidden="true"></i>
							<p>利用料金</p></a></li>
						<li><a
							href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1468&amp;mn=KFS_34_01_07"><i
								class="fa fa-map-o fa-2x" aria-hidden="true"></i>
							<p>GuideMap</p></a></li>
						<li><a
							href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1465&amp;mn=KFS_34_01_04"><i
								class="fa fa-car fa-2x" aria-hidden="true"></i>
							<p>アクセス</p></a></li>
					</ul>
				</div>
				<div class="telArea">
					<p class="tel_txt">
						お問い合わせ<br>(代表電話)
					</p>
					<p class="tel_info">044-966-2222</p>
				</div>
				<div class="btnBoxArea2">
					<ul>
						<li><a
							href="/newkfsweb/kfi/kfs/linkage/selectDccoLinkageList.do?mn=KFS_34_01_06_01">よくある質問</a></li>
						<li><a
							href="/newkfsweb/cop/bbs/selectViewPage.do?bbsId=BBSMSTR_1531&amp;mn=KFS_34_01_06_04">案内電話</a></li>
					</ul>
				</div>
			</div>



		</div>

	</div>


	<div class="col-md-9">
		<hr class="hr">




		<form name="bbs" method="post" action="bbsmodifypro.do"
			onsubmit="return check();">
			<input type="hidden" name="article_number"
				value="${nvo.article_number }"> <input type="hidden"
				name="pageNum" value="${cri.pageNum }"> <input type="hidden"
				name="amount" value="${cri.amount }">
			<table style="width: 100%;">
				<colgroup>
					<col width="20%">
					<col width="*">
				</colgroup>




				<tr>
					<th><label for="fname">書き手</label></th>
					<td><input type="text" id="fname" name="id" value="${nvo.id }"
						readonly></td>
				</tr>
				<tr>
					<th><label for="lname">タイトル</label></th>
					<td><input type="text" id="lname" name="title"
						value="${nvo.title }"></td>

				</tr>
				<tr>
					<th><label for="subject">内容</label></th>
					<td><textarea id="subject" name="content"
							style="height: 200px">${nvo.content }</textarea></td>
				</tr>
					
				
			
				
				

			</table>
				<div class="btn_wrap">
				<input type="submit" value="修整" style="display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 400;
    line-height: 1.42857143;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;"> &nbsp;&nbsp;
				<button type="button" class="btn btn-info"
					onClick="location.href='notice.do';">リスト</button>
					</div>
		</form>

	</div>
</div>

<script>
	function check() {
		if (bbs.writer.value == "") {
			alert("書き手を入力してください！");
			bbs.writer.focus();
			return false;
		}
		if (bbs.title.value == "") {
			alert("タイトルを入力してください！");
			notice.title.focus();
			return false;
		}
		if (bbs.content.value == "") {
			alert("内容を入力してください！");
			notice.content.focus();
			return false;
		}
		return true;
	}
</script>



<%@ include file="../footer.jsp"%>