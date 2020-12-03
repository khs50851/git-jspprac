<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../header.jsp"%>

<!-- start container -->
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">アトラクション</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">アトラクション</a></li>
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




	<div class="col-md-9" style="padding-bottom:40px;">
		<hr class="hr">




		<!-- Control buttons -->
		<div id="myBtnContainer coco2">
			<button class="btn3 active3" onclick="filterSelection('all')">
				全て</button>
			<button class="btn3" onclick="filterSelection('cars')">ワンデーパス</button>
			<button class="btn3" onclick="filterSelection('animals')">
				お子様向け</button>
			<button class="btn3" onclick="filterSelection('fruits')">
				小雨でもOK</button>
			<button class="btn3" onclick="filterSelection('colors')">
				各種パス不可</button>
		</div>

		<!-- The filterable elements. Note that some have multiple class names (this can be used if they belong to multiple categories) -->
		<div class="coco1">


			<div class="col-md-4">
				<div class="filterDiv cars">
					<figure class="attractionImage">
						<img alt="" src="images/at01.jpg">
					</figure>
					<h3 class="zoneName">マイレーシング</h3>
					<dl>
						<dt>400円</dt>
						<dd>
							【運転席】身長110cm以上<br>【助手席】身長90cm以上 <br><br><br><br><br><br><br>
						</dd>
					</dl>
				</div>
			</div>


			<div class="col-md-4">
				<div class="filterDiv cars">
					<figure class="attractionImage">
						<img alt="" src="images/at02.jpg">
					</figure>
					<h3 class="zoneName">カスタムガレージ</h3>
					<dl>
						<dt>1000円</dt>
						<dd>身長90cm以上　110cm未満要付添<br>小学生未満要付添<br>※小学生未満もしくは身長110cm未満の方1名に対して、中学生以上の付添が1名必要<br>VRは7歳から利用可<br>※7歳～12歳の方のVRの利用には保護者の同意が必要です。
						
						
						</dd>
					</dl>
				
				
				
				
				
				</div>

			</div>



			<div class="col-md-4">
				<div class="filterDiv cars">
		<figure class="attractionImage">
						<img alt="" src="images/at03.jpg">
					</figure>
					<h3 class="zoneName">カスタムガレージ</h3>
				
				<dl>
										<dt>300円</dt>
										<dd>2歳または身長90cm未満要付添<br>2歳以上<br>※おとなは1台につき1名まで<br><br><br><br><br><br>
										
										</dd>
									</dl>
				
				
				</div>
			</div>



			<div class="col-md-4">
				<div class="filterDiv animals">
					<figure class="attractionImage">
						<img alt="" src="images/at04.jpg">
					</figure>
					<h3 class="zoneName">カドケシとろっこ</h3>
				
				<dl>
										<dt>300円</dt>
										<dd>2歳以上、6歳未満要付添<br><br></dd>
									</dl>
		
				</div>
			</div>



			<div class="col-md-4">
				<div class="filterDiv animals">
					<figure class="attractionImage">
						<img alt="" src="images/at05.jpg">
					</figure>
					<h3 class="zoneName">えんぴつタワー</h3>
				
				<dl>
										<dt>400円</dt>
										<dd>身長110cm以上、120cm未満要付添<br><br></dd>
									</dl>
				
				</div>
			</div>



			<div class="col-md-4">
				<div class="filterDiv animals">
					<figure class="attractionImage">
						<img alt="" src="images/at06.jpg">
					</figure>
					<h3 class="zoneName">くるくるコンパス</h3>
				
				<dl>
										<dt>400円</dt>
								<dd>身長90cm以上、120cm未満要付添<br>※おとなは1台につき1名まで</dd>
									</dl>
				
				
				
				
				</div>
			</div>


			<div class="col-md-4">
				<div class="filterDiv colors">
				<figure class="attractionImage">
						<img alt="" src="images/at07.jpg">
					</figure>
					<h3 class="zoneName">スプラッシュU.F.O.</h3>
				
				<dl>
										<dt>1000円</dt>
								<dd>身長110cm以上、130cm未満要付添<br><br></dd>
									</dl>
				
				</div>
			</div>


			<div class="col-md-4">
				<div class="filterDiv colors">
				<figure class="attractionImage">
						<img alt="" src="images/at08.jpg">
					</figure>
					<h3 class="zoneName">U.F.O.バンプ！</h3>
				
				<dl>
										<dt>400円</dt>
								<dd>身長115cm以上<br><br></dd>
									</dl>
				</div>
			</div>


			<div class="col-md-4">
				<div class="filterDiv colors">
				<figure class="attractionImage">
						<img alt="" src="images/at09.jpg">
					</figure>
					<h3 class="zoneName">スピンランウェイ</h3>
				
				<dl>
										<dt>1000円</dt>
								<dd>身長110cm以上、130cm未満要付添<br>4歳以上 6歳未満要付添</dd>
									</dl>
				
				</div>
			</div>


			<div class="col-md-4">
				<div class="filterDiv fruits">
				<figure class="attractionImage">
						<img alt="" src="images/at10.jpg">
					</figure>
					<h3 class="zoneName">バンジージャンプ<br><br></h3>
				
				<dl>
										<dt>1,200円</dt>
								<dd>体重38～109kg、ウエスト～102cm<br>12歳以上 ※18歳未満は保護者の同意・同伴が必要です</dd>
									</dl>
			
				</div>
			</div>


			<div class="col-md-4">
				<div class="filterDiv fruits">
			<figure class="attractionImage">
						<img alt="" src="images/at11.jpg">
					</figure>
					<h3 class="zoneName">ジャイアントスカイリバー</h3>
				
				<dl>
										<dt>700円</dt>
							<dd>【プール営業期間中は、プールWAI専用アトラクションとなります】<br>5歳以上、10歳未満要付添</dd>
									</dl>
				
				</div>
			</div>



			

		</div>


















	</div>

</div>

<script>
	filterSelection("all")
	function filterSelection(c) {
		var x, i;
		x = document.getElementsByClassName("filterDiv");
		if (c == "all")
			c = "";
		// Add the "show" class (display:block) to the filtered elements, and remove the "show" class from the elements that are not selected
		for (i = 0; i < x.length; i++) {
			w3RemoveClass(x[i], "show");
			if (x[i].className.indexOf(c) > -1)
				w3AddClass(x[i], "show");
		}
	}

	// Show filtered elements
	function w3AddClass(element, name) {
		var i, arr1, arr2;
		arr1 = element.className.split(" ");
		arr2 = name.split(" ");
		for (i = 0; i < arr2.length; i++) {
			if (arr1.indexOf(arr2[i]) == -1) {
				element.className += " " + arr2[i];
			}
		}
	}

	// Hide elements that are not selected
	function w3RemoveClass(element, name) {
		var i, arr1, arr2;
		arr1 = element.className.split(" ");
		arr2 = name.split(" ");
		for (i = 0; i < arr2.length; i++) {
			while (arr1.indexOf(arr2[i]) > -1) {
				arr1.splice(arr1.indexOf(arr2[i]), 1);
			}
		}
		element.className = arr1.join(" ");
	}

	// Add active class to the current control button (highlight it)
	var btnContainer = document.getElementById("myBtnContainer");
	var btns = btnContainer.getElementsByClassName("btn");
	for (var i = 0; i < btns.length; i++) {
		btns[i].addEventListener("click", function() {
			var current = document.getElementsByClassName("active");
			current[0].className = current[0].className.replace(" active", "");
			this.className += " active";
		});
	}
</script>


<%@ include file="../footer.jsp"%>