<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:import url="/WEB-INF/views/include/head_meta.jsp" />
<c:import url="/WEB-INF/views/include/top_menu.jsp" />
<c:import url="/WEB-INF/views/include/nav_bar.jsp" />


<html>
<head>
<!-- DataTables CSS -->
<link href="${root}/resources/vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="${root}/resources/vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

<!-- CSS property for dogdrip -->
<link href="${root}/resources/css/dogdrip.css" rel="stylesheet">
</head>
<body>
	<div id="boxes">
		<div id="leftbox"></div>

		<div id="middlebox" class="col">
			<div class="panel panel-default">
				<div class="panel-heading">기모띠</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<table width="100%"
						class="table table-striped table-bordered table-hover"
						id="dataTables-example">
						<thead class="top_th">
							<tr>
								<th>제목</th>
								<th class="author">글쓴이</th>
								<th class="th_like">추천수</th>
								<th class="th_date">날짜</th>
							</tr>
						</thead>
						<c:forEach items="${boardList}" var="board">
							<tr>
								<td><c:out value="${board.board_title}"/></td>
								<td><c:out value="${board.board_creator_id}"/></td>
								<td class="td_like"><c:out value="${board.board_read}"/></td>
								<td class="td_date"><fmt:formatDate pattern="yyyy-MM-dd"
								value="${board.board_created_date}"/></td>
							</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		<div id="rightbox"></div>
	</div>
	
	<!-- Modal  추가 -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">Modal title</h4>
						</div>
						<div class="modal-body">오, 약한자여 그대 이름은 여자 이니라.</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary">Save
								changes</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<!-- /.modal -->
	<!-- Bootstrap Core JavaScript -->
    <script src="${root}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!-- DataTables JavaScript -->
	<script src="${root}/resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script src="${root}/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script src="${root}/resources/vendor/datatables-responsive/dataTables.responsive.js"></script>	
	<script src="${root}/resources/vendor/jquery/jquery.min.js"></script>
	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
		
		$(document).ready(function() {
			var result = '<c:out value="${result}"/>';
			checkModal(result);
		
		function checkModal(result) {

			if (result === '' || history.state) {
				return;
			}

			if (parseInt(result) > 0) {
				$(".modal-body").html(
						"게시글 " + parseInt(result)
								+ " 번이 등록되었습니다.");
			}

			$("#myModal").modal("show");
		}
		});
	</script>
	
	
</body>


</html>


<c:import url="/WEB-INF/views/include/footer.jsp" />
<c:import url="/WEB-INF/views/include/script.jsp" />
