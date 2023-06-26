<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
		<c:when test = "${param.R == 'OK' }">
			<script type="text/javascript">
				setTimeout(function(){
					alert("예약되었습니다~");
				},100);
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				setTimeout(function(){
					alert("이미 예약된 자리입니다.");
				},100);
			</script>
		</c:otherwise>
	</c:choose>
</body>
</html>