<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>





<div id="carousel-example-generic" class="carousel slide"
	data-ride="carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#carousel-example-generic" data-slide-to="0"
			class="active"></li>
		<li data-target="#carousel-example-generic" data-slide-to="1"></li>
		<li data-target="#carousel-example-generic" data-slide-to="2"></li>
		<li data-target="#carousel-example-generic" data-slide-to="3"></li>
	</ol>

	<!-- Wrapper for slides -->
	<div class="carousel-inner" role="listbox">
		<div class="item active">
			<img src="images/mainb3.jpg" alt="요미우리랜드배너1" class="img-responsive">
			<div class="carousel-caption"></div>
		</div>
		<div class="item">
			<img src="images/mainb2.jpg" alt="요미우리랜드배너2" class="img-responsive">
			<div class="carousel-caption"></div>
		</div>
		<div class="item">
			<img src="images/mainb1.jpg" alt="요미우리랜드배너3" class="img-responsive">
			<div class="carousel-caption"></div>
		</div>
		<div class="item">
			<img src="images/mainb4.jpg" alt="요미우리랜드배너4" class="img-responsive">
			<div class="carousel-caption"></div>
		</div>


	</div>

	<!-- Controls -->
	<a class="left carousel-control" href="#carousel-example-generic"
		role="button" data-slide="prev"> <span
		class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
		class="sr-only">Previous</span>
	</a> <a class="right carousel-control" href="#carousel-example-generic"
		role="button" data-slide="next"> <span
		class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span
		class="sr-only">Next</span>
	</a>
</div>
<div class="container-fluid">
<div class="col-md-offset-2">
	<div class="container titleArea">
		<div class="low">
			<div class="col-md-12 tit1">
				<hr>
				<h2 class="tit text-center">
					よみうりランド<span>&amp;</span>EVENT
				</h2>
				<hr>
				<p class="stxt  text-center">よみうりランドで行われているイベントをご紹介します。</p>
			</div>
		</div>
	</div>
	</div>
</div>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBwlNqAEil52XRPHmSVb4Luk18qQG9GqcM&sensor=false&language=kr"></script> 
<script> 
function initialize() { 
var myLatlng = new google.maps.LatLng(37.294076, 127.202583); // 좌표값 35.623201, 139.519531
  var mapOptions = { 
        zoom: 16, // 지도 확대레벨 조정
        center: myLatlng, 
        mapTypeId: google.maps.MapTypeId.ROADMAP 
  } 

  var map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions); 
  var marker = new google.maps.Marker({ 
position: myLatlng, 
map: map, 
title: "요미우리" // 마커에 마우스를 올렸을때 간략하게 표기될 설명글
}); 
  } 
window.onload = initialize;
</script>

<script>
	$(document).ready(function() {
		$(".mimage1").hover(function() {
			$(this).toggleClass('cn');
		});
	});
</script>

<script>
	$(".hover").mouseleave(function() {
		$(this).removeClass("hover");
	});
</script>

<div class="container-fluid padd120 bg03">
	<div class="container">
		<div class="low contents1">
			<div class="col-md-4 main1">
				<div class="mimage1">
					<figure class="snip1283">
						<img src="images/pi4.png" alt="sample70" />
						<figcaption>
							<h3>EVENT</h3>
							<p>よみうりランドでいろんなイベントをお楽しみください！</p>
							<a href="event.do" class="read-more">Read More</a>
						</figcaption>
					</figure>
				</div>

			</div>
			<div class="col-md-4 main1">
				<div class="mimage1">
					<figure class="snip1283">
						<img src="images/pi5.png" alt="sample70" />
						<figcaption>
							<h3>アトラクション</h3>
							<p>様々なアトラクションで楽しさは2倍！</p>
							<a href="ride.do" class="read-more">Read More</a>
						</figcaption>
					</figure>
				</div>

			</div>
			<div class="col-md-4 main1">
				<div class="mimage1">
					<figure class="snip1283">
						<img src="images/pi6.png" alt="sample70" />
						<figcaption>
							<h3>自由掲示板に移動</h3>
							<p>様々な人とコミュニケーションしてみてください！</p>
							<a href="bbs.do" class="read-more">Read More</a>
						</figcaption>
					</figure>
				</div>

			</div>
			
		</div>
	</div>
</div>
<!-- end 1st content -->

