<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<c:import url="/WEB-INF/views/include/head_meta.jsp" />
<c:import url="/WEB-INF/views/include/top_menu.jsp" />
<c:import url="/WEB-INF/views/include/nav_bar.jsp" />


<html>
<head>
<!-- CSS property for dogdrip -->
<link href="${root}/resources/css/dogdrip.css" rel="stylesheet">
</head>
<body>
	<div id="boxes">
		<div id="leftbox"></div>

		<div id="middlebox" class="col">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="panel-heading">
						글목록
						<button id='regBtn' type="button"
							class="btn btn-primary float-right">글쓰기</button>
					</div>
				</div>
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
						<c:forEach items="${list}" var="board">
							<tr>
								<!-- <td><c:out value="${board.board_title}" /></td>  -->
								<td><a
									href='/board/get?board_no=<c:out value="${board.board_no}"/>'><c:out
											value="${board.board_title}" /></a></td>
								<td><c:out value="${board.board_creator_id}" /></td>
								<td class="td_like"><c:out value="${board.board_read}" /></td>
								<td class="td_date"><fmt:formatDate pattern="yyyy-MM-dd"
										value="${board.board_created_date}" /></td>
							</tr>
						</c:forEach>
					</table>
					<div class='pull-right'>
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li class="paginate_button previous">
								<a href="${pageMaker.startPage -1}">Previous</a>
								</li>
							</c:if>

							<c:forEach var="num" begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}">
							<li class="paginate_button ${pageMaker.criteria.pageNum == num ? 'active' : ''}">
								<a href="${num}">${num}</a>
							</li>
							</c:forEach>

							<c:if test="${pageMaker.next}">
								<li class="paginate_button">
								<a href="${pageMaker.endPage +1}">Next</a>
								</li>
							</c:if>
						</ul>
					</div>
					<!--  end Pagination -->
					
				</div>
			</div>
		</div>
		</div>

			<form id='actionForm' action="/board/list" method='get'>
				<input type='hidden' name='pageNum' value='${pageMaker.criteria.pageNum}'>
				<input type='hidden' name='amount' value='${pageMaker.criteria.amount}'>

				<input type='hidden' name='type'
					value='<c:out value="${ pageMaker.criteria.type }"/>'> 
					<input  type='hidden' name='keyword'
					value='<c:out value="${ pageMaker.criteria.keyword }"/>'>


			</form>
		<div id="rightbox"></div>

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
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Save changes</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		$(document).ready(function() {

							var result = '<c:out value="${result}"/>';

							checkModal(result);

							history.replaceState({}, null, null);

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

							$("#regBtn").on("click", function() {

								self.location = "/board/register";

							});
							
							var actionForm = $("#actionForm");

							$(".paginate_button a").on(
									"click",
									function(e) {

										e.preventDefault();

										console.log('click');

										actionForm.find("input[name='pageNum']")
												.val($(this).attr("href"));
										actionForm.submit();
									});


						});
	</script>


</body>


</html>


<c:import url="/WEB-INF/views/include/footer.jsp" />
<c:import url="/WEB-INF/views/include/script.jsp" />
