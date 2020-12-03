<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ include file="../header.jsp"%>

<!-- start container -->
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">予約確認</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">よみうりランド</a></li>
				<li class="freeboard.jsp">前売</li>
				<li class="freeboard.jsp">予約確認</li>
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


		<div class="secTitle">
			<p>予約者情報</p>
		</div>


		<table class="tb_style2 mb0">
			<colgroup>
				<col width="120px">
				<col width="*">
			</colgroup>
			<tbody>
			
			
				<tr>
					<th>姓名</th>
					<td>${mvo.name }</td>
				</tr>
				<tr>

					<th>携帯電話</th>
					<td>
					${fn:substring(mvo.tel,0,3)}-${fn:substring(mvo.tel,3,7)}-${fn:substring(mvo.tel,7,11)}
					</td>
				</tr>
				<tr>
					<th>生年月日</th>
					<td>${fn:substring(mvo.birth,0,2)}年${fn:substring(mvo.birth,2,4)}月${fn:substring(mvo.birth,4,6)}日</td>
				</tr>
				
				
			</tbody>
		</table>
		<div class="txtGrayBox">
			<ul>
				<li>予約確認ページです。</li>
				<li>会員券は、訪問日までに会員券カードを発行しない場合、翌日自動的にキャンセルされます。</li>
				
			</ul>
		</div>




		<table class="tb_style1 bg product">
			<colgroup>
			<col width="12%">
			<col width="18%">
				<col width="34%">
				<col width="12%">
				<col width="10%">
				<col width="14%">
			</colgroup>
			<thead>
			<tr>
				<th>予約番号</th>
				<th>訪問の日</th>
				<th>商品</th>
				<th>単価(円)</th>
				<th>人数</th>
				<th>金額(円)</th>
			</tr>
			</thead>
			<tbody>
			
			<c:choose>
			<c:when test="${empty rlist }">
				<td class="align_l" colspan="6" style="text-align:center;font-size:16px;font-weight:bold;color:#333;">予約履歴がありません。</td>
	
			</c:when>
			<c:otherwise>
						<c:set var = "total" value=""/>
						<c:set var = "ctotal" value=""/>
						
						<c:forEach var="rlist" items="${rlist }">
						
						
							<tr>
					<td class="align_l">${rlist.paymentid }</td>
						<td class="align_r bprice">${rlist.cdate }</td>
						<td class="align_l">${rlist.producttype }(${rlist.productname })</td>
						<td class="align_r bprice">${rlist.price }</td>
						<td class="bnumber">
							${rlist.numbers }
							<c:set var = "ctotal" value="${ctotal + rlist.numbers }"/>
						</td>
						<td class="align_r itemPrice">
						${rlist.price  * rlist.numbers }
						<c:set var = "total" value="${total + (rlist.price * rlist.numbers) }"/>
						</td>
						</tr>
						</c:forEach>
						</c:otherwise>
					</c:choose>	
					
			</tbody>
			<tfoot>
			<tr>
				<td colspan="4" >合計</td>
				<td class="total" id="total">${ctotal }</td>
				<td class="align_r total price" id="total_price">${total }円
				</td>
				
			</tr>
			</tfoot>
			
		</table>
		
		
		<div class="pull-right">
		<a href="reservedelete.do?bno=${mvo.bno }" class="button3" onclick="return confirm('予約をキャンセルしますか？')">予約キャンセル</a>
		</div>
		




	</div>

</div>

	

<%@ include file="../footer.jsp"%>