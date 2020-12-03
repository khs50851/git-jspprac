<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<h3 class="pull-left font-bold1">お知らせ 修整</h3>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">お知らせ</li>
				<li class="freeboard.jsp">お知らせ  修整</li>
				<!-- active는 활성화된 현재위치 -->
			</ol>
		</div>
	</div>
</div>

<div class="container">
  <form name="notice" method="post" action="noticemodifypro.do" onsubmit="return check();">
	<input type="hidden" name="bno" value="${nvo.bno }">
	<input type="hidden" name="pageNum" value="${cri.pageNum }">
	<input type="hidden" name="amount" value="${cri.amount }">
    <label for="fname">書き手</label>
    <input type="text" id="fname" name="writer" value="${nvo.writer }" style="width:100%" readonly>

    <label for="lname">タイトル</label>
    <input type="text" id="lname" name="title" value="${nvo.title }" style="width:100%">


    <label for="subject">内容</label>
    <textarea id="subject" name="content" style="height:200px">${nvo.content }</textarea>

<div class="col-md-offset-5">
    <input type="submit" value="修整" style="color: #fff;
    background-color: #5cb85c;
    border-color: #4cae4c;display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 400;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;">
&nbsp;&nbsp;<button type="button" class="btn btn-info" onClick="location.href='notice.do';" style="text-align:center;">リスト</button>
</div>
  </form>
</div>

<script>
	function check(){
		if(notice.writer.value==""){
			alert("글쓴이 입력");
			notice.writer.focus();
			return false;
		}
		if(notice.title.value==""){
			alert("タイトルを入力してください。");
			notice.title.focus();
			return false;
		}
		if(notice.content.value==""){
			alert("内容を入力してください。");
			notice.content.focus();
			return false;
		}
		return true;
	}

</script>



<%@ include file="../footer.jsp" %>