<div class="container-fluid padd120 bg01">
	<div class="container">
		<div class="low">
			<div class="col-md-7 tnarea1">
				<div class="tnarea2">
					<h4 class="tnews">
						<a href="#">お知らせ</a>
					</h4>
					<p class="tmore">
						<button type="button" class="btn btn-info" onclick="location.href='notice.do'">一覧</button>



					</p>
				</div>

				<div class="boarda">
					<div class="bt">
						<h5 class="b_sub">
							<a href="noticeview.do?bno=${nvo1.bno }&pageNum=1&amount=10">${fn:substring(nvo1.title,0,20)}...</a>
						</h5>
						<p class="b_txt">${fn:substring(nvo1.content,0,100)}...
						</p>
					</div>
					<div class="bdate">
						<p class="b_d">${fn:substring(nvo1.regdate,8,10)}</p>
						<p class="b_ym">${fn:substring(nvo1.regdate,0,7)}</p>
					</div>
				</div>

				<div class="readmore">
					<p>
						<a href="noticeview.do?bno=${nvo1.bno }&pageNum=1&amount=10">Read More</a>
					</p>
				</div>

				<div class="boarda" style="padding-top: 30px;">
					<div class="bt">
						<h5 class="b_sub">
							<a href="noticeview.do?bno=${nvo2.bno }&pageNum=1&amount=10">${fn:substring(nvo2.title,0,20)}...</a>
						</h5>
						<p class="b_txt">
						${fn:substring(nvo2.content,0,100)}...
						</p>
					</div>
					<div class="bdate2">
						<p class="b_d">${fn:substring(nvo2.regdate,8,10)}</p>
						<p class="b_ym">${fn:substring(nvo2.regdate,0,7)}</p>
					</div>
				</div>

				<div class="readmore">
					<p>
						<a href="noticeview.do?bno=${nvo2.bno }&pageNum=1&amount=10">Read More</a>
					</p>
				</div>

			</div>


			<div class="col-md-5 oarea">
				<div class="operatingarea">
					<div class="op">
						<div class="o_title">
							<span> 営業 <br> 時間
							</span>
						</div>
						
						<%
						Date nowTime = new Date();
						SimpleDateFormat sf = new SimpleDateFormat("MM");
						SimpleDateFormat sf2 = new SimpleDateFormat("dd");

						
						%>
						
						<div class="o_info1">
							<p class="o_md"><%=sf.format(nowTime) %>.<%=sf2.format(nowTime) %></p>
							<p class="o_w">(${today })</p>
						</div>
						<div class="o_info2">
							<p>午前 9:30 ~ 午後 6:00</p>
						</div>
					</div>

					<div class="o_barea">
						<div class="quick_btn btn01">
							<i class="fa fa-yelp fa-3x" aria-hidden="true"></i> <a href="payment.do">利用料金</a>
						</div>
						<div class="quick_btn btn02">
							<i class="fa fa-map-marker fa-3x" aria-hidden="true"></i> <a
								href="trafficinfo.do">交通アクセス</a>
						</div>
						<div class="quick_btn btn03">
							<i class="fa fa-calendar fa-3x" aria-hidden="true"></i> <a
								href="payment.do">&nbsp;&nbsp;&nbsp;&nbsp;前売</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end 2nd content -->
</div>

<div class="container lastarea">
	<div class="low">
		<div class="col-md-4 csarea">
			<div class="cstxt">
				<p>CS CENTER</p>
				<h4>044-966-2222</h4>
			</div>
			<div class="snsicon">
			
<a href="https://ja-jp.facebook.com/yomiuriland/">
				<div class="snsbtn icon1">
					 <i class="fa fa-facebook fa-2x" aria-hidden="true"></i>
					
				</div>
</a>
<a href="https://twitter.com/yomiuriland_com?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor">
				<div class="snsbtn icon2">
					 <i class="fa fa-twitter fa-2x" aria-hidden="true"></i>
					
				</div>
				</a>
				<a href="https://www.instagram.com/yomiuriland/?hl=ja">
				<div class="snsbtn icon3">
					 <i class="fa fa-instagram fa-2x" aria-hidden="true"></i>
					
				</div>
				</a>
			</div>

		</div>
		<div class="col-md-4 loarea">
			<div class="lotxt">
				<p>LOCATION</p>
			</div>
			<div id="map_canvas" style="width: 100%; height: 400px; margin: 0px;">
			</div>

		</div>
		<div class="col-md-4 varea">
			<div class="vareatxt">
				<p>VIDEO</p>
			</div>

			<!-- 16:9 aspect ratio -->
			<div class="embed-responsive embed-responsive-16by9">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/r7dzIG7VGhg" frameborder="0"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>
		</div>

	</div>
</div>






<!-- end 3rd content -->

<%@ include file="footer.jsp"%>
<c:choose>
<c:when test="${result == 1}">
<script>
	alert("会員登録が完了しました！");
	location.href="main.do";
</script>

</c:when>

<c:when test="${result2 == 1}">
<script>
	alert("会員情報が修正されました！");
	location.href="main.do";
</script>

</c:when>



<c:when test="${result3 == 1}">
<script>
	alert("パスワードが変更されました！");
	location.href="main.do";
</script>

</c:when>

<c:when test="${payresult == 1}">
<script>
 alert('予約が完了しました！');
 location.href="main.do";
 </script>
 </c:when>
 
 <c:when test="${rt == 1}">
<script>
 alert('自由掲示板に投稿が登録されました！');
 location.href="main.do";
 </script>
 </c:when>
 
  <c:when test="${resresult == 1}">
<script>
 alert('予約履歴がキャンセルされました！');
 location.href="main.do";
 </script>
 </c:when>
</c:choose>






<!--  
<c:set var = "ok" value="${updateok}"/>

<c:if test="${ok==1}">
<script>
	alert("${message}");
</script>
</c:if>

-->






