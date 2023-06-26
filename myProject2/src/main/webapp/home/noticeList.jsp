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
	<div align = "center">
		<c:if test = "${COUNT == 0 }">
			<h2>등록된 공지글이 존재하지 않습니다.</h2>
		</c:if>
		<c:if test = "${COUNT > 0 }">
			<h2>공지글 목록</h2>
			<table width = "70%">
				<tr>
					<td align = "right" style = "border:none">${STARTROW} ~ ${ENDROW} / ${TOTAL }</td>
				</tr>
			</table>
			<table width = "70%">
				<tr style="background:#3c2a78; color: white">
					<th>글번호</th>
					<th>제 목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
				<c:forEach items = "${NOTICES }" var = "notice">
				<tr>
					<td width = "10%">${notice.no }</td>
					<td width = "40%"><a href="../notice/noticeDetail.html?NO=${notice.no }">${notice.title }</a></td>
					<td width = "20%">${notice.id }</td>
					<td width = "20%">${notice.notice_date }</td>
				</tr>
				</c:forEach>
			</table>
			<c:forEach begin = "1" end = "${COUNT }" var = "page">
				<a href = "../notice/noticeList.html?PAGE_NO=${page }">${page }</a>
			</c:forEach>
		</c:if>
	</div>
</body>
</html>














