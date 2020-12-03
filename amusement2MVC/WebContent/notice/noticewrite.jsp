<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<div class="container-fluid ceobg">
	<div class="container">
		<div class="location">
			<h3 class="pull-left font-bold1">お知らせの書き込み</h3>
			<ol class="breadcrumb pull-right">
				<li><a href="index.jsp">HOME</a></li>
				<li class="freeboard.jsp">お知らせ</li>
				<li class="freeboard.jsp">お知らせの書き込み</li>
				<!-- active는 활성화된 현재위치 -->
			</ol>
		</div>
	</div>
</div>

<div class="container notice1">
  <form name="notice" method="post" action="noticeinsert.do" class="notice2" onsubmit="return check();">

    <label for="fname">書き手</label>
    <input type="text" id="fname" name="writer" value="管理者" readonly>

    <label for="lname">タイトル</label>
    <input type="text" id="lname" name="title" >


    <label for="subject">内容</label>
    <textarea id="subject" name="content" style="height:200px"></textarea>
	
	<div class="bbtn">
    <input type="submit" class="btn buto1" value="登録">
&nbsp;&nbsp;<button type="button" class="btn btn-info" onClick="location.href='notice.do';">目録</button>
	</div>

  </form>
</div>

<script>
	function check(){
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