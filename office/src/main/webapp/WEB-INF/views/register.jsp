<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="title" content="Ask online Form">
<meta name="description" content="The Ask is a bootstrap design help desk, support forum website template coded and designed with bootstrap Design, Bootstrap, HTML5 and CSS. Ask ideal for wiki sites, knowledge base sites, support forum sites">
<meta name="keywords" content="HTML, CSS, JavaScript,Bootstrap,js,Forum,webstagram ,webdesign ,website ,web ,webdesigner ,webdevelopment">
<meta name="robots" content="index, nofollow">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="language" content="English">
<link href="https://fonts.googleapis.com/css?family=Roboto:300,400" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link rel="stylesheet" href="${root}/resources/css/loginstyle.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="${root}/resources/js/jquery-3.1.1.min.js"></script>
<style>
#email, #userpw, #userpw2, #username {
	padding: 10px 20px;
	border: 1px solid #999;
	border-radius: 3px;
	display: block;
	width: 100%;
	margin-bottom: 20px;
	box-sizing: border-box;
	outline: none;
}

#email_check_input {
	padding: 10px 20px;
	width: 69%;
}

#userid {
	padding: 10px 20px;
	width: 65%;
	margin-bottom: 20px;
}

#check {
	padding: 10px 20px;
	width: 23%;
}

#email_check_button {
	padding: 10px 20px;
}

#mail_check_input_box_false {
	background-color: #ebebe4;
}

#mail_check_input_box_true {
	background-color: white;
}

/* 메일 영역 */
#mail_check_input_box_false {
	background-color: #ebebe4;
}

#mail_check_input_box_true {
	background-color: white;
}

.correct {
	color: green;
}

.incorrect {
	color: red;
}

/* 유효성 검사 문구 */
.final_id_ck {
	display: none;
}

.final_pw_ck {
	display: none;
}

.final_pwck_ck {
	display: none;
}

.final_name_ck {
	display: none;
}

.final_mail_ck {
	display: none;
}

.final_addr_ck {
	display: none;
}

/* 중복아이디 존재하지 않는경우 */
.id_input_re_1 {
	color: green;
	display: none;
}
/* 중복아이디 존재하는 경우 */
.id_input_re_2 {
	color: red;
	display: none;
}
/* 비밀번호 확인 일치 유효성검사 */
.pwck_input_re_1 {
	color: green;
	display: none;
}

.pwck_input_re_2 {
	color: red;
	display: none;
}

/* float 속성 해제 */
.clearfix {
	clear: both;
}
</style>
</head>

