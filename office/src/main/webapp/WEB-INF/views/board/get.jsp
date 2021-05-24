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
<script src="https://cdn.tiny.cloud/1/p4uo3w5n6ipsyd8kpwe4nmi8jmm9tvqd711e5nbwflbakqox/tinymce/5/tinymce.min.js"></script>

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
		<div id="leftbox">
	</div>

		<div id="middlebox" class="col">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Board Register</h1>
					
						<h1 class="h2 mb-4">Submit issue</h1>
						<div class="form-group">
							<label for="board_no">글번호</label> <input type="text"
								class="form-control" id="name" name="board_no"
								value='<c:out value="${board.board_no}"/>' readonly="readonly">
						</div>
						<div class="form-group">
							<label for="board_title">제목</label> <input type="text"
								class="form-control" id="name" name="board_title"
								value='<c:out value="${board.board_title}"/>'
								readonly="readonly">
						</div>

						<div class="form-group">
							<label for="board_creator_id">작성자</label> <input type="text"
								class="form-control" id="name" name="board_creator_id"
								value='<c:out value="${board.board_creator_id}"/>'
								readonly="readonly">
						</div>

						<div class="form-group">
							<label>내용</label><br>
							<textarea id="editor" name="board_contents" rows="3"
								name='content' readonly="readonly"><c:out
									value="${board.board_contents}" /></textarea>
						</div>

						<hr>

						<button data-oper='modify' class="btn btn-default">Modify</button>
						<button data-oper='list' class="btn btn-info">List</button>

						<form id='operForm' action="/board/modify" method="get">
							<input type='hidden' id='board_no' name='board_no' value='<c:out value="${board.board_no}"/>'>	
							<input type='hidden' name='pageNum' value='<c:out value="${criteria.pageNum}"/>'>
							<input type='hidden' name='amount' value='<c:out value="${criteria.amount}"/>'>
							<input
								type='hidden' name='pageNum'
								value='<c:out value="${pageMaker.criteria.pageNum}"/>' /> <input
								type='hidden' name='amount'
								value='<c:out value="${pageMaker.criteria.amount}"/>' />
						</form>

					</div>
				</div>
			</div>
			<!-- /.row -->
			
		</div>
		<div id="rightbox">
		</div>

	 
	<script src="${root}/resources/js/texteditor.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {

			var operForm = $("#operForm");

			$("button[data-oper='modify']").on("click", function(e) {

				operForm.attr("action", "/board/modify").submit();

			});

			$("button[data-oper='list']").on("click", function(e) {

				operForm.find("#board_no").remove();
				operForm.attr("action", "/board/list")
				operForm.submit();

			});
		});
	</script>
</body>


</html>


<c:import url="/WEB-INF/views/include/footer.jsp" />
<c:import url="/WEB-INF/views/include/script.jsp" />