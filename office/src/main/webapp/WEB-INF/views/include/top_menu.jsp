<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.navbar-brand {
  font-family: cursive;
}
</style>
<body class = "sb-nav-fixed">
     <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
         <a class="navbar-brand" href="index.html">OfficeWorkerCafe.com</a>
         <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i></button>

         <!-- 로그인창 간격 조절-->
         <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
             <div class="input-group">
             </div>
         </form>

         <!-- Navbar-->
         <ul class="navbar-nav ml-auto ml-md-0">
             <li class="nav-item dropdown">
                 <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
                 <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                 
                 <%-- 	<c:choose>     이런식으로 할 예정....
				        <c:when test="${loginUserDTO.userLogin == true }">
				         	로그인	
				         	회원가입
				        </c:when>
				        	
				        <c:otherwise>       
				    		로그아웃
				    		정보수정
			        	</c:otherwise>    
			       </c:choose> --%>
			       
                     <a class="dropdown-item" href="#">로그인</a>
                     <a class="dropdown-item" href="#">로그아웃</a>
                     <div class="dropdown-divider"></div>
                     <a class="dropdown-item" href="login.html">회원가입</a>
                     <a class="dropdown-item" href="login.html">정보수정</a>
                     
                 </div>
             </li>
         </ul>
     </nav>