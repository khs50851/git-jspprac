<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!-- start container -->
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<div class="col-md-offset-3">
				<h3 class="font-bold1 pull-left marginleft10">自由掲示板</h3>
			</div>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">利用情報</li>
				<li class="freeboard.jsp">自由掲示板</li>
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

<hr class="hr1">

		<div class="board_view">
		
		<form class="inboard">
		
		<div class="table_wrap response">
		<table>
		<tbody>
		<tr>
		<th>作成者</th>
		<td>${view.id }</td>
		<th>掲示日付</th>
		<td>${fn:substring(view.write_date,0,10) }</td>
		<th>アクセス数</th>
		<td>${view.hit }</td>
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
		<img src="bbsupload/${view.file_name}"  alt=""><br>
		${view.content }
		</td>
		</tr>
		</tbody>
		</table>	
		</div>
		</form>	
		
		<div class="btn_3wrap text-center">
					 <a href="bbs.do?pageNum=${cri.pageNum }&amount=${cri.amount}" class="btn2 blue">リスト</a>
					 
					 <c:if test="${view.id == userid }">
					 <a href="bbsmodify.do?article_number=${view.article_number }&pageNum=${cri.pageNum }&amount=${cri.amount}" class="btn2 blue">修整</a> 
					 <a href="bbsdelete.do?article_number=${view.article_number }" onClick="return confirm('削除しますか？')" class="btn2 blue">削除</a>
					 </c:if>
				</div>
		
		
				
			
		</div>
		
		<div class="input-group" role="group" aria-label="..." style="margin-top: 10px; width: 100%;">
    <textarea class="form-control" rows="3" id="commentContent" placeholder="コメントを入力してください。" style="width: 100%;" ></textarea>
    <div class="btn-group btn-group-sm" role="group" aria-label="...">
        <c:if test="${userid == null}">
            <input type="button" class="btn btn-default" value="コメントを書く。" disabled="disabled">
        </c:if>
        <c:if test="${userid != null}">
            <input type="button" class="btn btn-default" value="コメントを書く。" id="commentWrite">
        </c:if>
        <!--  
        <input type="button" class="btn btn-default" value="댓글 읽기(${view.commentcount})" 
                onclick="getComment(1, event)" id="commentRead">
          -->      
    </div>
</div>
 <!--  	
<!-- Comment 태그 추가 -->
<!--  
<div class="input-group" role="group" aria-label="..." style="margin-top: 10px; width: 100%;">
    <div id="showComment" style="text-align: center;"></div>
</div>

	-->
	
		<c:forEach var="clist3" items="${clist3 }">
		<c:set var="wid" value="${(clist3.comment_level/10)*5 }"/>
	<tr>
	<td width="150">
		<div>
		<c:choose>
		<c:when test="${clist3.comment_level>1 }">
		<p style="text-indent:20px;display:inline-block"><img src="images/bg_re.gif" alt="" style="width:15px"></p>
		</c:when>	
		<c:otherwise>
		
		
		</c:otherwise>
			</c:choose>
			
			
			
		${clist3.id }<br>
		
		<c:choose>
		<c:when test="${clist3.comment_level>1 }">
			<p style="text-indent:20px;display:inline-block"><font size="2" color="lightgray">${clist3.commentdate }</font></p>
		</c:when>	
		<c:otherwise>
		<font size="2" color="lightgray">${clist3.commentdate }</font>
		</c:otherwise>
			</c:choose>
			
			
		</div>
	</td>
	<td width="550">
		<div class="text_wrapper">
		<c:choose>
		<c:when test="${clist3.comment_level>1 }">
			<p style="text-indent:20px;display:inline-block">${clist3.commentcontent }</p>
		</c:when>	
		<c:otherwise>
		${clist3.commentcontent }
		</c:otherwise>
			</c:choose>
		</div>
	</td>	
	<td width="100">
		<div id="btn" class="sss" style="text-align:center;">
		
		<c:if test="${userid == clist3.id }">
			<a href="#" onclick="cmUpdateOpen(${clist3.commentnumber})">&nbsp; 修整  &nbsp; |</a> 
			<a href="#" onclick="cmDeleteOpen(${clist3.commentnumber})">| &nbsp; 削除  &nbsp; |</a> 
			</c:if>
			<a href="#" onclick="cmReplyOpen(${clist3.commentnumber})">&nbsp; 答弁  &nbsp; </a> 
			
		</div>
	</td>	
	
	</tr>	
	</c:forEach>
	
		
		
		
	</div>
