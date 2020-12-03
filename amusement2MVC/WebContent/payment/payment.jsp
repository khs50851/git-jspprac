<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>

<!-- start container -->
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">利用権予約</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">よみうりランド</a></li>
				<li class="freeboard.jsp">前売</li>
				<li class="freeboard.jsp">利用権予約</li>
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
			
			<div class="middle">

	<div class="tab_desc_box">
		<form name="useForm" id="useForm" class="userForm" method="post" action="./use.do?rs=use&amp;mn=KFS_34_06_01">
			<input type="hidden" name="goodsId" id="goodsId" value="">
			<input type="hidden" name="productNo" id="productNo" value="">
			<input type="hidden" name="goodsNo" id="goodsNo" value="">
		</form>
		<div class="ticketListWrap">
			<ul>
				
					
					<li>
						<div class="ticketInfoArea ticket01">
							<a href="javascript:void(0);" class="modalUse" onclick="fn_mse1();" data-gid="8237C8461CCBE118E053C0A80835E118" data-pno="1007" data-gno="1007224000">
							<!-- <a href="javascript:alert('시스템 점검 중입니다.');" data-gid="8237C8461CCBE118E053C0A80835E118" data-pno="1007" data-gno="1007224000"> -->
								<div class="t_titleArea">
									<p>フリーパス(オンライン) <span>オンライン予約</span></p>
								</div>
								<div class="t_infoArea">
									<div class="tgroup_wrap">
										
												<div class="tgroup">
													<strong>成人</strong>
													
															<p class="dis_price">2,700<span>円</span></p>
												</div>
											
												<div class="tgroup">
													<strong>青少年</strong>
														
															<p class="dis_price">2,100<span>円</span></p>
														
												</div>
											
												<div class="tgroup">
													<strong>子供</strong>
													
														
															<p class="dis_price">1,800<span>円</span></p>
														
												</div>
											
									</div>

								</div>
							</a>
						</div>
					</li>
				
					<li>
						<div class="ticketInfoArea ticket02">
							<a href="javascript:void(0);" class="modalUse" onclick="fn_mse2();" data-gid="8237C8461CC9E118E053C0A80835E118" data-pno="1002" data-gno="1002224000">
							<!-- <a href="javascript:alert('시스템 점검 중입니다.');" data-gid="8237C8461CC9E118E053C0A80835E118" data-pno="1002" data-gno="1002224000"> -->
								<div class="t_titleArea">
									<p>入場券(オンライン) <span>オンライン予約</span></p>
								</div>
								<div class="t_infoArea">
									<div class="tgroup_wrap">
										
											
												<div class="tgroup">
													<strong>成人</strong>
														
															<p class="dis_price">1,000<span>円</span></p>
														
												</div>
												<div class="tgroup">
													<strong>青少年</strong>
													
															<p class="dis_price">600<span>円</span></p>
														
												</div>
											
												<div class="tgroup">
													<strong>子供</strong>
													
															<p class="dis_price">400<span>円</span></p>
												</div>
											
									</div>

								</div>
							</a>
						</div>
					</li>
				
			</ul>
		</div>

		<div class="useInfoWrap">
			<ul>
				<li>
					<div class="use_title">
						<h4>利用案内</h4>
						<i class="fa fa-address-card fa-4x" aria-hidden="true" ></i>
					</div>
					<div class="use_txt">
						<ul style="line-height:19px;">
							<li>満3歳未満のお子様は、オンライン予約なしで無料入場可能です。</li>
							<li>オンライン予約は、接続日を基準に当日から14日後まで使用日を指定して予約が可能です。</li>
							<li>オンライン予約はご本人様を含め、ご注文1件当たり最大10名まで可能です。</li>
							<li>団体予約は別途ご相談の上、承っております。</li>
							<li>割引対象者は、現場でお越しの際に証明書類をご持参いただくと、確認後に発券できます。</li>
						</ul>
					</div>
				</li>
				<li>
					<div class="use_title">
						<h4>払い戻し政策</h4>
						<i class="fa fa-handshake-o fa-4x" aria-hidden="true"></i>
					</div>
					<div class="use_txt">
						<!-- <p>온라인 예매 후 방문당일까지 취소가능</p> -->
						<ul style="line-height:19px;">
							<li>オンライン予約後、訪問当日までキャンセル可能です。</li>
							<li>訪問当日に未発売(未使用)すると、翌日自動的にキャンセル及び返金されます。</li>
							<li>訪問当日の入場完了後は払い戻しできません。</li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		
		
		
	
		
		<!--  
		<div class="btnCenterWrap"><a href="comingdate.do" class="btn-default1 btn-medium2 bg-black1 btn-round">날짜 선택하러 가기</a></div>
		<input type="hidden" name="sid" id="sid" value="A9ED05F3F1F3A04AE053C0A80835A04A">
