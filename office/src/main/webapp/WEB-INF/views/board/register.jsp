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
  selector: '#editor',
  menubar: false,
  statusbar: false,
  image_title: true,
  automatic_uploads: true,
  plugins: 'autoresize anchor autolink charmap code codesample directionality fullpage help hr image image code codeimage imagetools insertdatetime link lists media nonbreaking pagebreak preview print searchreplace table template textpattern toc visualblocks visualchars',
  toolbar: 'h1 h2 bold italic strikethrough blockquote bullist numlist backcolor | undo redo | link image | code | link image media | removeformat help fullscreen ',
  skin: 'bootstrap',
  toolbar_drawer: 'floating',
  min_height: 200,
  autoresize_bottom_margin: 16,
  setup: (editor) => {
    editor.on('init', () => {
      editor.getContainer().style.transition = "border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out"
    });
    editor.on('focus', () => {
      editor.getContainer().style.boxShadow = "0 0 0 .2rem rgba(0, 123, 255, .25)",
        editor.getContainer().style.borderColor = "#80bdff"
    });
    editor.on('blur', () => {
      editor.getContainer().style.boxShadow = "",
        editor.getContainer().style.borderColor = ""
    });
  },

  file_picker_types: 'image',
  /* and here's our custom image picker*/
  file_picker_callback: function (cb, value, meta) {
    var input = document.createElement('input');
    input.setAttribute('type', 'file');
    input.setAttribute('accept', 'image/*');

    input.onchange = function () {
      var file = this.files[0];

      var reader = new FileReader();
      reader.onload = function () {

        var id = 'blobid' + (new Date()).getTime();
        var blobCache =  tinymce.activeEditor.editorUpload.blobCache;
        var base64 = reader.result.split(',')[1];
        var blobInfo = blobCache.create(id, file, base64);
        blobCache.add(blobInfo);

        cb(blobInfo.blobUri(), { title: file.name });
      };
      reader.readAsDataURL(file);
    };

    input.click();
  },
  content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }',
});
</script>
<style>
#form{
	width:100%;
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
					<form role="form" action="/board/register" method="post" id="form">
						<div class="col-lg-12">
							<h1 class="h2 mb-4">Submit issue</h1>
							<div class="form-group">
								<label for="name">제목</label> <input type="text"
									class="form-control" id="name" name="board_title">
							</div>

							<div class="form-group">
								<label for="name">작성자</label> <input type="text"
									class="form-control" id="name" name="board_creator_id">
							</div>

							<div class="form-group">
								<label>내용</label><br>
								<textarea id="editor" name="board_contents"></textarea>
							</div>

							<hr>

							<button type="submit" class="btn btn-primary">저장</button>
							<button type="submit" class="btn btn-primary">목록</button>
							<button type="submit" class="btn btn-primary">수정</button>
							<button type="submit" class="btn btn-primary">삭제</button>
						</div>
					</form>
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
