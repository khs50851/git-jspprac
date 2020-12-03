<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!-- start container -->
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">自由掲示板</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">利用情報</li>
				<li class="freeboard.jsp">自由掲示板</li>
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
		<div class="spimage mgbt55">
			<img src="images/jayu2.jpg" alt="sample70" />
		</div>




		<div class="record_group pull-left margintop40">
			<p>
				トータル掲示文 <span>${totcount }</span>件
			</p>
		</div>


		<div class="form1 pull-right">
			<form name="myform" method="get" action="bbs.do"
				class="pull-right wid330">
				<select name="sel" class="select myselect">
					<option value="title">タイトル</option>
					<option value="content">内容</option>
					
				</select> <input type="text" name="word" class="search_word">
				<c:choose>
				<c:when test="${pageMaker.cri.pageNum>1 }">
				<input type="hidden" name="pageNum" value="1">
				</c:when>
				<c:otherwise>
				<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
				
				</c:otherwise>
				</c:choose>
				<input type="hidden" name = "amount" value="${pageMaker.cri.amount }">
				
				<button class="btn_search padd1010" type="submit">
					<i class="fa fa-search"></i><span class="sr-only">검색버튼</span>
				</button>
			</form>
		</div>


		<div class="padd50 mgtop30">
			<div class="panel panel-default">
				<!-- Default panel contents -->

				<div class="panel-heading">自由掲示板</div>

				<!-- Table -->

				<table class="table">
					<tr>
						<th class="text-center" style="width:8%;">番号</th>
						<th class="text-center" style="width:42%;">題字</th>
						<th class="text-center" style="width:18%;">書き手</th>
						<th class="text-center" style="width:18%;">掲示日付</th>
						<th class="text-center" style="width:14%;">アクセス数</th>
					</tr>
					<tbody>

						<c:choose>
							<c:when test="${not empty list }">
							<c:set var="num" value="${totcount-((pageMaker.cri.pageNum-1)*10) }"/>
								<c:forEach var="blist" items="${list }">

									<tr>

										<td class="text-center">${num }</td>
										
										<c:choose>
											<c:when test="${fn:length(blist.title)<=10 }">
											<c:if test="${blist.ccount>0}">
												<td class="text-center"><a
													href="bbsview.do?article_number=${blist.article_number }&pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}">${blist.title }<span style="color:skyblue;">(${blist.ccount})</span></a></td>
														</c:if>	
											<c:if test="${blist.ccount<=0}">
												<td class="text-center"><a
													href="bbsview.do?article_number=${blist.article_number }&pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}">${blist.title }</a></td>
											</c:if>			
											</c:when>
										
											<c:otherwise>
											
											<c:if test="${blist.ccount>0}">
												<td class="text-center"><a
													href="bbsview.do?article_number=${blist.article_number }&pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}">${fn:substring(blist.title,0,10)}...<span style="color:skyblue;">(${blist.ccount})</span></a></td>
													</c:if>
												<c:if test="${blist.ccount<=0}">	
												<td class="text-center"><a
													href="bbsview.do?article_number=${blist.article_number }&pageNum=${pageMaker.cri.pageNum}&amount=${pageMaker.cri.amount}">${fn:substring(blist.title,0,10)}...</a></td>
												</c:if>	
												
												
											</c:otherwise>
										</c:choose>
									
										
										
										
										
										
										<td class="text-center">${blist.id }</td>
										<td class="text-center">${fn:substring(blist.write_date,0,10)}</td>
										<td class="text-center">${blist.hit }</td>

									</tr>
									<c:set var="num" value="${num-1 }"/>
								</c:forEach>
							</c:when>
							<c:when test="${empty list }">
								<tr>
									<td class="text-center" colspan="5">検索されたデータがありません。</td>
								</tr>
							</c:when>
							
						</c:choose>
					</tbody>

				</table>
			</div>
		</div>
		<div class="ppaging paging padd15 paddb15">
			<div class="pagination pull-left">
			<c:if test="${pageMaker.prev }">
				<a href="${pageMaker.startPage-1 }">&laquo;</a> 
			</c:if>	
			
			
				<c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage }">
				<a href="${num }" class="${pageMaker.cri.pageNum == num ? 'active':'' }">${num }</a> 
				</c:forEach>
				
				
			<c:if test="${pageMaker.next }">	
				<a href="${pageMaker.endPage+1 }">&raquo;</a>
			</c:if>
			
			
			</div>
			
			<c:choose>		
			<c:when test="${not empty userid }">
			<div class="pull-right">
			<button type="button" class="btn btn-default" onclick="location.href='bbswrite.do'">書取り</button>
				</div>
			</c:when>	
			</c:choose>		
		</div>
	</div>
</div>

<form id="actionForm" action="bbs.do" method="get">
<input type="hidden" name = "pageNum" value="${pageMaker.cri.pageNum }">
<input type="hidden" name = "amount" value="${pageMaker.cri.amount }">
<input type="hidden" name = "sel" value="${pageMaker.cri.type }">
<input type="hidden" name = "word" value="${pageMaker.cri.keyword }">

</form>

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

<c:set var="dok2" value="${dmsg2 }" />
<c:if test="${dok2==1 }">
	<script>
		alert("掲示文が削除されました！");
		location.href = "bbs.do";
	</script>
</c:if>

<c:if test="${result4==1 }">
<script>
	alert("掲示文が修正されました！");
</script>

</c:if>


<%@ include file="../footer.jsp"%>