<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:import url="/WEB-INF/views/include/head_meta.jsp" />
<c:import url="/WEB-INF/views/include/top_menu.jsp" />
<c:import url="/WEB-INF/views/include/nav_bar.jsp" />


<html>
<head>

<!-- CSS property to place div
            side by side -->
<style>
body {
	font-family: open sans,malgun gothic,nanum gothic,dotum,arial,sans-serif;
    font-size: 16px;
    font-weight: 400;
    line-height: 1.5;
}

#leftbox {
	float: left;
	background: #555b61;
	width: 20%;
	height: 100%;
}

#middlebox {
	text-align: reft;
	float: left;
	background: #fff;
	width: 60%;
	height: 100%;
}

#rightbox {
	float: right;
	background: #555b61;
	width: 20%;
	height: 100%;
}

#a {
	float: left;
	width: 100%;
	background: white;
	margin: 10px 0px 0px 0px;
	height: 50%;
	background-position: 0% 0%;
	background-repeat: repeat repeat;
}
#q {
	float: left;
	width: 100%;
	background: white;
	margin: 10px 0px 0px 0px;
	height: 450px;
	background-position: 0% 0%;
	background-repeat: repeat repeat;
}

#b, #w {
	float: left;
  width: 460px;
  margin: 4px 8px;
  background-image: none;
    height: 520px;
    background-position: 0% 0%;
    background-repeat: repeat repeat;
}

#c, #e {
	float: right;
	width: 50%;
	background: white;
	margin: 0px;
	height: 50%;
	background-position: 0% 0%;
	background-repeat: repeat repeat;
}

#d {
	float: right;
	width: 50%;
	background: white;
	margin: 0px;
	height: 50%;
	background-position: 0% 0%;
	background-repeat: repeat repeat;
}

</style>
</head>

<body>
	<div id="boxes">
		<div id="leftbox">
		

		</div>

		<div id="middlebox" class="col">
			<div id="a">
				<div id="b">
					<h2 id="c" class="card-title text-info">개드립</h2>
					<table class="table table-hover">

						<tbody>
							<tr>
								<td class="w-25">안녕하세요 상당히 흥미롭네여</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">안녕하세요 상당히 흥미롭네여</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">안녕하세요 상당히 흥미롭네여</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="c">
					<h2 class="card-title text-info">유저 개드립</h2>
					<table class="table table-hover">

						<tbody>
							<tr>
								<td class="w-25">안녕하세요 상당히 흥미롭네여</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="d">
				<h2 class="card-title text-info">읽을 거리판</h2>
				<table class="table table-hover">
							<tr>
								<td class="w-25">안녕하세요 상당히 흥미롭네여</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div id="q">
				<div id="w">
					<h2 class="card-title text-info">주식/재태크</h2>
					<table class="table table-hover">

						<tbody>
							<tr>
								<td class="w-25">안녕하세요 상당히 흥미롭네여</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div id="e">
					<h2 class="card-title text-info">코인판</h2>
					<table class="table table-hover">

						<tbody>
							<tr>
								<td class="w-25">안녕하세요 상당히 흥미롭네여</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
							<tr>
								<td class="w-25">재밌는 일이 일어날것만 같군요</td>
							</tr>
						</tbody>
					</table>
				</div>
		</div>
		</div>
		<div id="rightbox">
		

		</div>

	</div>
</body>
</html>


<c:import url="/WEB-INF/views/include/footer.jsp" />
<c:import url="/WEB-INF/views/include/script.jsp" />