-->


<div class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Modal title</h4>
      </div>
      <div class="modal-body">
        <p>One fine body&hellip;</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->










	</div>
	
	
	<div class="col-md-offset-4 modbtn">
	<button type="button" class="btn btn-default btn-lg" style="margin-left:35px;font-wight:600px;" id="openModalBtn">
利用規約を見る
</button>
</div>
<!-- 모달 영역 -->
<div id="modalBox" class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
<div class="modal-dialog" role="document" style="max-width: 50%; width: auto; display: table;"  >
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
<h4 class="modal-title" id="myModalLabel">利用規約</h4>
</div>
<div class="modal-body">
<p>総則</p>

<p>第1条（目的）</p>


<p>① 利用者が本約款の内容に同意する場合、「サイト」のサービス提供行為及び利用者のサービス使用行為に本約款が優先的に適用されます。</p>
<p>②「サイト」は本約款を事前の告知なく変更することができます。 変更された約款は、「サイト」内でお知らせし、またはメールを通じて会員にお知らせし、お知らせと同時にその効力が発生します。 利用者が変更された約款に同意しない場合、利用者は本人の会員登録を取消(会員退会)することができ、継続して使用する場合は約款変更に同意したものとみなします。</p>

<p>第4条(約款外準則)</p>

<p>本約款に明示されていない事項は、電気通信基本法、電気通信事業法、情報通信倫理委員会審議規定、情報通信倫理綱領、プログラム保護法、その他関連法令の規定によります。</p>

<p>第5条（利用契約の成立）</p>

<p>①利用契約は、申請者がオンラインで「サイト」で提供する所定の登録申請様式を作成し、登録を完了することで成立します。</p>
<p>②「サイト」は次の各号に該当する利用契約において登録を取り消すことができます。</p>
<p>1.他人の名義を使用して申請する場合</p>
<p>2.利用契約申込書の内容を虚偽で記載し、又は申請する場合</p>
<p>3.他人のサービス利用を妨害し、又はその情報を盗用する等の行為をする場合</p>
<p>4.「サイト」を利用して法令及び本約款が禁止する行為をする場合</p>
<p>5.その他「サイト」が定めた利用申請要件を満たしていない場合</p>
<p>第6条（会員情報の使用についての同意）</p>


<p>第9条(サービスの利用)</p>

<p>①「サイト」は、利用者がサービスを利用して期待している損益やサービスを通じて得た資料による損害について責任を負わず、会員が本サービスに掲載した情報、資料、事実の信頼度、正確性などの内容については一切の責任を負いません。</p>
<p>② 「サイト」はサービス利用に関連し、登録者に発生した損害のうち、登録者の故意、過失による損害について責任を負いません。</p>

<p>第10条(著作権)</p>

