
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align = "center">
		<h2>한줄평</h2>
		<section>
			<table width = "90%">
				<tr>
					<td align = "right" style="border:none">${STARTROW} ~ ${ENDROW} / ${TOTAL }</td>
				</tr>
			</table>
			<table width = "90%">
				<tr style="background:#3c2a78; color: white">
					<th>번호</th>
					<th>영화</th>
					<th>한줄평</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
				<c:forEach items = "${ONES }" var = "ones">
				<tr>
					<td width = "5%">${ones.seqno }</td>
					<td width = "20%">${ones.moviename }</td>
					<td width = "55%"><a href="../one/oneDetail.html?seqno=${ones.seqno }">${ones.content }</a></td>
					<td width = "10%">${ones.id }</td>
					<td width = "20%">${ones.one_date }</td>
				</tr>
				</c:forEach>
			</table>
			<c:forEach begin = "1" end = "${COUNT }" var = "page">
				<a href = "../one/oneList.html?PAGE_NO=${page }">${page }</a>
			</c:forEach>
		</section>
		<c:if test = "${sessionScope.USER != null }">
			<a href = "../one/oneInputForm.html" >작성하기</a>
		</c:if>
	</div>
</body>
</html>