<body>

	<div class="modal-wrap">

		<div class="modal-bodies">
			<div class="modal-body modal-body-step-1 is-showing">
				<div class="title">Sign Up</div>
				<div class="description">Hello there, Register Form</div>
				<form:form action="/register" method="post" id="register" onsubmit="return checks()">

					<div class="id_wrap">
						<div class="id_input_box">
							<input class="id_input" name="userid" placeholder="userid" id="userid">
							<input type="button" id="check" value="중복체크">
							<span id="idCheck" class="idCheck"></span>
						</div>
						<span class="id_input_re_1">사용 가능한 아이디입니다.</span> <span class="id_input_re_2">아이디가 이미 존재합니다.</span> <span class="final_id_ck">아이디를 입력해주세요.</span>
					</div>
					<div class="pw_wrap">
						<div class="pw_input_box">
							<input type="password" class="pw_input" name="userpw" placeholder="password 최소 4자리" id="userpw">
						</div>
						<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
					</div>
					<div class="pwck_wrap">
						<div class="pwck_input_box">
							<input type="password" class="pwck_input" name="userpw2" placeholder="password check" id="userpw2">
						</div>
						<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span> <span class="pwck_input_re_1">비밀번호가 일치합니다.</span> <span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
					</div>
					<div class="user_wrap">
						<div class="user_input_box">
							<input class="user_input" name="username" placeholder="username" id="username">
						</div>
						<span class="final_name_ck">이름을 입력해주세요.</span>
					</div>

					<input class="mail_input" name="email" placeholder="email" id="email">
					<span class="final_mail_ck">이메일을 입력해주세요.</span>

					<div class="mail_check_input_box" id="mail_check_input_box_false">
						<input class="mail_check_input" placeholder="eamil" name="email" id="email_check_input" disabled="disabled" />
						<input type="button" class="mail_check_button" value="전송" id="email_check_button">
						<div class="clearfix"></div>
						<span id="mail_check_input_box_warn"></span>
					</div>

					<div class="col-md-4">
						<div class="row text-center sign-with">
							<div class="col-md-12">
								<h3>Sign in with</h3>
							</div>
							<div class="col-md-12 sign-in28912">
								<div class="btn-group btn-group-justified">
									<a href="#" class="btn btn-primary btn-primary3838">Facebook</a> <a href="#" class="btn btn-danger btn-danger37883"> Google</a>
								</div>
							</div>
						</div>
					</div>
					<div class="text-center">
						<input class="button" type="submit" id="submit" value="가입" />
						<input class="button" type="reset" id="cancle" value="취소" />
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
	<script>
    var code = "";
    var mailnumCheck = false;
    var idx = false;
    var getCheck = RegExp(/^[a-zA-Z0-9]{4,12}$/);

    // 유효성 검사 함수 
    function checks() {

      var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
      var getCheck = RegExp(/^[a-zA-Z0-9]{4,12}$/);

      //아이디 공백 확인 
      if ($("#userid").val() == "") {
        alert("아이디 입력바람");
        $("#userid").focus();
         return false;
      }

      //아이디 유효성검사 
      if (!getCheck.test($("#userid").val())) {
        alert("아이디최소 4글자");
        $("#userid").val("");
        $("#userid").focus();
        return false;
      }
      
    //아이디 유효성검사 
      if (idx == false) {
        alert("아이디 중복확인");
        $("#userid").focus();
        return false;
      }

      //비밀번호 공백 확인 
      if ($("#userpw").val() == "") {
        alert("패스워드 입력바람");
        $("#userpw").focus();
        return false;
      }

      //아이디 비밀번호 같음 확인 
      if ($("#userid").val() == $("#userpw").val()) {
        alert("아이디와 비밀번호가 같습니다");
        $("#userpw").val("");
        $("#userpw").focus();
        return false;
      }

      //비밀번호 유효성검사 
      if (!getCheck.test($("#userpw").val())) {
        alert("형식에 맞게 입력해주세요");
        $("#userpw").val("");
        $("#userpw").focus();
        return false;
      }

      //비밀번호 확인란 공백 확인 
      if ($("#userpw2").val() == "") {
        alert("패스워드 확인란을 입력해주세요");
        $("#userpw2").focus();
        return false;
      }

      //비밀번호 서로확인 
      if ($("#userpw").val() != $("#userpw2").val()) {
        alert("비밀번호가 상이합니다");
        $("#userpw").val("");
        $("#userpw2").val("");
        $("#userpw").focus();
        return false;
      }

      //이름 공백 검사 
      if ($("#username").val() == "") {
        alert("이름을 입력해주세요");
        $("#username").focus();
        return false;
      }

      //이메일 공백 확인 
      if ($("#email").val() == "") {
        alert("이메일을 입력해주세요");
        $("#email").focus();
        return false;
      }

      //이메일 유효성 검사 
      if (!getMail.test($("#email").val())) {
        alert("이메일형식에 맞게 입력해주세요");
        $("#email").val("");
        $("#email").focus();
        return false;
      }

      /* 최종 유효성 검사 */
      if (mailnumCheck) {
        $("#submit").attr("action", "/register");
        $("#submit").submit();
      }

      return false;
    }
    

    /* 인증번호 이메일 전송 */
    $(".mail_check_button").click(function() {

      var email = $(".mail_input").val(); // 입력한 이메일
      var checkBox = $(".mail_check_input");
      var boxWrap = $(".mail_check_input_box")

      $.ajax({

      type : "GET",
      url : "mailCheck?email=" + email,
      success : function(data) {
        //console.log('data : ' + data);
        checkBox.attr("disabled", false);
        boxWrap.attr("id", "mail_check_input_box_true");
        code = data;
      }
      });
    });

    /* 인증번호 비교 */
    $(".mail_check_input").blur(function() {

      var inputCode = $(".mail_check_input").val(); // 입력코드    
      var checkResult = $("#mail_check_input_box_warn"); // 비교 결과     

      if (inputCode == code) { // 일치할 경우
        checkResult.html("인증번호가 일치합니다.");
        checkResult.attr("class", "correct");
        mailnumCheck = true;
      } else { // 일치하지 않을 경우
        checkResult.html("인증번호를 다시 확인해주세요.");
        checkResult.attr("class", "incorrect");
        mailnumCheck = false;
      }

    });
    
    $('#check').click(function(){
      $.ajax({
        url: "/qwer",
        type: "GET",
        data:{
          "userid":$('#userid').val()
        },
        success: function(data){
          if(data == "낫중복" && $.trim($('#userid').val()) != '' ){
            idx=true;
            $('#userid').attr("readonly",true);
            alert("아이디 사용 가능");
          }else{
            alert("아이디 중복, 사용불가");
          }
        },
        error: function(){
          alert("서버에러");
        }
      });
    });


   
  </script>


</body>
</html>
