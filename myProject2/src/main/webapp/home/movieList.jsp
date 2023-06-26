<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align = "center">
			<h2>게시글 목록</h2>
			<table width = "90%">
				<tr>
					<td align = "right" style = "border:none">${startRow} ~ ${endRow} / ${total }</td>
				</tr>
			</table>
			<table width = "90%">
				<tr style="background:#3c2a78; color: white">
					<th>번 호</th>
					<th>포스터</th>
					<th>제 목</th>
					<th>감 독</th>
					<th>개봉일</th>
				</tr>
				<c:forEach items="${IMAGES }" var = "image">
				<tr>
					<td width="20">${image.seqno}</td>
					<td>
					<img alt = "" src = "${pageContext.request.contextPath }/upload/${image.pictureUrl }" width = "50" height = "50">
					</td>
					<td><a href = "../image/movieDetail.html?SEQNO=${image.seqno}">${image.moviename }</a></td>
					<td>${image.derector }</td>
					<td>${image.movieDate }</td>
				</tr>
				</c:forEach>
			</table>
			<c:forEach begin = "1" end = "${pageCount }" var = "page">
				<a href = "../image/movieList.html?PAGE_NUM=${page }">${page }</a>
			</c:forEach>
	</div>
</body>
</html>












