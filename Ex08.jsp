<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type = "text/javascript">
	// 유효성 검사
	function validate() {
		if (std.name.value == "") {
			alert("이름을 입력해주세요.")
			std.name.focus()
			return false
		}
		
		if (std.kor.value == "") {
			alert("국어 점수를 입력해주세요.")
			std.kor.focus()
			return false
		}
		
		if (std.eng.value == "") {
			alert("영어 점수를 입력해주세요.")
			std.eng.focus()
			return false
		}
		
		if (std.math.value == "") {
			alert("수학 점수를 입력해주세요.")
			std.math.focus()
			return false()
		}
		
		std.method = "post"
		std.method = "add"
		std.submit()
		
		
	}

</script>

</head>
<body>
	<%-- 문제 : 서블릿을 이용하여 성적을 처리해 보세요. --%>
	<div align = "center">
		<hr width = "50%" color = "blue">
			<h2>학생 성적</h2>
		<hr width = "50%" color = "blue">
		<br><br>
		
		<form name = "std">
			<table border = "1">
				<tr>
					<th>학생 이름</th>
					<td>
						<input name = "name">
					</td>
				</tr>
				
				<tr>
					<th>국어 점수</th>
					<td>
						<input name = "kor">
					</td>
				</tr>
				
				<tr>
					<th>영어 점수</th>
					<td>
						<input name = "eng">
					</td>
				</tr>
				
				<tr>
					<th>수학 점수</th>
					<td>
						<input name = "math">
					</td>
				</tr>
				
				<tr>
					<td colspan = "2" align = "center">
						<input type = "button" onclick = "validate()" value = "등록">&nbsp;
						<input type = "reset" value = "수정">
					</td>
				</tr>
			</table>
		</form>
	</div>
	
</body>
</html>