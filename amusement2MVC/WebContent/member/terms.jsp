<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ include file="../header.jsp"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>約款同意</title>
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="</script'>http://code.jquery.com/jquery-1.10.2.js"></script>
  <script src="</script'>http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

</head>
<body>
<!-- start container -->
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">約款同意</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">よみうりランド</li>
				<li class="freeboard.jsp">約款同意</li>
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

<form action="memberinsert.do" method="get" id="form1">
<div id="d1">
 <h2 align="center">会員加入を歓迎します。</h2><br/><br/>
  <tr>
   <td align="left"><font size="2">利用約款、個人情報収集及び利用、位置情報利用約款(選択)、プロモーション案内メールの受信(選択)すべてに同意します。</font></td>
 
   <td><input type="checkbox" name="all" id="all"></td><hr/>
  </tr>
 <div id="accordion">
  
   <h3><a href="#"><font size="2">よみうりランド利用約款に同意(必須)</font><input type="checkbox" name="c1" id="c1"/></a></h3>
   <td><textarea readonly="readonly" rows="5" cols="66">
第1条（目的）

本約款は、ネイバー株式会社(「会社」又は「ネイバー」)が提供するネイバー及びネイバー関連諸サービスの利用に関連し、会社と会員との権利、義務及び責任事項、その他必要事項を規定することを目的とします。


第2条(定義)

本約款で使用される用語の定義は、次のとおりです。
①「サービス」とは、実装されるデバイス(PC、TV、携帯型端末など各種有線·無線デバイスを含む)に関わらず、「会員」が利用できるNAVER及びNAVERに関する諸サービスをいいます。
②「会員」とは、会社の「サービス」にアクセスし、本約款に基づいて「会社」と利用契約を締結し、「会社」が提供する「サービス」を利用する顧客をいいます。
③「ID」とは、「会員」の識別と「サービス」の利用のために「会員」が定め、「会社」が承認する文字と数字の組み合わせを意味します。
④「パスワード」とは、「会員」が付与された「ID」と一致する「会員」であることを確認し、秘密保護のため「会員」自身が定めた文字または数字の組み合わせを意味します。
⑤ 「有料サービス」とは、「会社」が有料で提供する各種オンラインデジタルコンテンツ(各種情報コンテンツ、VOD、アイテム、その他の有料コンテンツを含む)及び諸サービスをいいます。
⑥「ポイント」とは、サービスの効率的な利用のために会社が任意に策定または支給、調整できる財産的価値のない「サービス」上の仮想データを意味します。
⑦「掲示物」とは、「会員」が「サービス」を利用するにあたり、「サービス上」に掲示した符号·文字·音声·音響·画像·動画等の情報形態の文章、写真、動画及び各種ファイルとリンク等をいいます。
   </textarea>
   <h3><a href="#"><font size="2">個人情報の収集·利用についての案内(必須)</font><input type="checkbox" name="c2" id="c2"/></a></h3>
   <div>
     <textarea readonly="readonly" rows="5" cols="66">

情報通信網法の規定に基づき、NAVERに会員登録を申請される方に収集する個人情報の項目、個人情報の収集及び利用目的、個人情報の保有及び利用期間を案内しますので、詳細をお読みの上同意してください。


1.収集する個人情報

利用者は会員登録をしなくても、情報検索、ニュース表示などほとんどのネイバーサービスを会員と同様に利用できます。 利用者が、メール、カレンダー、カフェ、ブログなどの個人化または会員制サービスの利用のために会員登録をする場合、NAVERはサービスの利用のために必要最小限の個人情報を収集します。
 
   </textarea>
   </div>
   <h3><a href="#"><font size="2">位置情報利用約款に同意(選択)</font><input type="checkbox" name="c3" id="c3"/></a></h3>
   <div>
     <textarea readonly="readonly" rows="5" cols="66">

位置情報利用約款に同意すると、位置を活用した広告情報の受信などを含むNAVER位置基盤サービスを利用できます。


第1条（目的）
本約款は、ネイバー株式会社(以下、「会社」という。)が提供する位置情報事業または位置基盤サービス事業と関連し、会社と個人位置情報主体との権利、義務および責任事項、その他必要事項を規定することを目的とします。


