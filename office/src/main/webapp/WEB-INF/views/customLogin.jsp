<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<style>
#register{
    margin-left: 70px;
    margin-top: 10px;
}
</style>
</head>

<body>

	<div class="modal-wrap">

		<div class="modal-bodies">
			<div class="modal-body modal-body-step-1 is-showing">
				<div class="title">Log In</div>
				<div class="description">Hello there, Log In</div>
				<form:form method='post' action="/login">
					<input type="text" name="username" value="admin" />
					<input type="password" name="password" value="admin" />
					<div class="text-center">
						<div>
							<input class="button" type="submit" value='로그인'>
							<input type="checkbox" name="remember-me"> Remember Me
						</div>
					</div>
				</form:form>
        <form:form method='get' action="/register">
         <div>
         <a href="register"><input class="button" id="register" value="Create an account"/></a>
         </div>
        </form:form>
				</div>
			</div>
		</div>

	<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>



</body>
</html>