</div>
 
 
 
 
 
 
<script>

    jQuery(document).ready(function() {
    
   
    });
   
    $.ajaxSetup({
        type:"post",
        async:true,
        error:function(xhr) {
        	console.log("error html = " + xhr.statusText);

        }
    });
    
    $(function() {
        $("#commentWrite").on("click", function(e) {
        	e.preventDefault();
            $.ajax({
            	
                url:"commentwrite.do",
                
                data:{
                    commentContent:$("#commentContent").val(),
                    articleNumber:"${view.article_number}"
                },
                success:function(data) {            
                        
                	 if(data.result15 == 1) {     
                		
                         showHtml(data.comments, 1);
                     	 }
                    
                },error:function(request,status,error){
                	 $("#commentContent").val("");
                     location.href="bbsview.do?article_number=${view.article_number}&pageNum=${cri.pageNum }&amount=${cri.amount}"
                   
               // alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

				}
            })
        });
    });

    function showHtml(data, commPageNum) {
        let html = "<table class='table table-striped table-bordered' style='margin-top: 10px;'><tbody>";
        $.each(data, function(index, item) {
            html += "<tr align='center'>";
            html += "<td>" + (index+1) + "</td>";
            html += "<td>" + item.id + "</td>";
            html += "<td align='left'>" + item.commentcontent + "</td>";
            let presentDay = item.commentdate.substring(0, 10);
            html += "<td>" + presentDay + "</td>";
            html += "</tr>";
        });
        html += "</tbody></table>";
        commPageNum = parseInt(commPageNum);       
        if("${view.commentcount}" > commPageNum * 10) {
            nextPageNum = commPageNum + 1;
            html +="<input type='button' class='btn btn-default' onclick='getComment(nextPageNum, event)' value='다음 comment 보기'>";
        }
        
        $("#showComment").html(html);
        $("#commentContent").val("");
        $("#commentContent").focus();
    }


    function getComment(commPageNum, event) {
        $.ajax({
            url:"commentread.do",
            data:{
                commPageNum:commPageNum*10,
                articleNumber:"${view.article_number}"
            },
            success:function(data) {
            	showHtml(data.clist1, commPageNum);
                let position = $("#showComment table tr:last").position();
                $('html, body').animate({scrollTop : position.top}, 400); 
            },error:function(request,status,error){
            	  alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
        })
    }


   
   
    
</script>

<script>

function cmReplyOpen(comment_num)

{
    var userId = '${userid}';
    
    if(userId == "" || userId == null){
        alert("ログインするとご利用いただけます。");
       	location.href="login.do";
    }
    else{
        // 댓글 답변창 open
        window.name = "parentForm";
        window.open("commentreplyformaction.do?num="+comment_num,
                    "replyForm", "width=570, height=350, resizable = no, scrollbars = no");
    }
}



function cmDeleteOpen(commentnumber)
{
	var msg = confirm("コメントを削除します。");
	if(msg == true){
		deleteCmt(commentnumber);
	}else{
		return false;
	}
}

function deleteCmt(commentnumber){
	var cnum = commentnumber;
	 $.ajax({
		 type:"post",
		 dataType:"json",
         url:"commentdeleteaction.do",
         async:false,
         data:{
             commentnumber:cnum
         },
         success:function(data) {
        	if(data.result16 == 1){
        		alert('コメントが削除されました。');
         		 location.href="bbsview.do?article_number=${view.article_number}&pageNum=${cri.pageNum }&amount=${cri.amount}"
        	}
         },error:function(request,status,error){
        		
        	 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        	 
			}
     })
	
}



function cmUpdateOpen(comment_num)
{
    var userId = '${userid}';
    
    if(userId == "" || userId == null){
        alert("ログインするとご利用いただけます。");
        return false;
    }
    else{
        // 댓글 답변창 open
        window.name = "parentForm";
        window.open("commentupdateformaction.do?num="+comment_num,
                    "replyForm", "width=570, height=350, resizable = no, scrollbars = no");
    }
}


</script>





<%@ include file="../footer.jsp"%>
