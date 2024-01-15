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
		if(frm.id.value == "") {
			alert("아이디를 입력해 주세요.")
			frm.id.focus()
			return false	// 페이지 이동을 강제적으로 막는 명령어
		}
		
		if (frm.pw.value == "") {
			alert("비밀번호를 입력해 주세요.")
			frm.pw.focus()
			return false()
		}
		
		frm.method = "post"
		frm.action = "login"
		frm.submit()
		
	}
</script>



</head>
<body>
	<div align = "center">
		<hr width = "50%" color = "blue">
			<h2>로그인 페이지</h2>
		<hr width = "50%" color = "blue">
		<br><br>
		
		<form name = "frm">
		<!-- method 생략 시 get 방식이다. -->
			<table border = "1">
				<tr>
					<th> 아이디 </th>
					<td>
						<input name = "id">
						<!-- input type 생략 시 기본값은 text다. -->
					</td>
				</tr>
				
				<tr>
					<th> 비밀번호 </th>
					<td>
						<input type = "password" name = "pw">
					</td>
				</tr>
				
				<tr>
					<td colspan = "2" align = "center">
						<input type = "button" onclick = "validate()" value = "로그인">&nbsp;
						<input type = "reset" value = "취소">
					</td>
				</tr>
				
			</table>
		
		</form>
	
	</div>
</body>
</html>