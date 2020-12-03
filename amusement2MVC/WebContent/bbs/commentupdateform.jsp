<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>	
<%@ page import="java.util.*" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>コメント修正</title>
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
</head>
<body>
	<div id="wrap1">
		<br>
		<b><font size="5" color="gray">コメント修正</font></b>
		<hr size="1" width="550">
		<br>
		<div id="commentUpdateForm">
			<form name="updateInfo" target="parentForm">
				<textarea rows="7" cols="70" name="comment_content" id="comment_content">${cvo3.commentcontent }</textarea>
				<br><br>
				<input type="button" value="登録" class="btn btn-success" onclick="checkValue()">
				<input type="button" value="閉じる" class="btn btn-success" onclick="window.close()">
			</form>
		</div>
		
	</div>
	
	
	
	
<script>
	
function checkValue(){
	
	$.ajax({
		type:"post",
		dataType:"json",
		data:{comment_num:"${cvo3.commentnumber}",comment_content:$("#comment_content").val()},
		async:false,
		url:"commentupdateaction2.do",
		success:function(data){
			if(data.result14 == 1){
				if(opener != null) {
					alert('コメントが修正されました！');
					 window.opener.document.location.reload(); 
		                opener.replyForm = null;
		                self.close();
				}
			}
			
		},error:function(){
			
			
               
		}
	})
	
}




</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>