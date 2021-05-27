<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<div id="leftbox"></div>

		<div id="middlebox" class="col">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Board Register</h1>

					<h1 class="h2 mb-4">Submit issue</h1>
					<div class="form-group">
						<label for="board_no">글번호</label>
						<input type="text" class="form-control" id="name" name="board_no" value='<c:out value="${board.board_no}"/>' readonly="readonly">
					</div>
					<div class="form-group">
						<label for="board_title">제목</label>
						<input type="text" class="form-control" id="name" name="board_title" value='<c:out value="${board.board_title}"/>' readonly="readonly">
					</div>

					<div class="form-group">
						<label for="board_creator_id">작성자</label>
						<input type="text" class="form-control" id="name" name="board_creator_id" value='<c:out value="${board.board_creator_id}"/>' readonly="readonly">
					</div>

					<div class="form-group">
						<label>내용</label><br>
						<textarea id="editor" name="board_contents" rows="3" name='content' readonly="readonly"><c:out value="${board.board_contents}" /></textarea>
					</div>

					<hr>

					<button data-oper='modify' class="btn btn-default">Modify</button>
					<button data-oper='list' class="btn btn-info">List</button>

					<form id='operForm' action="/board/modify" method="get">
						<input type='hidden' id='board_no' name='board_no' value='<c:out value="${board.board_no}"/>'>
						<input type='hidden' name='pageNum' value='<c:out value="${criteria.pageNum}"/>'>
						<input type='hidden' name='amount' value='<c:out value="${criteria.amount}"/>'>
						<input type='hidden' name='pageNum' value='<c:out value="${pageMaker.criteria.pageNum}"/>' />
						<input type='hidden' name='amount' value='<c:out value="${pageMaker.criteria.amount}"/>' />
					</form>

				</div>
			</div>

			<!-- /.row -->

			<div class='row'>
				<div class="col-lg-12">
					<!--  /.panel -->
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-comments fa-fw"></i> Reply
							<button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>New Reply</button>
						</div>

						<!--  /.panel-heading -->
						<div class="panel-body">
							<ul class="chat">
								<!-- start reply -->
								<li class="left clearfix" data-rid='12'>
									<div>
										<div class="header">
											<strong class="primary-font">user00</strong> <small class="pull-right text-muted">2021-02-18 13: 13</small>
										</div>
										<p>Good job!</p>
									</div>
								</li>
								<!-- end reply -->
							</ul>
						</div>
						<div class="panel-footer"></div>



					</div>
				</div>
			</div>
	</div>
