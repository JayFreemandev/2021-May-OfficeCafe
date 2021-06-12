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

<script type="text/javascript">
  $(document).ready(function() {
    // 취소
    $("#cancle").on("click", function() {

      location.href = "/customLogin";

    });

    $("#submit").on("click", function() {
      if ($("#userid").val() == "") {
        alert("아이디를 입력해주세요.");
        $("#userId").focus();
        return false;
      }
      if ($("#userpw").val() == "") {
        alert("비밀번호를 입력해주세요.");
        $("#userPass").focus();
        return false;
      }
      if ($("#userpw").val() == $("#userpw2").val()) {
        alert("비밀번호가 다릅니다.");
        $("#userPass").focus();
        return false;
      }
      if ($("#username").val() == "") {
        alert("성명을 입력해주세요.");
        $("#username").focus();
        return false;
      }
    });

  });
</script>
</head>

<body>

	<div class="modal-wrap">

		<div class="modal-bodies">
			<div class="modal-body modal-body-step-1 is-showing">
				<div class="title">Sign Up</div>
				<div class="description">Hello there, Register Form</div>
				<form:form action="/register" method="post">
					<input type="text" placeholder="userid" name="userid" id="userid"/>
					<input type="password" placeholder="userpw" name="userpw" id="userpw"/>
					<input type="password" placeholder="Confirm Password*" name="userpw2" id="userpw2"/>
					<input type="text" placeholder="username" name="username" id="username"/>
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
						<input class="button" type="submit" id="submit" value="가입"/>
            <input class="button" type="reset" id="cancle" value="취소"/>
					</div>
				</form:form>
			</div>


		</div>
	</div>
	<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>



</body>
</html>
