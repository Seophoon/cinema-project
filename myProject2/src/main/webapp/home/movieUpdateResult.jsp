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
	<c:if test="${ empty param.id }">
		<script type="text/javascript">
			setTimeout(function(){
				alert("게시글이 수정 되었습니다.");
				location.href="../image/movieList.html";
			},100);
		</script>
	</c:if>
	<c:if test="${ ! empty param.id }">
		<script type="text/javascript">
			setTimeout(function(){
				alert("게시글이 수정되지 않았습니다. 다시 시도해 주세요");
				location.href="../image/movieDetailOwner.html?seqno="+${param.seqno };
			},100);
		</script>
	</c:if>
</body>
</html>