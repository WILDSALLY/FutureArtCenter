<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>id find inputPage</title>
</head>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> 
<script type="text/javascript">

function idFind(){

	// 입력 이름
	var name = $("#user_name").val();
	// 정규식
	var nameRegExp = /^[a-zA-Z가-힣]{2,5}$/; 
	// 유효성 검사
    if (!nameRegExp.test(name)) {
        alert("[이름]모든 항목이 올바르게 입력되어야 합니다.");
        return false;
    }
	
	// 입력 생년월일
	var birth = $("#user_birth").val();
	// 정규식
    var birthRegExp = /^(1|2)(\d{7})$/; 
	// 생년월일 유효성 검사
    if (!birthRegExp.test(birth)) {
        alert("[생년월일]모든 항목이 올바르게 입력되어야 합니다.");
        return false;
    }
	
	// 입력 핸드폰번호
	var phone = $("#user_phone").val();
	// 정규식
    var phoneRegExp = /^(01)(\d{9})$/; 
	// 유효성검사
    if (!phoneRegExp.test(phone)) {
        alert("[핸드폰번호]모든 항목이 올바르게 입력되어야 합니다.");
        return false;
    }
		$("#idFindform").submit();
		 
}
</script>
<body>
	<form id="idFindform" method="post" action="userIdFind">
	<h3>아이디 찾기</h3>
	<span>회원님의 정보를 입력하세요</span>
	<div align="center">
	<br>
	<table>
	<tr>
		<td>이름</td>	
		<td><input type="text" id="user_name" name="user_name" maxlength="5" ></td>
	</tr>
	<tr>
		<td>생년월일</td>	
		<td><input type="text" id="user_birth" name="user_birth" placeholder="예)20230101" maxlength="8"></td>
	</tr>
	<tr>
		<td>핸드폰번호</td>
		<td><input type="text" id="user_phone" name="user_phone" placeholder="예)01012345678" maxlength="11"></td>
	</tr>
	</table>
	<br>
	<input type="button" id="find_button" value="찾기" onclick="idFind()">
	</div>
	
	</form>
</body>
</html>