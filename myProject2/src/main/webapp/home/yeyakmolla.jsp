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
<link rel = "Stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/jari.css">
</head>
<body>
<div align = "center">
<form:form action = "../yeyak/yeyakdo.html" method="post" modelAttribute="jari" onSubmit="return check()" name = "frm">
		<br/>
		<form:input type = "text" path = "moviename" value = "${moviename }" readonly = "true" 
			style="width:300px; background:#3c2a78; color:white; text-align:center"/>
		<c:forEach var="JARI" items= "${yeyak }">
			<input type = "hidden" name = "yeyak" value="${JARI.jari }"/>
		</c:forEach>
		<br/><br/>
		<table class = "table">
			<tr class = "row">
			<th><span class = "jari">A</span></th>
			<td>
				<input type = "checkbox" id = "A1" name = "seat" value = "A1"/>
				<label for="A1" class = "seat"></label>
				<input type = "checkbox" id = "A2" name = "seat" value = "A2"/>
				<label for="A2" class = "seat"></label>
				<input type = "checkbox" id = "A3" name = "seat" value = "A3"/>
				<label for="A3" class = "seat"></label>
				<input type = "checkbox" id = "A4" name = "seat" value = "A4"/>
				<label for="A4" class = "seat"></label>
				<input type = "checkbox" id = "A5" name = "seat" value = "A5"/>
				<label for="A5" class = "seat"></label>
				<input type = "checkbox" id = "A6" name = "seat" value = "A6"/>
				<label for="A6" class = "seat"></label>
				<input type = "checkbox" id = "A7" name = "seat" value = "A7"/>
				<label for="A7" class = "seat"></label>
				<input type = "checkbox" id = "A8" name = "seat" value = "A8"/>
				<label for="A8" class = "seat"></label>
			</td>
			<td rowspan = "7">
				<font color = "grey">■</font>: 선택가능<br/>
				<font color = "red">■</font> : 예약됨<br/>
				<font color = "blue">■</font> : 선택됨
			</td>
			</tr>
			<tr class = "row">
	<th><span class = "jari">B</span></th>
	<td>
		<input type = "checkbox" id = "B1" name = "seat" value = "B1"/>
		<label for="B1" class = "seat"></label>
		<input type = "checkbox" id = "B2" name = "seat" value = "B2"/>
		<label for="B2" class = "seat"></label>
		<input type = "checkbox" id = "B3" name = "seat" value = "B3"/>
		<label for="B3" class = "seat"></label>
		<input type = "checkbox" id = "B4" name = "seat" value = "B4"/>
		<label for="B4" class = "seat"></label>
		<input type = "checkbox" id = "B5" name = "seat" value = "B5"/>
		<label for="B5" class = "seat"></label>
		<input type = "checkbox" id = "B6" name = "seat" value = "B6"/>
		<label for="B6" class = "seat"></label>
		<input type = "checkbox" id = "B7" name = "seat" value = "B7"/>
		<label for="B7" class = "seat"></label>
		<input type = "checkbox" id = "B8" name = "seat" value = "B8"/>
		<label for="B8" class = "seat"></label>
	</td>
	</tr>
	<tr class = "row">
		<th><span class = "jari">C</span></th>
		<td>
			<input type = "checkbox" id = "C1" name = "seat" value = "C1"/>
			<label for="C1" class = "seat"></label>
			<input type = "checkbox" id = "C2" name = "seat" value = "C2"/>
			<label for="C2" class = "seat"></label>
			<input type = "checkbox" id = "C3" name = "seat" value = "C3"/>
			<label for="C3" class = "seat"></label>
			<input type = "checkbox" id = "C4" name = "seat" value = "C4"/>
			<label for="C4" class = "seat"></label>
			<input type = "checkbox" id = "C5" name = "seat" value = "C5"/>
			<label for="C5" class = "seat"></label>
			<input type = "checkbox" id = "C6" name = "seat" value = "C6"/>
			<label for="C6" class = "seat"></label>
			<input type = "checkbox" id = "C7" name = "seat" value = "C7"/>
			<label for="C7" class = "seat"></label>
			<input type = "checkbox" id = "C8" name = "seat" value = "C8"/>
			<label for="C8" class = "seat"></label>
		</td>
	</tr>
	<tr class = "row">
		<th><span class = "jari">D</span></th>
		<td>
			<input type = "checkbox" id = "D1" name = "seat" value = "D1"/>
			<label for="D1" class = "seat"></label>
			<input type = "checkbox" id = "D2" name = "seat" value = "D2"/>
			<label for="D2" class = "seat"></label>
			<input type = "checkbox" id = "D3" name = "seat" value = "D3"/>
			<label for="D3" class = "seat"></label>
			<input type = "checkbox" id = "D4" name = "seat" value = "D4"/>
			<label for="D4" class = "seat"></label>
			<input type = "checkbox" id = "D5" name = "seat" value = "D5"/>
			<label for="D5" class = "seat"></label>
			<input type = "checkbox" id = "D6" name = "seat" value = "D6"/>
			<label for="D6" class = "seat"></label>
			<input type = "checkbox" id = "D7" name = "seat" value = "D7"/>
			<label for="D7" class = "seat"></label>
			<input type = "checkbox" id = "D8" name = "seat" value = "D8"/>
			<label for="D8" class = "seat"></label>
		</td>
	</tr>
	<tr class = "row">
		<th><span class = "jari">E</span></th>
		<td>
			<input type = "checkbox" id = "E1" name = "seat" value = "E1"/>
			<label for="E1" class = "seat"></label>
			<input type = "checkbox" id = "E2" name = "seat" value = "E2"/>
			<label for="E2" class = "seat"></label>
			<input type = "checkbox" id = "E3" name = "seat" value = "E3"/>
			<label for="E3" class = "seat"></label>
			<input type = "checkbox" id = "E4" name = "seat" value = "E4"/>
			<label for="E4" class = "seat"></label>
			<input type = "checkbox" id = "E5" name = "seat" value = "E5"/>
			<label for="E5" class = "seat"></label>
			<input type = "checkbox" id = "E6" name = "seat" value = "E6"/>
			<label for="E6" class = "seat"></label>
			<input type = "checkbox" id = "E7" name = "seat" value = "E7"/>
			<label for="E7" class = "seat"></label>
			<input type = "checkbox" id = "E8" name = "seat" value = "E8"/>
			<label for="E8" class = "seat"></label>
		</td>
	</tr>
	<tr class = "row">
		<th><span class = "jari">F</span></th>
		<td>
			<input type = "checkbox" id = "F1" name = "seat" value = "F1"/>
			<label for="F1" class = "seat"></label>
			<input type = "checkbox" id = "F2" name = "seat" value = "F2"/>
			<label for="F2" class = "seat"></label>
			<input type = "checkbox" id = "F3" name = "seat" value = "F3"/>
			<label for="F3" class = "seat"></label>
			<input type = "checkbox" id = "F4" name = "seat" value = "F4"/>
			<label for="F4" class = "seat"></label>
			<input type = "checkbox" id = "F5" name = "seat" value = "F5"/>
			<label for="F5" class = "seat"></label>
			<input type = "checkbox" id = "F6" name = "seat" value = "F6"/>
			<label for="F6" class = "seat"></label>
			<input type = "checkbox" id = "F7" name = "seat" value = "F7"/>
			<label for="F7" class = "seat"></label>
			<input type = "checkbox" id = "F8" name = "seat" value = "F8"/>
			<label for="F8" class = "seat"></label>
		</td>
	</tr>
	<tr class = "row">
		<th><span class = "jari">G</span></th>
		<td>
			<input type = "checkbox" id = "G1" name = "seat" value = "G1"/>
			<label for="G1" class = "seat"></label>
			<input type = "checkbox" id = "G2" name = "seat" value = "G2"/>
			<label for="G2" class = "seat"></label>
			<input type = "checkbox" id = "G3" name = "seat" value = "G3"/>
			<label for="G3" class = "seat"></label>
			<input type = "checkbox" id = "G4" name = "seat" value = "G4"/>
			<label for="G4" class = "seat"></label>
			<input type = "checkbox" id = "G5" name = "seat" value = "G5"/>
			<label for="G5" class = "seat"></label>
			<input type = "checkbox" id = "G6" name = "seat" value = "G6"/>
			<label for="G6" class = "seat"></label>
			<input type = "checkbox" id = "G7" name = "seat" value = "G7"/>
			<label for="G7" class = "seat"></label>
			<input type = "checkbox" id = "G8" name = "seat" value = "G8"/>
			<label for="G8" class = "seat"></label>
		</td>
	</tr>
	</table><br/>
	<input type = "submit" value = "좌석 선택" />
</form:form>
</div>
</body>
<script type="text/javascript">
	window.onload = function(){
		goCheck();
		startClock()
	}
	function goCheck(){
		var box = document.getElementsByName("yeyak");
		for(var i=0; i<box.length; i++){
			document.getElementById(box[i].value).disabled = "true";
		}
	}
	
	function check(){
		var msg = "다음 좌석를 선택하셨습니다.\n";
		var checkBoxes = document.getElementsByName("seat");
		var notCheck = 0;
		for (var i = 0; i < checkBoxes.length; i++) {
	        if (checkBoxes[i].checked) {
	            msg += ("- " + checkBoxes[i].value + "\n");
	        }else {
	        	notCheck += 1;
	        }
	    }
		if(notCheck == 56){
			alert("자리를 선택하세요.");
			return false;
		}else{
			msg += "예약하시겠습니까?";
			if( ! confirm(msg)) return false;
		}
	}
	
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


</html>