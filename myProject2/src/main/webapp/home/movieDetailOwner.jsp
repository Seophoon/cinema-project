<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div align = "center" class = "body">
		<table width = "90%">
			<tr>
				<td width = "300px" align = "center">
					<img alt="" src="${pageContext.request.contextPath }/upload/${BBS.pictureUrl }" width = "300" height = "400">
				</td>
				<td align = "center">
					<table width = "90%">
						<tr height = "50">
							<th width = "80">제목</th>
							<td width = "160">${BBS.moviename }</td>
						</tr>
						<tr height = "50">
							<th width = "80">디렉터</th>
							<td width = "160">${BBS.derector }</td>
						</tr>
						<tr height = "50">
							<th width = "80">줄거리</th>
							<td width = "160">${BBS.description }</td>
						</tr>
						<tr>
							<td colspan = "2" align = "center" width = "240" style="border:none">
								<a href = "javascript:goModify()">[수정]</a>
								<a href = "javascript:goDelete()">[삭제]</a><br/>
								<a href = "../image/movieList.html">■ 목록으로 돌아가기</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
	<div>
	<form name = "move" method = "post">
		<input type = "hidden" name = "SEQNO" value = "${BBS.seqno }"/>
	</form>
	</div>
	<script type="text/javascript">
	function goModify(){
		document.move.action = "../image/movieUpdate.html";
		document.move.submit();//서블릿 호출
	}
	function goDelete(){
		document.move.action = "../image/movieDelete.html";
		document.move.submit();//서블릿 호출
	}
	</script>
</body>
</html>