<p>①「サイト」において提供する情報、コンテンツ、学習教材等についての権利及び責任は、「サイト」にあり、利用者は、「サイト」の同意なくして、これを営利的目的に使用することはできません。 但し、非営利目的の場合、利用者は「サイト」の承認を得てこれを使用することができ、サービス内の掲載権があります。</p>
<p>② 利用者が掲示した掲示物の内容に対する権利と責任は利用者本人にあります。</p>
<p>③ 「サイト」は掲示された内容を事前通知なく編集、移動する権利を有し、掲示板運営原則に基づき事前通知なく削除することができます。</p>
<p>④ 利用者の掲示物が他人の著作権を侵害したことによって発生する民事·刑事上の責任は、全的に会員本人にあります。</p>


</div>
<div class="modal-footer">
<!--<button type="button" class="btn btn-primary">확인</button>-->
  <button type="button" class="btn btn-primary" id="closeModalBtn">Close</button>
</div>
</div>
</div>
</div>



	
	
	
	
	<!-- layer popup start -->
	<!--  
	<div id="useTypeLayer" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="false">
		<div class="layerWrap">
			<div class="layerHead">
				<p class="title">회원 유형 선택</p>
				<p class="close"><button data-dismiss="modal">닫기</button></p>
			</div>
			<div class="layerBody">
				<div class="memTypeList">
					<ul>
						<li>
							<a href="javascript:;" onclick="next();">
								<div class="typeBox">
									<p class="item01">비 회원 예약</p>
								</div>
							</a>
						</li>
						<li>
							
							<a href="javascript:;" onclick="next();">
								
									<div class="typeBox">
										<p class="item02">회원 예약</p>
									</div>
								</a>
						</li>
					</ul>
					<div class="joinArea">
						<p>회원가입 하시면 다양한 혜택을 제공받을 수 있습니다.</p>
						<div><a href="/newkfsweb/kfs/account/regist.do?mn=KFS_34_07_02&amp;rs=reg0001">회원가입</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>-->
	<!-- layer popup end -->
	<!-- terms1 layer popup start -->
	<!--  
	<div id="terms1Layer" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="layerWrap">
			<div class="layerHead">
				<p class="title">오월드 이용약관</p>
				<p class="close"><button data-dismiss="modal">닫기</button></p>
			</div>
			<div class="layerBody">
				<div class="termsArea">
					<p class="terms_title">총      칙</p>

					<p class="terms_title2">제1조(목적)</p>
					<p class="terms_txt">본 약관은 대전오월드 사이트(이하 “사이트”)가 제공하는 모든 서비스의 이용조건 및 절차, 이용자와 “사이트”의 권리, 의무, 책임사항과 기타 필요한 사항을 규정하는 것을 목적으로 합니다.</p>

					<p class="terms_title2">제2조(용어의 정의)</p>
					<p class="terms_txt">본 약관에서 사용하는 용어의 정의는 다음과 같습니다.</p>
					<p class="terms_txt">1. 이용자 : 본 약관에 따라 "사이트"에서 제공하는 서비스를 받는 자<br>
						2. 가입 : "사이트"에서 제공하는 가입신청양식에 해당 정보를 기입하고, 본 약관에 동의하여 서비스 이용계약을 완료시키는 행위<br>
						3. 회원 : "사이트"에 개인 정보를 제공하여 회원 가입을 한 자로써 "사이트"가 제공하는 서비스를 이용할 수 있는 자<br>
						4. 아이디 : 회원 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 "사이트"가 승인하는 문자, 숫자 또는 양자의 조합<br>
						5. 비밀번호 : 이용자와 회원 아이디가 일치하는지를 확인하고 통신상 자신의 비밀보호를 위하여 이용자 자신이 선정한 문자, 숫자 또는 양자의 조합<br>
						6. 탈퇴(해지) : 회원이 이용계약을 종료시키는 행위<br>
					</p>

					<p class="terms_title2">제3조(약관의 효력 및 변경)</p>
					<p class="terms_txt">① 이용자가 본 약관 내용에 동의하는 경우, "사이트"의 서비스 제공행위 및 이용자의 서비스 사용행위에 본 약관이 우선 적용됩니다.<br>
						② "사이트"는 본 약관을 사전 고지 없이 변경할 수 있습니다. 변경된 약관은 "사이트" 내에 공지하거나 e-mail을 통해 회원에게 공지하며, 공지와 동시에 그 효력이 발생됩니다. 이용자가 변경된 약관에 동의하지 않는 경우, 이용자는 본인의 회원 등록을 취소(회원탈퇴)할 수 있으며 계속 사용 하는 경우는 약관변경에 동의한 것으로 간주됩니다.
					</p>

					<p class="terms_title2">제4조(약관 외 준칙)</p>
					<p class="terms_txt">본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회 심의규정, 정보통신 윤리강령, 프로그램 보호법 및 기타 관련 법령의 규정에 의합니다.</p>

					<p class="terms_title2">제5조(이용계약의 성립)</p>
					<p class="terms_txt">
						① 이용계약은 신청자가 온라인으로 "사이트"에서 제공하는 소정의 가입신청양식을 작성하여 가입을 완료하는 것으로 성립됩니다.<br>
						② "사이트"는 다음 각 호에 해당하는 이용계약에 대하여 가입을 취소할 수 있습니다.<br>
						1. 다른 사람의 명의를 사용하여 신청하는 경우<br>
						2. 이용계약 신청서의 내용을 허위로 기재하였거나 신청하는 경우<br>
						3. 다른 사람의 서비스 이용을 방해하거나 그 정보를 도용하는 등의 행위를 하는 경우<br>
						4. "사이트"를 이용하여 법령과 본 약관이 금지하는 행위를 하는 경우<br>
						5. 기타 "사이트"가 정한 이용신청요건이 미비 할 경우<br>
					</p>

					<p class="terms_title2">제6조(회원정보 사용에 대한 동의)</p>
					<p class="terms_txt">
						① 회원의 개인정보는 공공기관의 개인정보보호에 관한 법률에 의해 보호됩니다.<br>
						② "사이트"의 회원 정보는 다음 각 호와 같이 사용, 관리, 보호됩니다.<br>
						1. 개인정보의 사용 : "사이트"는 서비스 제공과 관련해서 수집된 회원의 신상정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다. 단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있거나 정보통신윤리위원회의 요청이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우, 이용자가 "사이트"에 제공한 개인정보를 스스로 공개한 경우에는 그러하지 않습니다.<br>
						2. 개인정보의 관리 : 이용자는 개인정보의 보호 및 관리를 위하여 서비스의 개인정보관리에서 수시로 이용자의 개인정보를 수정/삭제할 수 있습니다.<br>
						3. 개인정보의 보호 : 이용자의 개인정보는 오직 이용자만이 열람/수정/삭제 할 수 있으며, 이는 전적으로 이용자의 아이디와 비밀번호에 의해 관리 되고 있습니다. 따라서 타인에게 본인의 아이디와 비밀번호를 알려주어서는 안 되며, 작업 종료 시에는 반드시 로그아웃 하고, 웹브라우저의 창을 닫아야 합니다.<br><br>

						③ 회원이 본 약관에 따라 이용신청을 하는 것은, 가입신청양식에 기재된 회원정보를 수집, 이용하는 것에 동의하는 것으로 간주됩니다.<br>
						④ 회원정보는 언제든지 수정이 가능하지만, 이름과 아이디는 변경이 불가능하므로 작성 시 주의해야 합니다.
					</p>

					<p class="terms_title2">제7조(사용자의 정보 보안)</p>
					<p class="terms_txt">
						① 가입 신청자가 "사이트"에 가입 절차를 완료하는 순간부터 이용자는 입력한 정보의 비밀을 유지할 책임이 있으며, 회원의 아이디와 비밀번호를 사용하여 발생하는 모든 결과에 대한 책임은 회원 본인에게 있습니다.<br>
						② 회원의 아이디나 비밀번호가 부정하게 사용되었다는 사실을 발견한 경우에는 즉시 "사이트"에 신고하여야 합니다. 신고를 하지 않음으로 인한 모든 책임은 회원 본인에게 있습니다.<br>
						③ 이용자는 "사이트" 서비스의 사용 종료 시마다 정확히 접속을 종료해야 하며, 정확히 종료하지 아니함으로써 제3자가 귀하에 관한 정보를 이용하게 되는 등의 결과로 인해 발생하는 손해 및 손실에 대하여 "사이트"는 책임을 부담하지 아니합니다.<br>
					</p>

					<p class="terms_title2">제8조(서비스의 중지)</p>
					<p class="terms_txt">"사이트"는 이용자가 본 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용을 제한 및 중지할 수 있습니다.</p>

					<p class="terms_title2">제9조(서비스의 이용)</p>
					<p class="terms_txt">
						① "사이트"는 이용자가 서비스를 이용하여 기대하는 손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않으며, 회원이 본 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.<br>
						② "사이트"는 서비스 이용과 관련하여 가입자에게 발생한 손해 중 가입자의 고의, 과실에 의한 손해에 대하여 책임을 지지 않습니다.
					</p>

					<p class="terms_title2">제10조(저작권)</p>
					<p class="terms_txt">
						① "사이트"에서 제공하는 정보, 콘텐츠, 학습교재 등에 대한 권리와 책임은 "사이트"에 있으며, 이용자는 "사이트"의 동의 없이 이를 영리적 목적으로 사용할 수 없습니다. 단, 비영리적 목적인 경우 이용자는 "사이트"의 승인을 받아 이를 사용할 수 있으며 서비스 내의 게재권을 갖습니다.<br>
						② 이용자가 게시한 게시물의 내용에 대한 권리와 책임은 이용자 본인에게 있습니다.<br>
						③ "사이트"는 게시된 내용을 사전 통지 없이 편집, 이동할 수 있는 권리를 보유하며, 게시판 운영 원칙에 따라 사전 통지 없이 삭제할 수 있습니다.<br>
						④ 이용자의 게시물이 타인의 저작권을 침해함으로써 발생하는 민, 형사상의 책임은 전적으로 회원 본인에게 있습니다.<br>
					</p>

					<p class="terms_title2">제11조(회원의 의무)</p>
					<p class="terms_txt">
						① 회원 가입 시에 요구되는 정보는 정확하게 기입하여야 합니다. 또한 이미 제공된 이용자에 대한 정보가 정확한 정보가 되도록 유지, 갱신하여야 하여야 합니다.<br>
						② 이용자는 서비스를 이용할 때 다음 각 호의 행위를 하지 않아야 합니다.<br>
						1. 다른 이용자의 이용자 번호 등을 부정하게 사용하는 행위<br>
						2. 서비스를 이용하여 얻은 정보를 "사이트"의 사전 승낙 없이 이용자의 이용이외의 목적으로 복제하거나 이를 출판, 방송 등에 사용하거나 제3자 에게 제공하는 행위<br>
						3. 다른 이용자 또는 제3자를 비방하거나 중상모략으로 명예를 훼손하는 행위<br>
						4. 공공질서 및 미풍양속에 위배되는 내용의 정보, 문장, 도형 등을 타인에게 유포하는 행위<br>
						5. 국가의 안전을 위태롭게 하는 행위<br>
						6. 다른 이용자 또는 제3자의 저작권 등 기타 권리를 침해하는 행위<br>
						7. 범죄행위 기타 이 법 또는 다른 법률에서 금지하는 행위<br>
						8. "사이트"의 사전 승낙 없이 서비스를 이용한 영리행위<br>
						9. 서비스의 안정적인 운영에 지장을 주거나 줄 우려가 있는 일체의 행위<br><br>
						③ 이용자는 이 약관에서 규정하는 사항과 서비스 이용안내 또는 주의사항을 준수하여야 합니다.
					</p>

					<p class="terms_title2">제12조(이용자의 권리)</p>
					<p class="terms_txt">
						① "사이트"에서 제공하는 대부분의 서비스를 무료로 제공받을 수 있습니다.<br>
						② 이용자는 언제든지 본 서비스 동의를 철회할 수 있습니다.<br>
						③ 이용자는 자신의 개인정보에 대한 열람을 요구할 수 있으며, 자신의 개인정보에 오류가 있는 경우 그 정정을 요구할 수 있습니다.
					</p>

					<p class="terms_title2">제13조(양도금지)</p>
					<p class="terms_txt">이용자는 서비스의 이용권한, 기타 이용계약상 지위를 타인에게 양도, 증여할 수 없습니다.</p>

					<p class="terms_title2">제14조(이의신청 및 손해배상청구금지)</p>
					<p class="terms_txt">이용자는 "사이트"에서 제공하는 서비스 이용 시 발생되는 어떠한 문제에 대해서도 대전오월드 및 관계 기관에 손해배상 청구를 할 수 없으며 대전오월드는 이에 대해 책임을 지지 아니합니다.</p>

					<p class="terms_title2">제15조(면책조항)</p>
					<p class="terms_txt">
						① "사이트"는 회원이나 제3자에 의해 표출된 의견을 승인하거나 반대하거나 수정하지 않습니다. "사이트"는 어떠한 경우라도 회원이 서비스에 담긴 정보에 의존해 얻은 이익이나 입은 손해에 대해 책임이 없습니다.<br>
						② "사이트"는 회원 간 또는 회원과 제3자간에 서비스를 매개로 하여 물품거래 혹은 금전적 거래 등과 관련하여 어떠한 책임도 부담하지 아니하고, 회원이 서비스의 이용과 관련하여 기대하는 이익에 관하여 책임을 부담하지 않습니다.
					</p>

					<p class="terms_title2">제16조(재판관할)</p>
					<p class="terms_txt">① "사이트"와 이용자 간에 발생한 서비스 이용에 관한 분쟁에 대하여는 대한민국법을 적용하며, 본 분쟁으로 인한 소는 대한민국의 법원에 제기합니다.</p>

					<p class="terms_title">부      칙</p>
					<p class="terms_title2">제1조(시행일)</p>
					<p class="terms_txt">이 약관은 공지된 날부터 시행합니다.</p>
				</div>
			</div>
		</div>
	</div>
	-->
