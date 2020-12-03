<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!-- start container -->
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">お知らせ</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">よみうりランド?</li>
				<li class="freeboard.jsp">お知らせ</li>
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

<hr class="hr1">

		<div class="board_view">
		
		<form class="inboard">
		
		<div class="table_wrap response">
		<table>
		<tbody>
		<tr>
		<th>作成者</th>
		<td>${view.writer }</td>
		<th>掲示日付</th>
		<td>${view.regdate }</td>
		<th>アクセス数</th>
		<td>${view.readcount }</td>
		</tr>
		<tr>
		<th>タイトル</th>
			<td colspan="5">${view.title }</td>
		
		</tr>	
		<tr>
		<th colspan="6">内容</th>
			
		</tr>	
		<tr>
		<td colspan="6">
		${view.content }
		</td>
		</tr>
		</tbody>
		</table>	
		</div>
		</form>	
		
		<div class="btn_3wrap text-center">
					 <a href="notice.do?pageNum=${cri.pageNum }&amount=${cri.amount}" class="btn2 blue">リスト</a>
					 <c:if test="${userid=='admin' }">
					 <a href="noticemodify.do?bno=${view.bno }&pageNum=${cri.pageNum }&amount=${cri.amount}" class="btn2 blue">修整</a> 
					 <a href="noticedelete.do?bno=${view.bno }" onClick="return confirm('削除しますか？')" class="btn2 blue">削除</a>
					 </c:if>
				</div>
		
		
		<div class="pull-left">
			
			
			<c:choose>
			<c:when test="${prevo.bno != null }">
			
				<a href="noticeview.do?bno=${prevo.bno }&pageNum=${cri.pageNum }&amount=${cri.amount}" class="button2"><i class="fa fa-angle-left"></i>
				<span class="prev_wrap">
				<strong>前文</strong>
				<!--  
				<c:if test="${fn:length(prevo.title)>10 }">
					<span>${fn:substring(prevo.title,0,10)}...</span>
					
				</c:if>
				<c:if test="${fn:length(prevo.title)<=10}">
				<strong>이전글</strong><span>${prevo.title }</span>
				</c:if>
				-->
				
				</span>
				</a>
				
				
			</c:when>
			<c:when test="${prevo.bno == null }">
			
			
			<a href="javascript:void(0)" class="button2"><i class="fa fa-angle-left"></i>
			<strong>前文</strong><!--  <span>마지막글입니다</span>-->
			</a>
			
			
			</c:when>	
			</c:choose>
			
				</div>	
				
				
				<div class="pull-right">
				<c:choose>
				<c:when test="${nextvo.bno != null }">	
				
				<a href="noticeview.do?bno=${nextvo.bno }&pageNum=${cri.pageNum }&amount=${cri.amount}" class="button2"><i class="fa fa-angle-right"></i>
				<span class="next_wrap">
				<strong>つぎの文</strong>
				<!-- 
					<c:if test="${fn:length(nextvo.title)>10 }">
					
					<span>${fn:substring(nextvo.title,0,10)}...</span>
					
					</c:if>
					 -->
					 <!-- 	
					<c:if test="${fn:length(nextvo.title)<=10}">
					
				
				<strong>다음글</strong>
				<span>${nextvo.title }</span>
				</c:if>
				-->
				</span>
				</a>
				</c:when>
				
				<c:when test="${nextvo.bno == null }">
				<a href="javascript:void(0)" class="button2"><i class="fa fa-angle-right"></i>
				<strong>つぎの文</strong><!--  <span>마지막글입니다</span>-->
				</a>
				</c:when>
				
			</c:choose>
			
			</div>
		</div>
	</div>
</div>





<%@ include file="../footer.jsp"%>
