<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>	
<%@ page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>




<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 위 3개의 메타 태그는 *반드시* head 태그의 처음에 와야합니다; 어떤 다른 콘텐츠들은 반드시 이 태그들 *다음에* 와야 합니다 -->
<title>よみうりランドへようこそ</title>

<!-- 부트스트랩 -->
<link href="http://localhost:7778/amusement2/css/bootstrap.min.css" rel="stylesheet">

<script src="https://use.fontawesome.com/63ce0f626c.js"></script>
<link rel="stylesheet"	href="path/to/font-awesome/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css2?family=Sawarabi+Mincho&display=swap" rel="stylesheet">    
    
    
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBwlNqAEil52XRPHmSVb4Luk18qQG9GqcM&sensor=false&language=kr"></script>
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">







 <script src='http://code.jquery.com/jquery-3.1.1.min.js'></script>
 <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/user.js"></script>
 
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

  
<link href="css/layout.css" rel="stylesheet">
 
<!-- IE8 에서 HTML5 요소와 미디어 쿼리를 위한 HTML5 shim 와 Respond.js -->
<!-- WARNING: Respond.js 는 당신이 file:// 을 통해 페이지를 볼 때는 동작하지 않습니다. -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    

	



</head>

<body>
	<div class="container-fluid ppp">
	<div class="container aaa">
	<div class="col-md-4 pull-right padd15">
	<div class="padd12">
	
		<c:choose>
			<c:when test="${empty userid }">	
				<a href="login.do">ログイン</a>|
				<a href="terms.do">会員加入</a>|
			</c:when>
			<c:when test="${not empty userid}">	
				<a href="logout.do">ログアウト</a>|
				<a href="memberupdate.do?id=${userid}">マイページ</a>|
			</c:when>	
		</c:choose>	
				<a href="https://www.yomiuriland.com/pdf/yomiuriland_guidemap.pdf">一目で見ること</a>
				</div>
				</div>
			</div>
			
	</div>		
			
	<nav class="navbar navbar-default nbd1">
	
		<div class="container-fluid">
		
		<div class="col-md-offset-2">
			<h1 class="logoo">
			<a class="navbar-brand" href="main.do"><img src="images/logona.png">
			</a>
			</h1>
		</div>

			<div class="container padd10 bbb"
				style="padding-top: 20px; padding-bottom: 10px;">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					
				</div>


				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse"
					id="bs-example-navbar-collapse-1">
					
					<ul class="nav navbar-nav navbar-right">

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">よみうりランド？
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="introduce.do">よみうりランド紹介</a></li>
								<li><a href="trafficinfo.do">交通アクセス</a></li>
								<li><a href="notice.do">お知らせ</a></li>
						
							</ul></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">アトラクション
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="ride.do">アトラクション</a></li>
							
							</ul></li>

						
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">顧客の意匠
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
							
					
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">利用情報<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
							<li><a href="payment.do">利用権予約</a></li>
								<li><a href="javascript:void(0);" onclick="fn_resvcf();" >予約確認</a></li>
								<c:if test="${userid=='admin' }">
								<li><a href="cuslist.do">予約顧客リスト</a></li>
								<li><a href="cuslist2.do">会員名簿</a></li>
								</c:if>
								<li><a href="bbs.do">自由掲示板</a></li>
							</ul></li>
					</ul>



				</div>
				<!-- /.navbar-collapse -->
			</div>
		</div>
		<!-- /.container-fluid -->
	</nav>
	
	

	<!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요합니다) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<!-- 모든 컴파일된 플러그인을 포함합니다 (아래), 원하지 않는다면 필요한 각각의 파일을 포함하세요 -->
	<script src="js/bootstrap.min.js"></script>
	
	
	<script>
	function fn_resvcf(){
		<%
			String id1 = (String)session.getAttribute("userid"); 
			if(id1==null){
				%>
				alert('로그인이 필요한 페이지입니다');
				location.href="login.do";
			<%	
			}else{
				%>
				location.href="resvcheck.do";
				<%
			}
		%>
		
	}
	
	
</script>
	
	
</body>
</html>




