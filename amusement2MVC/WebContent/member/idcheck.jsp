<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>会員重複確認</title>
</head>
<body>
<h2>아이디 중복 확인</h2>
<form action = "idcheck.do" method="get" name="frm">
	<table>
		<tr>
			<th>아이디</th>
			<td>
				<input type="text" name="id" value="${id }">
				<input type="submit" value="중복체크">
			</td>
		</tr>
	</table>

</form>
<c:if test="${result == 1 }">
	<script>
		opener.document.my.id.value="";
	</script>
	${id}는 이미 사용중인 아이디입니다.
</c:if>


<c:if test="${result == -1 }">
	${id}는 사용 가능한 아이디입니다.
	<input type="button" value="사용" onclick="idok()">
</c:if>

<script>
	function idok(){
		opener.my.id.value = document.frm.id.value;
		opener.my.rid.value="ok";
		self.close();
	}
	
</script>


</body>
</html>