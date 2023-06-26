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
	<c:if test="${empty param.id }">
		<script type="text/javascript">
			setTimeout(function() {
				location.href = "../image/movieList.html";
				alert("삭제되었습니다.");
			},100);
		</script>
	</c:if>
	<c:if test="${ ! empty param.id }">
		<script type="text/javascript">
			setTimeout(function() {
				location.href="../image/movieDetailOwner.html?seqno="+${param.seqno };
				alert("삭제되지 않았습니다. 다시 시도해 주세요")
			},100);
		</script>
	</c:if>
</body>
</html>