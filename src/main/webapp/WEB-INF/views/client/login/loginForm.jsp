<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@	taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@	taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<body>
<div>
    <form:form id="login_form" method="post">
    <h1>로  그  인</h1>
        <div>
            <label for="user_id" class="form-label">아 이 디</label>
            <input type="text" class="idInput" name="user_id" id="user_id" >
        </div>
        <div>
            <label for="user_pwd" class="form-label">비밀번호</label>
            <input type="password" class="pwdInput" name="user_pwd" id="user_pwd" >
        </div>
        <br>
        <input type="submit" class="login_button" value="로그인">
        <br>
        <input type="button" class="idFind_button" value="아이디 찾기" onclick="idFindPop()">
        <input type="button" class="pwdFind_button" value="비밀번호 찾기" onclick="pwdFindPop()">
    </form:form>
</div>
</body>

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> 
<script>
	
	// 로그인 버튼
	 $(".login_button").click(function(){
		 
		if (!$("#user_id").val()){
			alert("아이디를 입력해 주세요");
			return false;
		}
		
		if (!$("#user_pwd").val()){
			alert("비밀번호를 입력해 주세요");
			return false;
		}
		
		// 로그인 메서드 서버 요청
		$("#login_form").attr("action", "/login/loginForm");
        $("#login_form").submit();
       
    })
    
    // 로그인 실패할 경우
    <c:if test = "${result == 0 }">
    alert("회원정보가 일치하지 않습니다.");
    </c:if>
    
    // 아이디찾기 버튼
    function idFindPop(){
    	window.open("idFindPopup","아이디 찾기","width=470,height=250,left=400")

    }
    
 	// 비밀번호찾기 버튼
    function pwdFindPop(){
    	window.open("pwdFindPopup","비밀번호 찾기","width=470,height=300,left=400")

    }
    
</script>

