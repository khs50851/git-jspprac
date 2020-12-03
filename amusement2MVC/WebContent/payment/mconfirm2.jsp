<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
			<li><span>Step 01. 日付選択</span></li>
			<li><span>Step 02. 商品選択</span></li>
			<li class="active"><span>Step 03. 確認·決済</span></li>
		</ul>
	</div>
		
		<div class="defaultDateBox">
			<span class="due">訪問予定日</span>
			<span class="date"><strong>${fn:substring(cdate,0,4)}</strong>年 <strong>${fn:substring(cdate,6,7)}</strong>月 <strong>${fn:substring(cdate,8,10)}</strong>日 </span>
		</div>
		<div class="secTitle">
			<p>予約商品情報</p>
		</div>
		<form name="useForm" id="useForm" class="useForm" method="post" action="rpayment2.do">
		<table class="tb_style1 bg product">
			<colgroup>
				<col width="55%">
				<col width="15%">
				<col width="15%">
				<col width="15%">
			</colgroup>
			<thead>
			<tr>
				<th>商品</th>
				<th>単価(円)</th>
				<th>人数</th>
				<th>金額(円)</th>
			</tr>
			</thead>
			<tbody>
			

			


				
				<input type="hidden" class="goods_cnt" name="cdate" id="goods_cnt" value="${cdate }">
				
				<c:set var="total" value=""/>
				<c:set var="ctotal" value=""/>
			
				

					<tr data-price="27000" class="line">
						
						
						
						<c:if test="${cvo1.numbers > 0}">
						<td class="align_l">${cvo1.producttype }(${cvo1.productname })</td>
						<td class="align_r bprice">${cvo1.price }</td>
						<td class="bnumber">
							${cvo1.numbers }
						</td>
						<td class="align_r itemPrice">
						${cvo1.price  * cvo1.numbers }
						</td>
						<input type="hidden" class="goods_cnt" name="pbno1" id="goods_cnt" value="${cvo1.productbno }">
						<input type="hidden" class="goods_cnt" name="pname1" id="goods_cnt" value="${cvo1.productname }">
						<input type="hidden" class="goods_Id" name="ptype1" id="goods_Id" value="${cvo1.producttype }">
						<input type="hidden" class="goods_Name" name="pprice1" id="goods_Name" value="${cvo1.price }">
						<input type="hidden" class="product_No" name="pnumbers1" id="product_No" value="${cvo1.numbers }">
						
						</c:if>
						
						
						
					

					</tr>
					
					 	<tr>
						<c:if test="${cvo2.numbers > 0}">
						<td class="align_l"> ${cvo2.producttype }(${cvo2.productname })</td>
						<td class="align_r bprice">${cvo2.price }</td>
						<td class="bnumber">
							${cvo2.numbers }
						</td>
						<td class="align_r itemPrice">
						${cvo2.price  * cvo2.numbers }
						</td>
						<input type="hidden" class="goods_cnt" name="pbno2" id="goods_cnt" value="${cvo2.productbno }">
						<input type="hidden" class="goods_cnt" name="pname2" id="goods_cnt" value="${cvo2.productname }">
						<input type="hidden" class="goods_Id" name="ptype2" id="goods_Id" value="${cvo2.producttype }">
						<input type="hidden" class="goods_Name" name="pprice2" id="goods_Name" value="${cvo2.price }">
						<input type="hidden" class="product_No" name="pnumbers2" id="product_No" value="${cvo2.numbers }">
						
						</c:if>
						
				
						
						
						</tr>
						
						
						<tr>
						
						<c:if test="${cvo3.numbers > 0}">
						<td class="align_l">${cvo3.producttype }(${cvo3.productname })</td>
						<td class="align_r bprice">${cvo3.price }</td>
						<td class="bnumber">
							${cvo3.numbers }
						</td>
						<td class="align_r itemPrice">
						${cvo3.price  * cvo3.numbers }
						</td>
						<input type="hidden" class="goods_cnt" name="pbno3" id="goods_cnt" value="${cvo3.productbno }">
						<input type="hidden" class="goods_cnt" name="pname3" id="goods_cnt" value="${cvo3.productname }">
						<input type="hidden" class="goods_Id" name="ptype3" id="goods_Id" value="${cvo3.producttype }">
						<input type="hidden" class="goods_Name" name="pprice3" id="goods_Name" value="${cvo3.price }">
						<input type="hidden" class="product_No" name="pnumbers3" id="product_No" value="${cvo3.numbers }">
						
						</c:if>
						
						
						
						
						
						
						</tr>
						
							<tr>
						
						<c:if test="${cvo4.numbers > 0}">
						<td class="align_l">${cvo4.producttype }(${cvo4.productname })</td>
						<td class="align_r bprice">${cvo4.price }</td>
						<td class="bnumber">
							${cvo4.numbers }
						</td>
						<td class="align_r itemPrice">
						${cvo4.price  * cvo4.numbers }
						</td>
						<input type="hidden" class="goods_cnt" name="pbno4" id="goods_cnt" value="${cvo4.productbno }">
						<input type="hidden" class="goods_cnt" name="pname4" id="goods_cnt" value="${cvo4.productname }">
						<input type="hidden" class="goods_Id" name="ptype4" id="goods_Id" value="${cvo4.producttype }">
						<input type="hidden" class="goods_Name" name="pprice4" id="goods_Name" value="${cvo4.price }">
						<input type="hidden" class="product_No" name="pnumbers4" id="product_No" value="${cvo4.numbers }">
						
						
						
						</c:if>
						
						
					
						
						
						</tr>
						
				<input type="hidden" id="tempName" name="tempName" value="자유이용권(온라인)(성인)">
					<c:set var="total" value="${(cvo1.price  * cvo1.numbers) +(cvo2.price  * cvo2.numbers)+(cvo3.price  * cvo3.numbers)+(cvo4.price  * cvo4.numbers)}"/>
						<c:set var="ctotal" value="${cvo1.numbers+cvo2.numbers+cvo3.numbers+cvo4.numbers}"/>
			</tbody>
			<tfoot>
			<tr>
				<td colspan="2">合計</td>
				<td class="total" id="total">${ctotal }</td>
				<td class="align_r total price" id="total_price">${total }</td>
				<input type="hidden" class="ptotal" name="ptotal" id="ptotal" value="${total }">
				<input type="hidden" class="ptotal" name="ctotal" id="ptotal" value="${ctotal }">
			</tr>
			</tfoot>
		</table>
		
		
		<div class="paytitle">
		<h3>決済手段</h3>
		</div>
		
		
		<div class="creditbtn">
		
