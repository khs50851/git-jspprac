<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!-- start container -->

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
				<li><span>01. 日付選択</span></li>
				<li class="active"><span>02. 商品選択</span></li>
				<li><span>03. 確認·決済</span></li>
			</ul>
		</div>


		<div class="tab_desc_box">

			<div class="defaultDateBox">
				<span class="due">訪問予定日</span> <span class="date"><strong>${fn:substring(cdate,0,4)}</strong>年
					<strong>${fn:substring(cdate,6,7)}</strong>月 <strong>${fn:substring(cdate,8,10)}</strong>日
				</span>
			</div>

			<div class="defaultTxtBox">予約する商品の人数を選択し、次へボタンをクリックしてください。</div>

			<div class="ticketInfoBox">
				<div class="infoArea">
				
					<p class="title">利用権予約</p>
					<dl>
						<dt>販売期間</dt>
						<dd>常時</dd>
						<dt>予約数量</dt>
						<dd>オンライン予約は最大10名まで購入可能</dd>
						<dt>発券入場</dt>
						<dd>オンライン予約完了後、訪問当日に現場でチケット売り場と年間会員券センター内の無人キオスクからチケットを出力することができる。
						あります 現場でチケットをプリントアウトすることなく、モバイルチケット確認後にご入場いただけます。</dd>
					</dl>
				</div>
			</div>


			<form name="preForm" id="preForm" class="preForm" method="post"
				action="./use.do?rs=use0002&amp;mn=KFS_34_06_01">
				<input type="hidden" name="goodsId" id="goodsId"
					value="8237C8461CCBE118E053C0A80835E118"> <input
					type="hidden" name="productNo" id="productNo" value="1007">
				<input type="hidden" name="goodsNo" id="goodsNo" value="1007224000">
			</form>
			<form name="useForm" id="useForm" class="useForm" method="post"
				action="mconfirm.do">
				<input type="hidden" name="producttype1" id="goodsId" value="${pvo1.producttype }">
				<input type="hidden" name="productname1" id="productNo" value="${pvo1.productname }">
				<input type="hidden" name="productbno1" id="goodsNo" value="${pvo1.productbno }">
				<input type="hidden" name="price1" id="applctDm" value="${pvo1.price }">
				<input type="hidden" name="cdate" value="${cdate }">
				<input type="hidden" name="producttype2" id="goodsId" value="${pvo2.producttype }">
				<input type="hidden" name="productname2" id="productNo" value="${pvo2.productname }">
				<input type="hidden" name="productbno2" id="goodsNo" value="${pvo2.productbno }">
				<input type="hidden" name="price2" id="applctDm" value="${pvo2.price }">
				
				<input type="hidden" name="producttype3" id="goodsId" value="${pvo3.producttype }">
				<input type="hidden" name="productname3" id="productNo" value="${pvo3.productname }">
				<input type="hidden" name="productbno3" id="goodsNo" value="${pvo3.productbno }">
				<input type="hidden" name="price3" id="applctDm" value="${pvo3.price }">
				
				<input type="hidden" name="producttype4" id="goodsId" value="${pvo4.producttype }">
				<input type="hidden" name="productname4" id="productNo" value="${pvo4.productname }">
				<input type="hidden" name="productbno4" id="goodsNo" value="${pvo4.productbno }">
				<input type="hidden" name="price4" id="applctDm" value="${pvo4.price }">

				<table class="tb_style1" id="tb_style">
					<thead>
						<tr>
							<th>券種</th>
							<th>対象</th>

							<th>売価(円)</th>
							<th>予約可能数</th>
							<th>人数</th>
							<th>金額(円)</th>
						</tr>
					</thead>
					<tbody>
						<tr data-price="27000" data-target="04040000"
							data-goods="1007224000" data-type="02010100" class="line">
							<th rowspan="4">${pvo1.producttype }</th>
							<td class="align_l">${pvo1.productname }</td>

							<td class="align_r fap1">${pvo1.price }</td>
							<input type="hidden" name="goods_Item_Price1"
								id="goods_Item_Price1" class="goods_Item_Price" value="${pvo1.price }">
							<input type="hidden" name="receivabled_Price"
								id="receivabled_Price" class="receivabled_Price" value="0">
							<td>10</td>
							<td><select id="goods_cnt1" name="goods_cnt1"
								class="goods_cnt">
									<option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>

							</select> <input type="hidden" name="beforeCnt" id="beforeCnt" value="0">
							</td>
							<td class="align_r itemPrice1">0</td>
							<input type="hidden" name="goods_Id" id="goods_Id"
								value="8237C8461CCBE118E053C0A80835E118">
							<input type="hidden" name="goods_Name" id="goods_Name"
								value="자유이용권(온라인)">
							<input type="hidden" name="product_No" id="product_No"
								value="1007">
							<input type="hidden" name="goods_No" id="goods_No"
								value="1007224000">
							<input type="hidden" name="goods_Item_Target_Cd"
								id="goods_Item_Target_Cd" value="04040000">
							<input type="hidden" name="goods_Item_No" id="goods_Item_No"
								value="10072240000204">
							<input type="hidden" name="preemption_Id" id="preemption_Id"
								value="">
							<input type="hidden" name="goods_Item_Name" id="goods_Item_Name"
								value="성인">
							<input type="hidden" name="product_Type_Cd" id="product_Type_Cd"
								value="02010000">
							<input type="hidden" name="product_Type_Cd2"
								id="product_Type_Cd2" value="02010100">
						</tr>

						<tr data-price="21000" data-target="04030000"
							data-goods="1007224000" data-type="02010100">

							<td class="align_l">${pvo2.productname }</td>

							<td class="align_r">${pvo2.price }</td>
							<input type="hidden" name="goods_Item_Price2"
								id="goods_Item_Price2" class="goods_Item_Price" value="${pvo2.price }">
							<input type="hidden" name="receivabled_Price"
								id="receivabled_Price" class="receivabled_Price" value="0">
							<td>10</td>
							<td><select id="goods_cnt2" name="goods_cnt2"
								class="goods_cnt">


									<option value="0">0</option>


									<option value="1">1</option>


									<option value="2">2</option>


									<option value="3">3</option>


									<option value="4">4</option>


									<option value="5">5</option>


									<option value="6">6</option>


									<option value="7">7</option>


									<option value="8">8</option>


									<option value="9">9</option>


									<option value="10">10</option>

							</select> <input type="hidden" name="beforeCnt" id="beforeCnt" value="0">
							</td>
							<td class="align_r itemPrice2">0</td>
							<input type="hidden" name="goods_Id" id="goods_Id"
								value="8237C8461CCBE118E053C0A80835E118">
							<input type="hidden" name="goods_Name" id="goods_Name"
								value="자유이용권(온라인)">
							<input type="hidden" name="product_No" id="product_No"
								value="1007">
							<input type="hidden" name="goods_No" id="goods_No"
								value="1007224000">
							<input type="hidden" name="goods_Item_Target_Cd"
								id="goods_Item_Target_Cd" value="04030000">
							<input type="hidden" name="goods_Item_No" id="goods_Item_No"
								value="10072240000203">
							<input type="hidden" name="preemption_Id" id="preemption_Id"
								value="">
							<input type="hidden" name="goods_Item_Name" id="goods_Item_Name"
								value="청소년">
							<input type="hidden" name="product_Type_Cd" id="product_Type_Cd"
								value="02010000">
							<input type="hidden" name="product_Type_Cd2"
								id="product_Type_Cd2" value="02010100">
						</tr>

						<tr data-price="18000" data-target="04020000"
							data-goods="1007224000" data-type="02010100">

							<td class="align_l">${pvo3.productname }</td>

							<td class="align_r">${pvo3.price }</td>
							<input type="hidden" name="goods_Item_Price3"
								id="goods_Item_Price3" class="goods_Item_Price" value="${pvo3.price }">
							<input type="hidden" name="receivabled_Price"
								id="receivabled_Price" class="receivabled_Price" value="0">
							<td>10</td>
							<td><select id="goods_cnt3" name="goods_cnt3"
								class="goods_cnt">


									<option value="0">0</option>


									<option value="1">1</option>


									<option value="2">2</option>


									<option value="3">3</option>


									<option value="4">4</option>


									<option value="5">5</option>


									<option value="6">6</option>


									<option value="7">7</option>


									<option value="8">8</option>


									<option value="9">9</option>


									<option value="10">10</option>

							</select> <input type="hidden" name="beforeCnt" id="beforeCnt" value="0">
							</td>
							<td class="align_r itemPrice3">0</td>
							<input type="hidden" name="goods_Id" id="goods_Id"
								value="8237C8461CCBE118E053C0A80835E118">
							<input type="hidden" name="goods_Name" id="goods_Name"
								value="자유이용권(온라인)">
							<input type="hidden" name="product_No" id="product_No"
								value="1007">
							<input type="hidden" name="goods_No" id="goods_No"
								value="1007224000">
							<input type="hidden" name="goods_Item_Target_Cd"
								id="goods_Item_Target_Cd" value="04020000">
							<input type="hidden" name="goods_Item_No" id="goods_Item_No"
								value="10072240000202">
							<input type="hidden" name="preemption_Id" id="preemption_Id"
								value="">
							<input type="hidden" name="goods_Item_Name" id="goods_Item_Name"
								value="어린이">
							<input type="hidden" name="product_Type_Cd" id="product_Type_Cd"
								value="02010000">
							<input type="hidden" name="product_Type_Cd2"
								id="product_Type_Cd2" value="02010100">
						</tr>

						<tr data-price="18000" data-target="04050000"
							data-goods="1007224000" data-type="02010100">

							<td class="align_l">${pvo4.productname }</td>

							<td class="align_r">${pvo4.price }</td>
							<input type="hidden" name="goods_Item_Price4"
								id="goods_Item_Price4" class="goods_Item_Price" value="${pvo4.price }">
							<input type="hidden" name="receivabled_Price"
								id="receivabled_Price" class="receivabled_Price" value="0">
							<td>10</td>
							<td><select id="goods_cnt4" name="goods_cnt4"
								class="goods_cnt">


									<option value="0">0</option>


									<option value="1">1</option>


									<option value="2">2</option>


									<option value="3">3</option>


									<option value="4">4</option>


									<option value="5">5</option>


									<option value="6">6</option>


									<option value="7">7</option>


									<option value="8">8</option>


									<option value="9">9</option>


									<option value="10">10</option>

							</select> <input type="hidden" name="beforeCnt" id="beforeCnt" value="0">
							</td>
							<td class="align_r itemPrice4">0</td>
							<input type="hidden" name="goods_Id" id="goods_Id"
								value="8237C8461CCBE118E053C0A80835E118">
							<input type="hidden" name="goods_Name" id="goods_Name"
								value="자유이용권(온라인)">
							<input type="hidden" name="product_No" id="product_No"
								value="1007">
							<input type="hidden" name="goods_No" id="goods_No"
								value="1007224000">
							<input type="hidden" name="goods_Item_Target_Cd"
								id="goods_Item_Target_Cd" value="04050000">
							<input type="hidden" name="goods_Item_No" id="goods_Item_No"
								value="10072240000205">
							<input type="hidden" name="preemption_Id" id="preemption_Id"
								value="">
							<input type="hidden" name="goods_Item_Name" id="goods_Item_Name"
								value="경로">
							<input type="hidden" name="product_Type_Cd" id="product_Type_Cd"
								value="02010000">
							<input type="hidden" name="product_Type_Cd2"
								id="product_Type_Cd2" value="02010100">
						</tr>

					</tbody>

					<tfoot>
						<tr>
							<td colspan="4">合計</td>
							<td class="total" id="total">0</td>
							<td class="align_r total price" id="total_price">0</td>
						</tr>
					</tfoot>
				</table>
			</form>
			<div class="btnCenterWrap">
				<a href="javascript:;" onclick="pre();"
					class="btn-default1 btn-medium2 bg-white1 btn-round">以前</a>&nbsp;&nbsp;
				<a href="javascript:fn_ck();" onclick="next();"
					class="btn-default1 btn-medium2 bg-black1 btn-round">つぎ</a>
			</div>

			<!-- <div class="bannerBtmWrap"><a href="#"><img src="/asset/img/banner_product1.jpg" /></a></div> -->



		</div>




	</div>

