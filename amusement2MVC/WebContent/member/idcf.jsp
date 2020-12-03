<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 확인</title>
</head>
<body>

<c:choose>
<c:when test="${ idck != '' }">
회원님의 ID는 ${idck}입니다
</c:when>
<c:otherwise>

등록된 회원이 없습니다
</c:otherwise>
</c:choose>

</body>
</html>