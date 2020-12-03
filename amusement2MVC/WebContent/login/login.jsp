<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!-- start container -->
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">ログイン</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">よみうりランド</li>
				<li class="freeboard.jsp">ログイン</li>
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
				<div class="loginArea">
					<div class="loginField">
							<form name="login" id="frmlogin" class="userForm" method="post" action="loginpro.do">
								
								
										<p>
										<input type="text" id="userName" name="id"
											placeholder="ID">
										</p>

									<p>
									<input type="password" id="pw" name="pw"
											placeholder="パスワード">
								</p>
								
							</form>
						
							<div class="login_btn">
								<a href="javascript:fn_login();">ログイン</a>
							</div>
						
						<div class="etcLink">
							<ul>
								<li class="idid1"><a href="findid.do">ID検索</a></li>
								<li class="idid2"><a href="findpw.do">PWさがし</a></li>
								<li class="idid2"><a href="terms.do">会員加入</a></li>
							</ul>
						</div>
						 
					</div>
					<!--
					<a id="kakao-login-btn"></a>	
				<a href="kakaologout.do">카카오로그아웃</a>
				 -->
				</div>
				
				
			</div>

</div>

<script>
function fn_login(){
	
	login.submit();
}

</script>



<c:if test="${not empty message }">
	<script>
		alert("IDまたはパスワードを確認してください！");
		location.href="login.do";
	</script>
</c:if>

<%
	session.removeAttribute("message");

%>
<!-- 

<script>
Kakao.init('d99df573cd383ea18bd9725a82b44183');

Kakao.Auth.createLoginButton({
    container: '#kakao-login-btn',
    success: function(authObj) {
   alert(JSON.stringify(authObj));
    },
    fail: function(err) {
    alert(JSON.stringify(err));
    }
  });







function linkUser(session, provider, authData) {
	  let result = false;
	  if (session.authData) {
	    if (session.authData[provider]) {
	      // 이미 계정에 provider 가 연결되어 있는 경우
	      return result;
	    }

	    session.authData[provider] = authData;
	  } else {
	    session.authData = {
	      [provider]: authData
	    };
	  }

	  result = true;

	  return result;
	}


router.get("/callback", async (req, res) => {
	  const { session, query } = req;
	  const { code } = query;

	  console.info("==== session ====");
	  console.log(session);

	  let tokenResponse;
	  try {
	    // Authorization Server 부터 Access token 발급받기
	    tokenResponse = await axios({
	      method: "POST",
	      url: 'https://kauth.kakao.com/oauth/token',
	      headers: {
	        "content-type": "application/x-www-form-urlencoded"
	      },
	      data: qs.stringify({
	        grant_type: "authorization_code",
	        client_id: kakao.clientID,
	        client_secret: kakao.clientSecret,
	        redirect_uri: kakao.redirectUri,
	        code
	      })
	    });
	  } catch (error) {
	    return res.json(error.data);
	  }
	  
	  
	  console.info("==== tokenResponse.data ====");
	  console.log(tokenResponse.data);

	  const { access_token } = tokenResponse.data;

	  let userResponse;
	  try {
	    // access_token 으로 사용자 정보 요청하기
	    userResponse = await axios({
	      method: "GET",
	      url: "https://kapi.kakao.com/v2/user/me",
	      headers: {
	        Authorization: `Bearer ${access_token}`
	      }
	    });
	  } catch (error) {
	    return res.json(error.data);
	  }

	  console.info("==== userResponse.data ====");
	  console.log(userResponse.data);

	  const authData = {
	    ...tokenResponse.data,
	    ...userResponse.data
	  };

	  const result = linkUser(session, "kakao", authData);

	  if (result) {
	    console.info("계정에 연결되었습니다.");
	  } else {
	    console.warn("이미 연결된 계정입니다.");
	  }

	  res.redirect("/");
	});
	
	
	






</script>
 -->
<%@ include file="../footer.jsp"%>