第2条(約款外準則)
本約款に明示されていない事項は位置情報の保護および利用などに関する法律、情報通信網利用促進および情報保護などに関する法律、電気通信基本法、電気通信事業法などの関係法令と会社の利用約款および個人情報取扱方針、会社が別途に定めた指針などに基づきます。


第3条(サービス内容及び料金)
①会社は直接位置情報を収集したり、位置情報事業者である移動通信社から位置情報を受けて、次のような位置情報基盤サービスを提供します。 1.GeoTaggingサービス:投稿登録時点の個人位置情報主体の位置情報を投稿と一緒に保存します。
2.位置情報を活用した検索結果提供サービス:情報検索を要請したり、個人位置情報主体または移動性のある機器の位置情報を提供する場合、本位置情報を利用した検索結果および周辺結果(グルメ店、周辺企業、交通手段など)を提示します。
3.位置情報を活用した友達探しと友達作り:現在の位置を活用して友達を探すか、友達を推薦してくれます。
4.連絡先を交換する:位置情報を活用して友達と連絡先を交換できます。
5.現在位置を活用した広告情報提供サービス:広告情報の提供要請時、個人位置情報主体の現在位置を利用して広告素材を提示します。
6.利用者の保護及び不正利用の防止:個人位置情報主体又は移動性のある機器の位置を利用し、権限のない者の非正常なサービス利用の試みなどを遮断します。
 </textarea>
   </div>
 </div>
  <tr>
   <td align="left"><font size="2">イベントなどのプロモーション通知メール受信(選択)</font></td>
   <td><input type="checkbox" name="c4" id="c4"></td><hr/>
  </tr>
 
 <div align="center">
  <br/>
  <input type="submit" value="同意">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" class="btn btn-success ae" value="非同意">
  <br/>
 </div>
</div>
</form>
				
				
				
				
			</div>

</div>






<script>
	var doc = document; 
	var form1 = doc.getElementById('form1'); 
	var inputs = form1.getElementsByTagName('INPUT'); 
	var form1_data = {
		"c1": false, 
		"c2": false, 
		"c3": false
	}; 

	var c1 = doc.getElementById('c1'); 
	var c2 = doc.getElementById('c2'); 
	var c3 = doc.getElementById('c3'); 

	function checkboxListener() {
		form1_data[this.name] = this.checked; 

		if(this.checked) {
			// submit 할때 체크하지 않아 색이 변한 font 를 다시 원래 색으로 바꾸는 부분. 
			this.parentNode.style.color = "#000"; 
		}
	}


		c1.onclick = c2.onclick = c3.onclick = checkboxListener; 

		var all = doc.getElementById('all'); 

		all.onclick = function() {
			if (this.checked) {
				setCheckbox(form1_data, true); 
			} else {
				setCheckbox(form1_data, false); 
			}
		}; 


		function setCheckbox(obj, state) {
			for (var x in obj) {
				obj[x] = state; 

				for(var i = 0; i < inputs.length; i++) {
					if(inputs[i].type == "checkbox") {
						inputs[i].checked = state; 
					}
				}

			}
		}


	/*all.onclick = function() {
		if (this.checked) {
			for (var x in form1_data) {
				form1_data[x] = true; 
				for(var i = 0; i < inputs.length; i++) {
					if(inputs[i].type == "checkbox") {
						inputs[i].checked = true; 
					}
				}
			}
		} else {
			for (var x in form1_data) {
				form1_data[x] = false; 
				for(var i = 0; i < inputs.length; i++) {
					if(inputs[i].type == "checkbox") {
						inputs[i].checked = false; 
					}
				}
			}
		}
	}; */


	form1.onsubmit = function(e) {
		e.preventDefault(); // 서브밋 될때 화면이 깜빡이지 않게 방지

		if ( !form1_data['c1'] ) {
			alert('よみうりランドの利用約款に同意しませんでした。'); 
			c1.parentNode.style.color = 'red'; 
			return false; 
		}

		if ( !form1_data['c2'] ) {
			alert('個人情報収集及び利用に関する案内が選択されていません。'); 
			return false; 
		}

		this.submit(); 
	}; 
</script>

<script>
  $(function() {
    $( "#accordion" ).accordion();
    $('#accordion input[type="checkbox"]').click(function(e) {
        e.stopPropagation();
    });
  });
  </script>
</body>
</html>
<%@ include file="../footer.jsp"%>