<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:import url="/WEB-INF/views/include/head_meta.jsp" />
<c:import url="/WEB-INF/views/include/top_menu.jsp" />
<c:import url="/WEB-INF/views/include/nav_bar.jsp" />

<html>
<head>
<!-- CSS property for dogdrip -->
<link href="${root}/resources/css/dogdrip.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://cdn.tiny.cloud/1/p4uo3w5n6ipsyd8kpwe4nmi8jmm9tvqd711e5nbwflbakqox/tinymce/5/tinymce.min.js"
	referrerpolicy="origin"></script>

<script>
	tinymce.init({
		selector : 'textarea#editor',
		menubar : false
	});
</script>
<style>
#form {
	width: 100%;
}
</style>
</head>
<body>
	<div id="boxes">
		<div id="leftbox"></div>

		<div id="middlebox" class="col">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Board Register</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->

			<div class="container mt-4 mb-4">
				<div class="row justify-content-md-center">
					<div class="col-lg-12">
						<h1 class="h2 mb-4">Submit issue</h1>
						<div class="form-group">
							<label for="board_no">글번호</label> <input type="text"
								class="form-control" id="name" name="board_no"
								value='<c:out value="${board.board_no}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label for="board_title">제목</label> <input type="text"
								class="form-control" id="name" name="board_title"
								value='<c:out value="${board.board_title}"/>' readonly="readonly">
						</div>

						<div class="form-group">
							<label for="board_creator_id">작성자</label> <input type="text"
								class="form-control" id="name" name="board_creator_id"
								value='<c:out value="${board.board_creator_id}"/>' readonly="readonly">
						</div>

						<div class="form-group">
							<label>내용</label><br>
							<textarea id="editor" name="board_contents" rows="3"
								name='content' readonly="readonly"><c:out
									value="${board.board_contents}" /></textarea>
						</div>

						<hr>

						<button type="submit" class="btn btn-primary">저장</button>
						<button data-oper='modify' class="btn btn-primary"
						onclick="location.href='/board/modify?board_no=<c:out value="${board.board_no}"/>'">수정</button>
						<button data-oper='delete' class="btn btn-primary"
						onclick="location.href='/board/list'">목록</button>
						<button data-oper='delete' class="btn btn-primary">삭제</button>
					</div>
				</div>
			</div>
			<!-- /.row -->
		</div>
		<div id="rightbox"></div>
	</div>
	<script src="${root}/resources/js/texteditor.js"></script>
</body>


</html>


<c:import url="/WEB-INF/views/include/footer.jsp" />
<c:import url="/WEB-INF/views/include/script.jsp" />