<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!-- start container -->
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">交通アクセス</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">よみうりランド</li>
				<li class="freeboard.jsp">交通アクセス</li>
				<!-- active는 활성화된 현재위치 -->
			</ol>
		</div>
	</div>
</div>


<div class="container">


<div class="col-md-3">
		<div class="lnBox">
			<div class="inner">
				<div class="top">交通アクセス</div>
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
	
	
	
		<section id="anc01" class="sectioning01">
<h2 class="heading02">電車でお越しの方（京王よみうりランド駅まで）</h2>
<!--<div style="margin: 10px auto 30px auto; padding: 10px; border: 2px solid #F00;">
<p><strong>【京王よみうりランド駅　特急・準特急・急行列車「臨時停車」のお知らせ】</strong><br>
2017/11/18（土）～2018/1/14（日）のうち33日間、期間限定で京王よみうりランド駅に特急・準特急・急行列車が臨時停車いたします。<br>
<p class="btnLinksBlue alC"><a href="/topic/2017/11/post-40.html"><span>詳細はこちら</span></a></p>
</div>-->
<div class="colLayout01 count1">
<figure class="col">
<img alt="" src="images/traffic1.png">
</figure>
<!--colLayout01-->
</div>
<section class="sectioning01">
<h3 class="heading03">新宿駅からのアクセス</h3>
<div class="colLayout01 count1">
<br>
<figure class="col alC">
<img alt="" src="images/traffic_im06.png">
</figure>
<!--colLayout01-->
</div>
<!--sectioning01-->
<div class="colLayout01 count1 alC">
<figure class="col">
<img alt="" src="images/traffic_im07.png">
</figure>
<!--colLayout01-->
</div>

</section>




<!--sectioning01-->
</section>
		
	
	
	
	<section id="anc02" class="sectioning01">
<h2 class="heading02">車でお越しの方</h2>
<p>【お車でご来園予定のお客様へ】</p>
<p>土日祝は駐車場が大変混雑し、遠方の臨時駐車場をご案内する場合がございます。<br>
ご来園は、周辺の道路状況に左右されない「京王線・京王よみうりランド駅⇒ゴンドラ」をお勧めいたします。<br>
●京王線「京王よみうりランド駅」下車⇒<a href="/attraction/gondola.html">ゴンドラスカイシャトル</a>で5～10分または小田急バスで5分</p>
<!--
<div style="margin: 10px auto 30px auto; padding: 10px; border: 2px solid #F00;">
<p><strong>【2019/12/14(土)～2020/1/13(月祝)限定　お得なパーク＆ライドサービスのお知らせ】</strong><br>
土日祝、クリスマス前後、年末年始は周辺道路及び駐車場が大変混雑いたしますので、長時間お待ちいただく可能性がございます。<br>
お車でお越しの際は、駅周辺の駐車場に車を停めて、電車に乗り換えてご来園いただく方法（パーク＆ライド）が便利です。<br>
<strong>提携しているタイムズパーキングにお停めいただき、よみうりランドにお越しの方には駐車料金1,000円分割引券をお渡しします。</strong>詳しくは<a href="https://www.yomiuriland.com/topic/2019/12/parking.html">こちら</a>をご確認ください。</p>
</div>
-->
<div class="colLayout01 count1 mapCol">
<figure class="col pcOnly">
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d1621.5433793894451!2d139.51733323082738!3d35.62558762856122!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0xe782eba55f33f953!2z44KI44G_44GG44KK44Op44Oz44OJ!5e0!3m2!1sja!2sjp!4v1457077866416" width="790" height="550" frameborder="0" style="border:0" allowfullscreen=""></iframe>
</figure>

<!--colLayout01-->
</div>
<ul class="iconLink01">
<li><a href="https://goo.gl/maps/V4w9WzdHiKS2" class="type-blank" target="_blank">大きな地図で見る</a></li>
</ul>
<div class="tableWrap01">
<table class="tableLayout01 type-col wFull" style="width:93%;">
<colgroup>
<col class="w45per">
<col class="w55per">
</colgroup>
<tbody>
<tr>
<th class="cellLv2">住所</th>
<td>〒206-8725 東京都稲城市 矢野口4015-1</td>
</tr>
<tr>
<th class="cellLv2">電話番号</th>
<td>044-966-1111</td>
</tr>
<tr>
<th class="cellLv2">マップコード</th>
<td>2 737 434</td>
</tr>
</tbody>
</table>
<!--tableWrap01-->
</div>
<dl class="toggleWrap02">
<dt class="toggleBtn"><a href="javascript:void(0)"><p class="heading04">新宿方面から</p></a></dt>
<dd class="togglePanel">
<p>首都高速4号線  中央高速  稲城I.C.直結  稲城大橋より　約2km</p>
</dd>
<dt class="toggleBtn"><a href="javascript:void(0)"><p class="heading04">八王子方面から</p></a></dt>
<dd class="togglePanel listIn">
<p>中央高速  府中スマートI.C.下りて稲城大橋より約2km　または調布I.C.より約5km<br>
※お帰りはETC搭載車のみ府中スマートI.C.をご利用いただけます。</p>
</dd>
<dt class="toggleBtn"><a href="javascript:void(0)"><p class="heading04">渋谷方面から</p></a></dt>
<dd class="togglePanel listIn">
<p>首都高速3号線  東名高速  川崎I.C.下りて　約8km</p>
</dd>
<dt class="toggleBtn"><a href="javascript:void(0)"><p class="heading04">厚木方面から</p></a></dt>
<dd class="togglePanel listIn">
<p>東名高速  川崎I.C.下りて　約8km<br><br>
※菅方面（生田スタジオ側）からの右折入庫はご遠慮ください。</p>
</dd>
<!--toggleWrap01-->
</dl>
<section class="sectioning01">
<h3 class="heading03">駐車場</h3>
<div class="tableWrap01">
<table class="tableLayout01 type-col wFull" style="width:93%;">
<colgroup>
<col class="w45per">
<col class="w55per">
</colgroup>
<tbody>
<tr>
<th class="cellLv2">営業時間</th>
<td>7:30～22:00</td>
</tr>
<tr>
<th class="cellLv2">料金（普通車）</th>
<td>1日1500円</td>
</tr>
<tr>
<th class="cellLv2">　　（マイクロバス以上）※中型、大型含む</th>
<td>1日2500円 (要予約※044-966-1123)</td>
</tr>
<tr>
<th class="cellLv2">　　（二輪車）</th>
<td>無料</td>
</tr>
</tbody>
</table>
<!--tableWrap01-->
</div>
                
<!--<p class="mt25" id="freepark">【期間限定　無料駐車場のご案内】<br>
5/3,4,5は駐車場の混雑が予想されるため、既存の臨時駐車場に加え、南多摩尾根幹線道路沿い・稲城中央公園総合グラウンド前に<span style=" color: #F00;">無料駐車場</span>をご用意しております(ピストンバス送迎あり(よみうりランド専用道路を使用し約20分))。<br>
尚、無料駐車場ご利用のお客様には<span style=" color: #F00;">記念品をプレゼント</span>いたします。<br>
八王子方面よりご来園のお客様は、直接マイカーで来園するよりも早くアクセスできる無料駐車場のご利用をお勧めいたします。<br>
無料駐車場営業時間　8：00~19：00（5/3.4.5のみ）</p>

<p class="mt25"><img src="/img/traffic_ph05.jpg" alt=""></p>-->

<!--sectioning01-->
</section>
<!--sectioning01-->
</section>
	
	
	
	
	
	
	
	
	
	
	
	
				
				
			</div>

</div>


<%@ include file="../footer.jsp"%>