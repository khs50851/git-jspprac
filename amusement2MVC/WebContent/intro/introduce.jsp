<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!-- start container -->
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">よみうりランド紹介</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">よみうりランド?</li>
				<li class="freeboard.jsp">よみうりランド紹介</li>
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
				
				
				<div class="b-lead">
        <p class="b-lead__text">新宿から約35分！！ 春は桜、夏はプール、冬はイルミネーション、子供から大人まで一年中楽しめる東京都内最大の遊園地、よみうりランドへようこそ！</p>
        <div class="b-video">
          <iframe width="560" height="315" src="https://www.youtube.com/embed/mCio6RalqQI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen=""></iframe>
        </div>
      </div>
				
				
				<div class="b-category b-category--watch">
        <div class="b-category__inner">
          <div class="b-category__title">
            <h2 class="b-category__titleText">ジュエルミネーション</h2>
          </div><img class="b-category__image" src="images/intro1.jpg">
          <p class="b-category__text">よみうりランドでは関東最大級のイルミネーション「ジュエルミネーション」を開催します。 国内屈指の規模を誇る噴水ショーや流れ星のように夜空を疾走するコースター「スターライダーBandit」、都心のパノラマ夜景が一望できる観覧車など夜の限定ショーやアトラクションが人気です。 きらきら輝く宝石色の遊園地をご期待ください。</p>
        </div>
      </div>
				
				
		<div class="b-category b-category--experience">
        <div class="b-category__inner">
          <div class="b-category__title">
            <h2 class="b-category__titleText">Goodjoba‼</h2>
          </div><img class="b-category__image" src="images/intro2.jpg">
          <p class="b-category__text">よみうりランドの「Goodjoba!!」」はものづくりをテーマにしたエリアです。 日常生活に密着した身近な自動車、食品、ファッション、文房具の4種類のアクセサリーで構成されています。</p>
          <p class="b-category__text">既存の遊園地とは違ってアトラクションに乗りながらものづくりについて知ることができ、東京での家族旅行にぴったりです！ また、各factoryでは毎日ワークショップが開催され、制作体験も可能です！</p>
        </div>
      </div>		
				
				
		<div class="b-category b-category--swim">
        <div class="b-category__inner">
          <div class="b-category__title">
            <h2 class="b-category__titleText">フルWAI</h2>
          </div><img class="b-category__image" src="images/intro3.jpg">
          <p class="b-category__text">砂浜をイメージした海辺やヤシの木など、白い砂浜のような野外プール！ 東京にいるけど南国気分♪よみうりランドの「フルWAI」で思いっきり水遊びを楽しもう！</p>
          <p class="b-category__text">プールの人気の流水プールから本格的なダイビングプールまで多様なプールがあり、スリル満点のスライダーもあります！ 5つのプールと3種類のスライダー、時間が足りないくらい遊べます！</p>
        </div>
      </div>		
				
				
				
				
				
				
				
				
			</div>

</div>



<%@ include file="../footer.jsp"%>