</div>

<!--
<script>

	$(document).ready(function() {
	//	var total = 0;
		//var ctotal = 0;
		
		
		$('#goods_cnt1').on('change', function() {
			
			$.ajax({
				type:"post",
				dataType:"json",
				data:{count:$("#goods_cnt1").val(),price:$("#goods_Item_Price1").val()},
				async:false,
				url:"calculator.do",
				success:function(data){
							$(".itemPrice1").text(data.tot1)
						//	total = data.rtot;
						//	$("#total_price").text(total)
						
				},error:function(){
					
				}
				
			})
			
			
		});

		
 $('#goods_cnt2').on('change', function() {
			
			$.ajax({
				type:"post",
				dataType:"json",
				data:{count:$("#goods_cnt2").val(),price:$("#goods_Item_Price2").val()},
				async:false,
				url:"calculator.do",
				success:function(data){
							$(".itemPrice2").text(data.tot1)
						/*	total = total+ data.rtot;
							$("#total_price").text(total)
							ctotal = ctotal + $("#goods_cnt2").val()
							$("#total").text(ctotal)*/
				},error:function(){
					
				}
				
			})
			
			
		});
		
		
 $('#goods_cnt3').on('change', function() {
		
		$.ajax({
			type:"post",
			dataType:"json",
			data:{count:$("#goods_cnt3").val(),price:$("#goods_Item_Price3").val()},
			async:false,
			url:"calculator.do",
			success:function(data){
						$(".itemPrice3").text(data.tot1)
					/*		total = total+ data.rtot;
						$("#total_price").text(total)*/
			},error:function(){
				
			}
			
		})
		
		
	});	
 
 
 
 
 $('#goods_cnt4').on('change', function() {
		
		$.ajax({
			type:"post",
			dataType:"json",
			data:{count:$("#goods_cnt4").val(),price:$("#goods_Item_Price4").val()},
			async:false,
			url:"calculator.do",
			success:function(data){
						$(".itemPrice4").text(data.tot1)
					/*	total = total+ data.rtot;
							$("#total_price").text(total)*/
			},error:function(){
				
			}
			
		})
		
		
	});	

 
 
 
 
		
		
	});
 </script>

