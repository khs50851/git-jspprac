<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">会員加入</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">よみうりランド</li>
				<li class="freeboard.jsp">会員加入</li>
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
			<div class="insertarea">
	<form name="my" method="post" action="memberinsertpro.do" onsubmit="return check();">
		<table class="tb_style2">
			<tbody>
				<tr class="socialForm">
					<th>ID<span>*</span></th>
					<td><input type="text" id="id" name="id"
						class="wsize3 vertim width60"> 
						  <span class="check_font width60" id="idCheck" style="color:#f00;"></span>
						   <span class="check_font width60" id="idCheck2" style="color:#0f0;"></span>
					<!--  	<input type="button" class="btn-default bg-gray2" value="중복확인" style="cursor:pointer;" onclick="idCheck();">
						<input type="hidden" name="rid">-->
						</td>
				</tr>
				<tr class="socialForm">
					<th>パスワード<span>*</span></th>
					<td><input type="password" id="pw1" name="pw1"
						class="wsize3 vertim width60"> <span class="ex_txt"></span></td>
				</tr>
				<tr class="socialForm">
					<th>パスワード確認<span>*</span></th>
					<td>
					<input type="password" id="pw2" name="pw2" class="wsize3 width60">
					 <span class="check_font" id="pwCheck" style="color:#f00;"></span>
					 <span class="check_font" id="pwCheck2" style="color:#0f0;"></span>
					</td>
				</tr>
				<tr>
					<th>名前<span>*</span></th>
					<td><input type="text" id="name" name="name" class="wsize3 width60"
						></td>
				</tr>
				<tr>
					<th>住民登録番号<span>*</span></th>
					<td>
					<input type="text" id="birth" name="birth" class="wsize2 vertim width60">-
						<input type="password" id="birth" name="birth1" class="wsize2 vertim width60">
							</td>
				</tr>

				<tr>
					<th>メール<span>*</span></th>
					<td><input type="text" id="email" name="email"
						class="wsize2 width60">
						
						<input class="btn btn-default btn_sendemail" id="btn_email" type="button" value="メール送信" style="padding:13.5px 11px;">
						
						 </td>
						
				</tr>
				<tr>
				<th>認証番号</th>
				<td>
				<input name="certinumber" id="certinumber" type="text"
					placeholder="認証番号入力">
					<span class="check_font" id="ctCheck" style="color:#f00;"></span>
					<span class="check_font" id="ctCheck2" style="color:#0f0;"></span>
				</td>
				</tr>
				
				<tr>
					<th>携帯電話<span>*</span></th>
					<td>
					
						<select id="tel" name="tel1" style="width:20%;" class="wsize1 width60">
									<option value="010">010</option>
		 							<option value="011">011</option>
									<option value="017">017</option>
									<option value="019">019</option>
							</select>
						-
						<input type="text" id="tel" name="tel2" style="width:20%;"
						class="wsize1 width60" >-
						<input type="text" id="tel" name="tel3" style="width:20%;"
						class="wsize1 width60" >
						</td>
				</tr>
			

				<tr>
				<th>住所</th>
					<td><input type="text" id="address" name="address" style="width:100%;"
						class="wsize4" placeholder="基本アドレス入力">
					</td>
				</tr>
				
				<tr>
				
				<td class="btd" colspan="2">
				<input type="submit" class="btn btn-success" value="등록" id="btn_ok">
				<input type="button" class="btn btn-success btcn" value="취소" onclick="cancel();">
				</td>
				
				</tr>
			</tbody>
		</table>

</form>
</div>
</div>
</div>





<script>
	function check(){
		if(my.id.value==""){
			alert('IDを入力してください。');
			my.id.focus();
			return false;
		}
		if(my.pw1.value==""){
			alert('パスワードを入力してください。');
			my.pw1.focus();
			return false;
		}
		if(my.pw2.value==""){
			alert('パスワード確認を入力してください。');
			my.pw2.focus();
			return false;
		}
		if(my.pw1.value != my.pw2.value){
			alert("パスワードとパスワード確認が一致しません。");
			my.pw1.focus();
			return false;
		}
		
		if(my.name.value==""){
			alert('名前を入力してください。');
			my.name.focus();
			return false;
		}
		

		
		var email = document.getElementById("email").value;
		var emailpattern = /^[A-Za-z0-9_\.\-]+@[A-Za-z0-9_\.\-]+\.[A-Za-z0-0\-]+/;
		
		if(emailpattern.test(email)==false){
			alert('メールの形式が正しくありません。');
			my.email.focus();
			return false;
		}
		if(my.tel2.value==""){
			alert('連絡先を入力してください。');
			my.tel2.focus();
			return false;
		}
		if(my.tel3.value==""){
			alert('連絡先を入力してください。');
			my.tel3.focus();
			return false;
		}
		if(my.address.value==""){
			alert('住所を入力してください。');
			my.address.focus();
			return false;
		}

	
		return true;
	}
</script>

<script>
$(function(){
	$('#pw2').blur(function(){
		if(my.pw1.value != my.pw2.value){
			$("#pwCheck2").empty();
			$("#pwCheck").text("パスワードが一致しません。")
			my.pw1.focus();
			
		}else{
			$("#pwCheck").empty();
			$("#pwCheck2").text("パスワードが一致しています。")
		}
		
	})
})

</script>

<script>
		$(function(){
			$('#id').blur(function(){
				$.ajax({
					type:"post",
					dataType:"json",
					data:{id:$("#id").val()},
					async:false,
					url:"checkUserID.do",
					success:function(data){
						
						if($("#id").val() != ""){
							if(data.result == -1){
								$("#idCheck").empty();
								$("#idCheck2").text("素敵なアイデアですね^^")
							}else{
								$("#idCheck2").empty();
								$("#idCheck").text("重複しているIDです。")
								$("#id").val('');
							}
						}else{
						
							$("#idCheck").text("IDを入力してください。")
						}
					},error:function(){
						
					}
					
				})
				
			})
		})
		
		
		$(function(){
			$("#btn_email").on("click",function(){
				var email = $("#email").val();
				if(email == ""){
					alert("メールアドレスを入力してください。")
					$("#email").focus();
				}else{
					$.ajax({
						type : "post",
						dataType : "json",
						async : false,
						data : {"email":email},
						url : "sendemail.do",
						success : function(data){
							
								alert(data.msg1);
							
						},
						error : function(){
							alert("회원가입 정보가 없습니다");
						}
						
						
						
					})
				}
				
				
			})
			
			
			
		})	
		
		
		$(function(){
			$('#certinumber').blur(function(){
				if($('#certinumber').val() == ""){
					$("#ctCheck").text("認証番号を入力してください。")
					$("#certinumber").focus();
				}else{
				$.ajax({
					type:"post",
					dataType:"json",
					data:{certinumber:$("#certinumber").val()},
					async:false,
					url:"certicompare.do",
					success:function(data){
						
						
							if(data.check == "ok"){
								$("#ctCheck").empty();
								$("#ctCheck2").text("認証番号一致")
							}else{
								$("#ctCheck2").empty();
								$("#ctCheck").text("認証番号の不一致")
								$("#certinumber").val('');
							}
						
						
					},error:function(){
						
					}
					
				})
				}
			})
		})
		
		
		
		
	
	</script>



<script>
	function cancel(){
		alert("取り消されました");
		location.href="main.do";
	}
</script>


<%@ include file="../footer.jsp"%>