<button type="button" class="btn btn-default" id="cdbtn">クレジットカード</button>
		
		</div>
		
		
		<table class="credit" id="credit">
		<tr>
		<td>
		クレジットカード番号入力 
		<input type="text" name="creditnum1" class="form-control" style="width:10%;">-
		<input type="text" name="creditnum2" class="form-control" style="width:10%;">-
		<input type="text" name="creditnum3" class="form-control" style="width:10%;">-
		<input type="text" name="creditnum4" class="form-control" style="width:10%;">
		</td>
		</tr>
		
		<tr>
		<td>
		クレジットカードのパスワード入力
		<input type="password" name="creditpw" class="form-control" style="width:10%;">
		</td>
		</tr>
		</table>
		
		
		</form>
		
		
		
		<div class="agreeCheckWrap">
			<div class="check-ui-custom">
			<form name="useForm2" id="useForm2" class="useForm">
				<input type="checkbox" id="private_chk" name="private_chk" value="Y">
				<label for="private_chk">キャンセルおよび払い戻し規定に同意します。</label>
				</form>
			</div>
		</div>
		
		<div class="infoBoxWrap">
			<ul>
				<li>
					<strong>取消·返金規定</strong>
					<div>
						<p>- オンライン予約後、訪問当日までキャンセル可能です。</p>
						<p>- 訪問当日に未発売(未使用)すると、翌日自動的にキャンセル及び返金されます。</p>
						<p>- 訪問当日の入場完了後は払い戻しできません。</p>
					</div>
				</li>
			</ul>
		</div>
		
		<div class="btnCenterWrap">
			<a href="javascript:;" class="btn-default1 btn-medium2 bg-white1 btn-round" onclick="pre();">以前</a>&nbsp;&nbsp;
			<!-- <a href="javasctipt:;" class="btn-default btn-medium2 bg-black btn-round" onclick="order();" id="orderUse">결제하기</a> -->
			<a href="javascript:fn_ck();" class="btn-default1 btn-medium2 bg-black1 btn-round" id="orderUse">決済する</a>
		</div>	
							
							
							
							
	</div>

</div>


<script>

function fn_ck(){
	if(useForm.creditnum1.value==""){
		alert('クレジットカード番号を入力してください！');
		useForm.creditnum1.focus();
		return false;
	}
	if(useForm.creditnum2.value==""){
		alert('クレジットカード番号を入力してください！');
		useForm.creditnum2.focus();
		return false;
	}
	if(useForm.creditnum3.value==""){
		alert('クレジットカード番号を入力してください！');
		useForm.creditnum3.focus();
		return false;
	}
	if(useForm.creditnum4.value==""){
		alert('クレジットカード番号を入力してください！');
		useForm.creditnum4.focus();
		return false;
	}
	if(useForm.creditpw.value==""){
		alert('クレジットカードのパスワードを入力しなければなりません！');
		useForm.creditpw.focus();
		return false;
	}
	if(useForm2.private_chk.checked==false){
		alert('キャンセルおよび払い戻し規定に同意してください！');
		return;
	}
	
	useForm.submit();
}




</script>

<script>
$(function(){
   
        $('#credit').hide();
   
});

</script>

<script>
$(function(){
	  $('#cdbtn').click(function(){
	    $('#credit').show();
	  });
	
	});

</script>


<%@ include file="../footer.jsp"%>