-->

<script>

$(document).ready(function() {
	var item1=0;
	var item2=0;
	var item3=0;
	var item4=0;
	var sum = 0;
	var sum2 = 0;
	var sum3 = 0;
	var sum4 = 0;
	var count = 0;
	var count2= 0;
	var count3 = 0;
	var count4 = 0;
	 $('#goods_cnt1').on('change', function() {
			
			
		item1 = $("#goods_cnt1").val() * $("#goods_Item_Price1").val()
		 
		 $(".itemPrice1").text(item1)
		 
		  $("#total_price").text(item1+item2+item3+item4)
		  
		  
		  count = $("#goods_cnt1").val();
		  $("#total").text(Number(count)+Number(count2)+Number(count3)+Number(count4))
		  
		  
		});	
	 
	 $('#goods_cnt2').on('change', function() {
			
			
			item2 = $("#goods_cnt2").val() * $("#goods_Item_Price2").val()
			 
			 $(".itemPrice2").text(item2)
			 
			 sum2 = sum+item2
			 $("#total_price").text(item1+item2+item3+item4)
			 
			 
			 count2 = $("#goods_cnt2").val();
				$("#total").text(Number(count)+Number(count2)+Number(count3)+Number(count4))
			 
			 
			});	
	 
	 $('#goods_cnt3').on('change', function() {
			
			
			item3 = $("#goods_cnt3").val() * $("#goods_Item_Price3").val()
			 $(".itemPrice3").text(item3)
			  sum3 = sum2+item3
			 $("#total_price").text(item1+item2+item3+item4)


			 
			 count3 = $("#goods_cnt3").val();
			$("#total").text(Number(count)+Number(count2)+Number(count3)+Number(count4))
			 
			 
			 
			});	
	 
	 $('#goods_cnt4').on('change', function() {
			
			
			item4 = $("#goods_cnt4").val() * $("#goods_Item_Price4").val()
			 $(".itemPrice4").text(item4)
			   sum4 = sum3+item4
			 $("#total_price").text(item1+item2+item3+item4)


			  count4 = $("#goods_cnt4").val();
			$("#total").text(Number(count)+Number(count2)+Number(count3)+Number(count4))
			 
			 
			 
			 
			});	
	 
	
	
});
</script>


<script>

function fn_ck(){

	if(useForm.goods_cnt1.value==0 && useForm.goods_cnt2.value==0 && useForm.goods_cnt3.value==0 && useForm.goods_cnt4.value==0){
		alert('商品を選択してください。');
		return false;
	}
	useForm.submit();
}




</script>

<%@ include file="../footer.jsp"%>