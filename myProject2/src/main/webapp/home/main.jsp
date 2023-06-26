<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
	table tr td{
border : 1px solid black;
}
.hhead {
width : 100%;
height : 120px;
}
.hhead .loginTr{
height : 30px;
text-align: right;
}
header .hhead .menu td{
box-sizing: border-box;
text-align: center;
}
header .hhead .menu td a{
display: block;
font-size: 25px;
line-height: 90px;
color : black;
text-decoration-line : none;
}
header .hhead .menu td a:hover{
background: yellow;
}
header .hhead .menu td a:visited{
color : black;
}
#body {
width : 100%;
}
#body td {
border: 1px solid black;
}
.ft{
background: black;
height : 50px;
}
.ft h3{
color : #fff;
line-height: 50px;
}
</style>
</head>
<body onload = "startClock();">
<script type="text/javascript">
	function workingClock(){
		var days = ["일","월","화","수","목","금","토"];
		var today = new Date();
		var year = today.getFullYear();
		var month = today.getMonth()+1;
		if(month < 10) month = "0"+month;
		var date = today.getDate();
		if(date < 10) date = "0"+date;
		var index = today.getDay();
		var day = days[index];
		var hour = today.getHours();
		var min = today.getMinutes();
		if (min < 10) min = "0"+min;
		var sec = today.getSeconds();
		if(sec < 10) sec = "0"+sec;
		var html = year+ "/" +month+ "/" +date+ " " +day+ " " +hour+ ":"+
						min+ ":" +sec;
		document.getElementById("clock").innerHTML = html;
	}
	function startClock(){
		workingClock();
		setInterval(workingClock, 1000);
	}
</script>
	<header>
		<table class = "hhead">
			<tr class = "loginTr">
				<td rowspan = "2" width = "15%" align = "center" style= "border:none">
					<a href="../home/main.html"><img src="../home/gigabox.png" alt="" width = "210" height="90"></a>
				</td>
				<td colspan = "4" style="background:#5abec8">
						<c:choose>
							<c:when test="${sessionScope.USER != null ||
									sessionScope.ADMIN != null }">
								<jsp:include page="logout.jsp"/>
							</c:when>
							<c:otherwise>
								<jsp:include page="../login/login.html"/>
							</c:otherwise>
						</c:choose>
				</td>
			</tr>
			<tr class = "menu">
				<td width = "21.25%"><a href="../image/movieList.html">영화 상세보기</a></td>
				<td width = "21.25%"><a href="../image/yeyak.html">예매하기</a></td>
				<td width = "21.25%"><a href="../one/oneList.html">한줄평</a></td>
				<td width = "21.25%"><a href="../notice/noticeList.html">공지사항</a></td>
			</tr>
		</table>
	</header>
	<section>
		<table id = "body">
			<tr>
				<td width = "20%" height = "500" class = "main" style="background:#5abec8;">
					<ul>
						<li><a href="../image/movieList.html">영화 상세보기</a></li>
					<c:if test = "${sessionScope.ADMIN != null }">
						<li><a href="../image/movieWriteForm.html">영화 등록</a></li>
					</c:if>
						<li><a href="../image/yeyak.html">예매하기</a></li>
						<li><a href="../one/oneList.html">한줄평</a></li>
						<li><a href="../notice/noticeList.html">공지사항</a></li>
					<c:if test = "${sessionScope.ADMIN != null }">
						<li><a href="../notice/noticeInput.html">공지사항 쓰기</a></li>
					</c:if>
					</ul>
				</td>
				<td style="background:wheat">
					<c:if test="${BODY != null }">
						<jsp:include page="${BODY }"/>
					</c:if>
				</td>
			</tr>
		</table>
	</section>
	<footer class = "ft">
			<h3 align = "center">CopyRight by SeopHoon. 2023. asd
				<font color = "red">
					<span id = "clock">시계</span>
				</font>
			</h3>
	</footer>
</body>
</html>