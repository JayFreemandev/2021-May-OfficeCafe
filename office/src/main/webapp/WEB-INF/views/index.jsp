<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="title" content="Ask online Form">
<meta name="description" content="The Ask is a bootstrap design help desk, support forum website template coded and designed with bootstrap Design, Bootstrap, HTML5 and CSS. Ask ideal for wiki sites, knowledge base sites, support forum sites">
<meta name="keywords" content="HTML, CSS, JavaScript,Bootstrap,js,Forum,webstagram ,webdesign ,website ,web ,webdesigner ,webdevelopment">
<meta name="robots" content="index, nofollow">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="language" content="English">
<title>Ask Me</title>
<link href="${root}/resources/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${root}/resources/css/style.css" rel="stylesheet" type="text/css">
<!-- <link href="css/animate.css" rel="stylesheet" type="text/css"> -->
<link href="${root}/resources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>

<body>
	<!--======== Navbar =======-->
	<div class="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="navbar-menu-left-side239">
						<ul>
							<li><a href="#"><i class="fa fa-envelope-o" aria-hidden="true"></i>안내</a></li>
							<li><a href="#"><i class="fa fa-headphones" aria-hidden="true"></i>도움</a></li>
							<sec:authorize access="isAnonymous()">
								<li><a href="/customLogin"><i class="fa fa-user" aria-hidden="true"></i>로그인</a></li>
							</sec:authorize>
							<sec:authorize access="isAuthenticated()">
								<li><a href="/customLogout"><i class="fa fa-user" aria-hidden="true"></i>로그아웃</a></li>
							</sec:authorize>
						</ul>
					</div>
				</div>
				<div class="col-md-6"></div>
			</div>
		</div>
	</div>


	<!-- ==========header mega navbar=======-->
	<div class="top-menu-bottom932">
		<nav class="navbar navbar-default">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/board/list"><img src="${root}/resources/image/logo.png" alt="Logo"></a>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/board/list" class="pull-left">홈</a></li>
						<li><a href="/board/register">물어봐</a></li>
						<!--
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">카테고리 <span class="caret"></span></a>
							<ul class="dropdown-menu animated zoomIn">
								<li><a href="category.html">Question Category</a></li>
								<li><a href="category.html">HTML</a></li>
								<li><a href="category.html">CSS</a></li>
								<li><a href="category.html">Javascript</a></li>
								<li><a href="category.html">Bootstrap</a></li>
							</ul></li>
            <!--  
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">test <span class="caret"></span></a>
							<ul class="dropdown-menu animated zoomIn">
								<li><a href="blog.html">Blog </a></li>
							</ul></li>
						
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">page <span class="caret"></span></a>
							<ul class="dropdown-menu animated zoomIn">
								<li><a href="logIn.html">Login</a></li>
								<li><a href="contact_us.html"> Contact Us</a></li>
								<li><a href="ask_question.html"> Ask Question </a></li>
								<li><a href="post-deatils.html"> Post-Details </a></li>
								<li><a href="user.html">All User</a></li>
								<li><a href="user_question.html"> User Question </a></li>
								<li><a href="category.html"> Category </a></li>
								<li><a href="#"> 404 </a></li>
							</ul></li>
						-->
						<li><a href="/customLogin">로그인</a></li>
						<li><a href="/customLogout">회원가입</a></li>
					</ul>
				</div>
				<!-- /.navbar-collapse -->
			</div>
			<!-- /.container-fluid -->
		</nav>
	</div>


	<!--======= welcome section on top background=====-->
	<section class="welcome-part-one">
		<div class="container">
			<div class="welcome-demop102 text-center">
				<div class="button0239-item"></div>
				<div class="form-style8292">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-pencil-square" aria-hidden="true"></i></span>
						<input type="text" class="form-control form-control8392" placeholder="Ask any question and you be sure find your answer ?">
						<span class="input-group-addon" id="searchForm"><a href="#">검색</a></span>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- ======content section/body=====-->
	<section class="main-content920">
		<div class="container">
			<div class="row">
				<div class="col-md-9">
					<div id="main">
						<input id="tab1" type="radio" name="tabs" checked>
						<label for="tab1">Recent Question</label>
						<input id="tab2" type="radio" name="tabs">
						<label for="tab2">Most Response</label>
						<input id="tab3" type="radio" name="tabs">
						<label for="tab3">Recently Answered</label>
						<input id="tab4" type="radio" name="tabs">
						<label for="tab4">No Answer</label>
						<input id="tab5" type="radio" name="tabs">
						<label for="tab5">Recent Post</label>



						<section id="content1">
							<c:forEach items="${list}" var="board">
								<div class="question-type2033">
									<div class="row">
										<div class="col-md-1">
											<div class="left-user12923 left-user12923-repeat">
												<a href="#"><img src="${root}/resources/image/images.png" alt="image"> </a> <a href="#"><i class="fa fa-check" aria-hidden="true"></i></a>
											</div>
										</div>
										<div class="col-md-9">
											<div class="right-description893">
												<div id="que-hedder2983">
													<h3>
														<a class='move' href='<c:out value="${board.board_no}"/>'> <c:out value="${board.board_title}" /> <b>[<c:out value="${board.replyCnt}" />]
														</b>
														</a>
													</h3>
												</div>
												<div class="ques-details10018">
													<p>
														<c:out value="${board.board_creator_id}" />
													</p>
												</div>
												<hr>
												<div class="ques-icon-info3293">
													<a href="#"><i class="fa fa-star" aria-hidden="true"> 5 </i> </a> <a href="#"><i class="fa fa-clock-o" aria-hidden="true"> <fmt:formatDate pattern="yyyy-MM-dd" value="${board.board_created_date}" /></i></a> <a href="#"><i class="fa fa-bug" aria-hidden="true"> Report</i></a>
												</div>
											</div>
										</div>
										<div class="col-md-2">
											<div class="ques-type302">
												<a href="#">
													<button type="button" class="q-type23 button-ques2973">
														<i class="fa fa-user-circle-o" aria-hidden="true"> <c:out value="${board.board_read}" /></i>
													</button>
													<sec:authorize access="hasRole('ROLE_ADMIN')">   
													<form:form action="/admin/remove" method="post">                 
													<input type="submit" class="btn btn-danger" name="board_no" id="admin_remove_button"  
													value="삭제"> 
													</form:form>
                          </sec:authorize>
												</a>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>

							<nav aria-label="Page navigation">
								<ul class="pagination">

									<%--             <c:if test="${pageMaker.prev}">
              <li class="paginate_button previous"><a href="#">Previous</a>
              </li>
            </c:if>

            <c:forEach var="num" begin="${pageMaker.startPage}"
              end="${pageMaker.endPage}">
              <li class="paginate_button"><a href="#">${num}</a></li>
            </c:forEach>

            <c:if test="${pageMaker.next}">
              <li class="paginate_button next"><a href="#">Next</a></li>
            </c:if> --%>

									<c:if test="${pageMaker.prev}">
										<li class="paginate_button previous"><a href="${pageMaker.startPage -1}">Previous</a></li>
									</c:if>

									<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
										<li class="paginate_button  ${pageMaker.criteria.pageNum == num ? "active":""} "><a href="${num}">${num}</a></li>
									</c:forEach>

									<c:if test="${pageMaker.next}">
										<li class="paginate_button next"><a href="${pageMaker.endPage +1 }">Next</a></li>
									</c:if>


								</ul>
							</nav>
						</section>

						<form id='actionForm' action="/board/list" method='get'>
							<input type='hidden' name='pageNum' value='${pageMaker.criteria.pageNum}'>
							<input type='hidden' name='amount' value='${pageMaker.criteria.amount}'>

							<input type='hidden' name='type' value='<c:out value="${ pageMaker.criteria.type }"/>'>
							<input type='hidden' name='keyword' value='<c:out value="${ pageMaker.criteria.keyword }"/>'>


						</form>
						<!--  End of content-1------>


					</div>
				</div>
				<!--end of col-md-9 -->
				<!--strart col-md-3 (side bar)-->
				<aside class="col-md-3 sidebar97239">
					<div class="status-part3821">
						<h4>stats</h4>
						<a href="#"><i class="fa fa-question-circle" aria-hidden="true"> Question(20)</i></a> <i class="fa fa-comment" aria-hidden="true"> Answers(50)</i>
					</div>
					<div class="categori-part329">
						<h4>Category</h4>
						<ul>
							<li><a href="#">web developer</a></li>
							<li><a href="#">Andriod developer</a></li>
							<li><a href="#">grapics developer</a></li>
							<li><a href="#">web developer</a></li>
						</ul>
					</div>
					<!--             social part -->
					<div class="social-part2189">
						<h4>Find us</h4>
						<li class="rss-one"><a href="#" target="_blank"> <strong> <span>Subscribe</span> <i class="fa fa-rss" aria-hidden="true"></i> <br> <small>To RSS Feed</small>

							</strong>
						</a></li>
						<li class="facebook-two"><a href="#" target="_blank"> <strong> <span>Subscribe</span> <i class="fa fa-facebook" aria-hidden="true"></i> <br> <small>To Facebook Feed</small>

							</strong>
						</a></li>
						<li class="twitter-three"><a href="#" target="_blank"> <strong> <span>Subscribe</span> <i class="fa fa-twitter" aria-hidden="true"></i> <br> <small>To twitter Feed</small>

							</strong>
						</a></li>
						<li class="youtube-four"><a href="#" target="_blank"> <strong> <span>Subscribe</span> <i class="fa fa-youtube" aria-hidden="true"></i> <br> <small>To youtube Feed</small>

							</strong>
						</a></li>
					</div>
					<!--              login part-->
					<sec:authorize access="isAnonymous()">
						<div class="login-part2389">
							<h4>Login</h4>
							<form:form action="/login" method="post">
								<div class="input-group300">
									<span><i class="fa fa-user" aria-hidden="true"></i></span>
									<input type="text" class="namein309" placeholder="Username" name='username'>
								</div>
								<div class="input-group300">
									<span><i class="fa fa-lock" aria-hidden="true"></i></span>
									<input type="password" class="passin309" placeholder="Name" name='password'>
								</div>
								<input class="userlogin320" type="submit" value="login" />
								<div class="rememberme">
									<label> <input type="checkbox" checked="checked" name="remember-me"> Remember Me
									</label> <a href="/register" class="resbutton3892">Register</a>
								</div>
							</form:form>
						</div>
					</sec:authorize>

					<sec:authorize access="isAuthenticated()">
						<div class="login-part2389">
							<form:form action="/customLogout" method="post">
								<h4>Login</h4>
								<div class="input-group300">
									<span><i class="fa fa-user1" aria-hidden="true"></i></span>
								</div>
								<div>
									<p>
										어서오고,
										<sec:authentication property="principal.member.username" />
									</p>
									<p></p>
								</div>
								<input class="userlogin320" type="submit" value="logout" />
							</form:form>
						</div>
					</sec:authorize>
					<!--              highest part-->
					<div class="highest-part302">
						<h4>Highest Points</h4>
						<c:forEach items="${recentList}" var="recentBoard">
							<div class="pints-wrapper">
								<div class="left-user3898">
									<a href="#"><img src="${root}/resources/image/images.png" alt="Image"></a>
									<div class="imag-overlay39">
										<a href="#"><i class="fa fa-plus" aria-hidden="true"></i></a>
									</div>
								</div>
								<span class="points-details938"> <a href="#"><h5>
											<c:out value="${recentBoard.board_creator_id}" />
										</h5> </a> <a href="#" class="designetion439">열정</a>
									<p>206 points</p>
								</span>
							</div>
						</c:forEach>
						<hr>
					</div>
					<!--               end of Highest points -->
					<!--          start tags part-->
					<div class="tags-part2398">
						<h4>Tags</h4>
						<ul>
							<li><a href="#">analytics</a></li>
							<li><a href="#">Computer</a></li>
							<li><a href="#">Developer</a></li>
							<li><a href="#">Google</a></li>
							<li><a href="#">Interview</a></li>
							<li><a href="#">Programmer</a></li>
							<li><a href="#">Salary</a></li>
							<li><a href="#">University</a></li>
							<li><a href="#">Employee</a></li>
						</ul>
					</div>
					<!--          End tags part-->
					<!--        start recent post  -->
					<div class="recent-post3290">
						<h4>Recent Post</h4>
						<c:forEach items="${recentList}" var="recentBoard">
							<div class="post-details021">
								<a href="#"><h5>
										<c:out value="${recentBoard.board_title}" />
									</h5></a>
								<p>
									<c:out value="${recentBoard.board_contents}" />
								</p>
								<small style="color: #848991"><fmt:formatDate pattern="yyyy-MM-dd" value="${recentBoard.board_created_date}" /></small>
							</div>
						</c:forEach>
						<hr>
					</div>
					<!--       end recent post    -->
				</aside>
			</div>
		</div>

	</section>
	<!--    footer -->
	<section class="footer-part">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<div class="info-part-one320">
						<h4>Where We Are ?</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi adipiscing gravida odio, sit amet suscipit risus ultrices eu.</p>
						<h4>Address :</h4>
						<p>
							Ask Me Network, 33 Street, syada <br> Zeinab, Cairo, Egypt.
						</p>
						<h4>Support :</h4>
						<p>Support Telephone No : (+2)01111011110</p>
						<p>Support Email Account :</p>
						<p>info@example.com</p>
					</div>
				</div>
				<div class="col-md-3">
					<div class="info-part-two320">
						<h4>Quick Links</h4>
						<a href="#">
							<p>-Home</p>
						</a> <a href="#">
							<p>-Ask Question</p>
						</a> <a href="#">
							<p>-Questions</p>
						</a> <a href="#">
							<p>-Users</p>
						</a> <a href="#">
							<p>-Edit Profile</p>
						</a> <a href="#">
							<p>-Page</p>
						</a> <a href="#">
							<p>-Contact Us</p>
						</a> <a href="#" class="last-child12892">
							<p>-Buy now</p>
						</a>
					</div>
				</div>
				<div class="col-md-3">
					<div class="info-part-three320">
						<h4>Popular Questions</h4>
						<div class="news-info209">
							<h5>Why are the British confused</h5>
							<p>(Why I darest say, they darest not get offended when they so ...</p>
							<small>July 16, 2017</small>
						</div>
						<div class="news-info209">
							<h5>How to approach applying for</h5>
							<p>(I am trying to find/change my career trajectory. Its a good cozy ...</p>
							<small>July 16, 2017</small>
						</div>
						<div class="news-info209">
							<h5>How to evaluate whether a</h5>
							<p>A friend of mine is the CEO of his own small business. ...</p>
							<small>July 16, 2017</small>
						</div>
					</div>
				</div>
				<div class="col-md-3">
					<div class="info-part-four320">
						<h4>Latest Tweets</h4>
						<div class="tweet-details29">
							<p>
								<i class="fa fa-twitter-square" aria-hidden="true"></i><a href="#"> codeThemesCheck a new update #AskMe #ThemeForest #WordPress #2code #Envato#2code Themehttps://t.co/urb3LgsOCi</a>
							</p>
							<small>about 2 weeks ago</small>
						</div>
						<div class="tweet-details29">
							<p>
								<i class="fa fa-twitter-square" aria-hidden="true"></i><a href="#"> codeThemesCheck a new update #AskMe #ThemeForest #WordPress #2code #Envato#2code Themehttps://t.co/urb3LgsOCi</a>
							</p>
							<small>about 2 weeks ago</small>
						</div>
						<div class="tweet-details29">
							<p>
								<i class="fa fa-twitter-square" aria-hidden="true"></i><a href="#"> codeThemesCheck a new update #AskMe #ThemeForest #WordPress #2code #Envato#2code Themehttps://t.co/urb3LgsOCi</a>
							</p>
							<small>about 2 weeks ago</small>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="footer-social">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<p>
						Copyright 2017 Ask me | <strong>Sudo Coder</strong>
					</p>
				</div>
				<div class="col-md-6">
					<div class="social-right2389">
						<a href="#"><i class="fa fa-twitter-square" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-youtube" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-skype" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a> <a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="${root}/resources/js/jquery-3.1.1.min.js"></script>
	<script src="${root}/resources/js/bootstrap.min.js"></script>
	<script src="${root}/resources/js/npm.js"></script>
	<script type="text/javascript">
	var bnoValue = '<c:out value="${board.board_no}"/>';
    $(document).ready(function() {

      var result = '<c:out value="${result}"/>';

      checkModal(result);

      history.replaceState({}, null, null);

      function checkModal(result) {

        if (result === '' || history.state) {
          return;
        }

        if (parseInt(result) > 0) {
          $(".modal-body").html("게시글 " + parseInt(result) + " 번이 등록되었습니다.");
        }

        $("#myModal").modal("show");
      }

      $("#regBtn").on("click", function() {

        self.location = "/board/register";

      });

      var actionForm = $("#actionForm");

      $(".paginate_button a").on("click", function(e) {

        e.preventDefault();

        console.log('click');

        actionForm.find("input[name='pageNum']").val($(this).attr("href"));
        actionForm.submit();
      });

      $(".move").on("click", function(e) {

        e.preventDefault();
        actionForm.append("<input type='hidden' name='board_no' value='" + $(this).attr("href") + "'>");
        actionForm.attr("action", "/board/get");
        actionForm.submit();

      });

      var searchForm = $("#searchForm");

      $("#searchForm button").on("click", function(e) {

        if (!searchForm.find("option:selected").val()) {
          alert("검색종류를 선택하세요");
          return false;
        }

        if (!searchForm.find("input[name='keyword']").val()) {
          alert("키워드를 입력하세요");
          return false;
        }

        searchForm.find("input[name='pageNum']").val("1");
        e.preventDefault();

        searchForm.submit();

      });

    });
    
    var action=$("#admin_remove_button");
    $('#admin_remove_button').click(function(){
      console.log("통과함");
    });
  </script>
</body>

</html>