</div>

	<div id="rightbox"></div>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">Reply MODAL</h4>
				</div>
				<div class="modal-body">
					<div class="form-group">
						<label>Reply</label>
						<input class="form-control" name='contents' value='New Reply!!!!' />
					</div>
					<div class="form-group">
						<label>Replyer</label>
						<input class="form-control" name='reg_id' value='replyer' />
					</div>
					<div class="form-group">
						<label>Reply Date</label>
						<input class="form-control" name='reg_dt' value='' />
					</div>
				</div>
				<div class="modal-footer">
					<button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
					<button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
					<button id='modalRegisterBtn' type="button" class="btn btn-danger" data-dismiss="modal">Register</button>
					<button id='modalCloseBtn' type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<script type="text/javascript" src="/resources/js/reply.js"></script>

	<script>
    $(document).ready(function() {

      var bnoValue = '<c:out value="${board.board_no}"/>';
      var replyUL = $(".chat");
      var timeValue;
      
      showList(1);

      function showList(page) {

        console.log("show list " + page);
        
        replyService.getList({bid : bnoValue, page : page || 1
          }, function(replyCnt, list) {
  
          console.log("replyCnt 댓글수: " +replyCnt);
          console.log("list 댓글목록: " +list);
          
          if(page == -1){
            pageNum = Math.ceil(replyCnt/10.0);
            showList(pageNum);
            return;
          }

          var str = "";

          if (list == null || list.length == 0) {
            return;
          }

          for (var i = 0, len = list.length || 0; i < len; i++) {
            str += "<li class='left clearfix' data-rid='"+list[i].rid+"'>";
            str += "  <div><div class='header'><strong class='primary-font'>[" + list[i].rid + "] " + list[i].reg_id + "</strong>";
            str += "    <small class='pull-right text-muted'>" + replyService.displayTime(list[i].reg_dt) + "</small></div>";
            str += "    <p>" + list[i].contents + "</p></div></li>";
          }

          replyUL.html(str);

          showReplyPage(replyCnt);

        });//end function

      }//end showList
      
      var pageNum = 1;
      var replyPageFooter = $(".panel-footer");
      
      function showReplyPage(replyCnt){
        
        var endNum = Math.ceil(pageNum / 10.0) * 10;  
        var startNum = endNum - 9; 
        
        var prev = startNum != 1;
        var next = false;
        
        if(endNum * 10 >= replyCnt){
          endNum = Math.ceil(replyCnt/10.0);
        }
        
        if(endNum * 10 < replyCnt){
          next = true;
        }
        
        var str = "<ul class='pagination pull-right'>";
        
        if(prev){
          str+= "<li class='page-item'><a class='page-link' href='"+(startNum -1)+"'>Previous</a></li>";
        }
        
        for(var i = startNum ; i <= endNum; i++){
          
          var active = pageNum == i? "active":"";
          
          str+= "<li class='page-item "+active+" '><a class='page-link' href='"+i+"'>"+i+"</a></li>";
        }
        
        if(next){
          str+= "<li class='page-item'><a class='page-link' href='"+(endNum + 1)+"'>Next</a></li>";
        }
        
        str += "</ul></div>";
        
        console.log(str);
        
        replyPageFooter.html(str);
      }
       
      replyPageFooter.on("click","li a", function(e){
         e.preventDefault();
         console.log("page click");
         
         var targetPageNum = $(this).attr("href");
         
         console.log("targetPageNum: " + targetPageNum);
         
         pageNum = targetPageNum;
         
         showList(pageNum);
       });

      var modal = $(".modal");
      var modalInputReply = modal.find("input[name='contents']");
      var modalInputReplyer = modal.find("input[name='reg_id']");
      var modalInputReplyDate = modal.find("input[name='reg_dt']");

      var modalModBtn = $("#modalModBtn");
      var modalRemoveBtn = $("#modalRemoveBtn");
      var modalRegisterBtn = $("#modalRegisterBtn");

      $("#modalCloseBtn").on("click", function(e) {

        modal.modal('hide');
      });

      $("#addReplyBtn").on("click", function(e) {

        modal.find("input").val("");
        modalInputReplyDate.closest("div").hide();
        modal.find("button[id !='modalCloseBtn']").hide();

        modalRegisterBtn.show();

        $(".modal").modal("show");

      });

      modalRegisterBtn.on("click", function(e) {

        var reply = {
        contents : modalInputReply.val(),
        reg_id : modalInputReplyer.val(),
        bid : bnoValue
        };
        replyService.add(reply, function(result) {

          alert(result);

          modal.find("input").val("");
          modal.modal("hide");

          //showList(1);
          showList(-1);

        });

      });

      //댓글 조회 클릭 이벤트 처리 
      $(".chat").on("click", "li", function(e) {

        var rid = $(this).data("rid");

        replyService.get(rid, function(reply) { // 해당 댓글번호, 내용 가져오기

          modalInputReply.val(reply.contents);
          modalInputReplyer.val(reply.reg_id);
          modalInputReplyDate.val(replyService.displayTime(reply.reg_dt)).attr("readonly", "readonly");
          modal.data("rid", reply.rid);

          modal.find("button[id !='modalCloseBtn']").hide();
          modalModBtn.show();
          modalRemoveBtn.show();

          $(".modal").modal("show");

        });

      });
      
      modalModBtn.on("click", function(e){
        
        var reply = {rid:modal.data("rid"), contents: modalInputReply.val()};
        replyService.update(reply, function(result){
              
          alert(result);
          modal.modal("hide");
          showList(pageNum);
          
        });
        
      });

      modalRemoveBtn.on("click", function (e){
        
        var reply = {contents : modalInputReply.val()};
        var rid = modal.data("rid");
       
        
        replyService.remove(rid, function(result){
              
            alert(result);
            modal.modal("hide");
            showList(pageNum);
            
        });
        
      });


    });
  </script>

	<script type="text/javascript">
    $(document).ready(function() {

      var operForm = $("#operForm");

      $("button[data-oper='modify']").on("click", function(e) {

        operForm.attr("action", "/board/modify").submit();

      });

      $("button[data-oper='list']").on("click", function(e) {

        operForm.find("#bid").remove();
        operForm.attr("action", "/board/list")
        operForm.submit();

      });
    });
  </script>
</body>


</html>


<c:import url="/WEB-INF/views/include/footer.jsp" />
<c:import url="/WEB-INF/views/include/script.jsp" />