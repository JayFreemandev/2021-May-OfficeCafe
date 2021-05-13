<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:import url="/WEB-INF/views/include/head_meta.jsp" />
<c:import url="/WEB-INF/views/include/top_menu.jsp" />
<c:import url="/WEB-INF/views/include/nav_bar.jsp" />
<!-- 상세 보기 복구 !-->

<html>
<head>


<!-- CSS property to place div
            side by side -->
<style>
body {
	height: 100vh;
	backgorund: #e0e2e4;
}

#leftbox {
	float: left;
	background: #e0e2e4;
	width: 20%;
	height: 100%;
}

#middlebox {
	text-align: reft;
	float: left;
	background: white;
	width: 60%;
	height: 100vh;
}

#rightbox {
	float: right;
	background: #e0e2e4;
	width: 20%;
	height: 100%;
}

#board, select {
	margin: 10px 0px 0px 0px;
	height: 50%;
}

#pgal {
	font-family: TmonMonsori, "GodoB", "굴림";
	font-size: 120%;
	color: #171787;
}
</style>
</head>

<body>
	<div id="boxes">
		<div id="leftbox"></div>

		<div id="middlebox" class="">
		
			<form role="form" method="post" action="index.php">
				<p id="pgal">프로그래밍 갤러리</p>
				<hr style="border: solid 2px #171787;">
				<div id="board">
					<!--  <div class="form-group"> -->
					<select class="form-select form-select-sm"
						aria-label=".form-select-sm example" id="select">
						<option selected>게시판을 선택해주세요</option>
						<option value="1">자유게시판</option>
						<option value="2">무슨게시판</option>
						<option value="3">아무게시판</option>
					</select>
					
					<!--<label for="name" class="col-sm-2 control-label">계시판</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="name" name="name" placeholder="유머게시판" value="">
		 -->
					<!--</div> -->
					<div class="form-group">
						<label for="email" class="col-sm-2 control-label">제목</label>
						<div class="col-sm-10">
							<input type="email" class="form-control" id="email" name="email"
								placeholder="야탑 고시원에서 일어난 ssul" value="">
						</div>
					</div>
					<div class="form-group">
						<label for="message" class="col-sm-2 control-label">내용</label>
						<div class="col-sm-10">
							<textarea class="form-control" rows="4" name="message"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-sm-10 col-sm-offset-2">
							<input id="submit" name="submit" type="submit" value="저장"
								class="btn btn-primary">
						</div>
					</div>
				</div>
</form>
		</div>
		<div id="rightbox"></div>
	</div>

</body>
</html>


<c:import url="/WEB-INF/views/include/footer.jsp" />
<c:import url="/WEB-INF/views/include/script.jsp" />
