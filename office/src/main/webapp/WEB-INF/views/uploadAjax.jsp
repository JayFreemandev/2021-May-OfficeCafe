<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>upload with ajax</h1>

	<div class='uploadDiv'>
		<input type="file" name="uploadFile" multiple>
	</div>

	<button id="uploadBtn">Upload</button>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous">
    
  </script>

	<script>
    var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$"); // exe, zip 이런거 못올리게 
    var maxSize = 5242880; // 최대 사이즈 5MB로 제한

    function checkExtension(fileName, fileSize) {
      if (fileSize >= maxSize) {
        alert("파일 사이즈 초과");
        return false;
      }

      if (regex.test(fileName)) {
        alert("해당 종류의 파일은 업로드할 수 없습니다.")
        return false;
      }
      return true;
    }
    

    var cloneObj = $(".uploadDiv").clone();

    $("#uploadBtn").on("click", function(e) {

      var formData = new FormData();

      var inputFile = $("input[name='uploadFile']");

      var files = inputFile[0].files;

      console.log(files);

      //add filedate to formdata
      for (var i = 0; i < files.length; i++) {

        if (!checkExtension(files[i].name, files[i].size)) {
          return false;
        }

        formData.append("uploadFile", files[i]);

      }

      $.ajax({
      url : '/uploadAjaxAction',
      processData : false,
      contentType : false,
      data : formData,
      type : 'POST',
      dataType : 'json',
      success : function(result) {

        alert("Uploaded");
        console.log(result);
        $(".uploadDiv").html(cloneObj.html()); // 빈 div를 복사후 업로드시 다시 빈버튼 만들기 초기화
      }
      });

    });
  </script>
</body>
</html>