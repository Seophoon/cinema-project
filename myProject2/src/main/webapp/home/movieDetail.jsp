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
							<th width = "30px">����</th>
							<td width = "160px">${BBS.moviename }</td>
						</tr>
						<tr height = "50">
							<th width = "30px">����</th>
							<td width = "160">${BBS.derector }</td>
						</tr>
						<tr height = "50">
							<th width = "30px">�ٰŸ�</th>
							<td width = "160">${BBS.description }</td>
						</tr>
						<tr>
							<td colspan = "2" align = "center" width = "240" style="border:none">
								<a href = "../image/movieList.html">�� ������� ���ư���</a>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>