</div>
			
			
				
				
			</div>

</div>

<script>
// 모달 버튼에 이벤트를 건다.
$('#openModalBtn').on('click', function(){
$('#modalBox').modal('show');
console.log("click open");
});
// 모달 안의 취소 버튼에 이벤트를 건다.
$('#closeModalBtn').on('click', function(){
$('#modalBox').modal('hide');
console.log("click close");
});
$('#modalBox').on('show.bs.modal', function (e) {
console.log("show.bs.modal");
});
$('#modalBox').on('shown.bs.modal', function (e) {
console.log("shown.bs.modal");
});
$('#modalBox').on('hide.bs.modal', function (e) {
console.log("hide.bs.modal");
});
$('#modalBox').on('hidden.bs.modal', function (e) {
console.log("hidden.bs.modal");
});
</script>

	<script>
	function fn_mse1(){
		<%
			String id2 = (String)session.getAttribute("userid"); 
			if(id2==null){
				%>
				alert('ログインが必要なページです。');
				location.href="login.do";
			<%	
			}else{
				%>
				location.href="comingdate.do";
				<%
			}
		%>
		
	}
	
	
</script>

<script>
	function fn_mse2(){
		<%
			String id3 = (String)session.getAttribute("userid"); 
			if(id3==null){
				%>
				alert('ログインが必要なページです。');
				location.href="login.do";
			<%	
			}else{
				%>
				location.href="comingdate2.do";
				<%
			}
		%>
		
	}
	
	
</script>


<%@ include file="../footer.jsp"%>