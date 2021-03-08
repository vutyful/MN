<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>커뮤니티 게시판</title>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
<!-- https://fonts.google.com/specimen/Open+Sans -->
<link rel="stylesheet"
	href="../resources/dashboard/css/fontawesome.min.css">
<!-- https://fontawesome.com/ -->
<link rel="stylesheet" href="../resources/dashboard/css/bootstrap.min.css">
<!-- https://getbootstrap.com/ -->
<link rel="stylesheet" href="../resources/dashboard/css/tooplate.css">
</head>

<style type="text/css">

/* table, td{
border:1px solid
} */

table{
width: 60%;
height:100%
margin: auto;
text-align: center;
}

</style>

<body id="reportsPage" class="bg02">
	<div class="" id="home">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-xl navbar-light bg-light">
						<a class="navbar-brand" href="login.jsp"> <i
							class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
							<h1 class="tm-site-title mb-0">멍냥게시판</h1>
						</a>
						<button class="navbar-toggler ml-auto mr-0" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mx-auto">
								<li class="nav-item"><a class="nav-link" href="login.jsp">Dashboard
										<span class="sr-only">(current)</span>
								</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> Reports </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="#">Daily Report</a> <a
											class="dropdown-item" href="#">Weekly Report</a> <a
											class="dropdown-item" href="#">Yearly Report</a>
									</div></li>
								<li class="nav-item active"><a class="nav-link"
									href="products.jsp">Products</a></li>

								<li class="nav-item"><a class="nav-link"
									href="accounts.jsp">Accounts</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
									role="button" data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> Settings </a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="#">Profile</a> <a
											class="dropdown-item" href="#">Billing</a> <a
											class="dropdown-item" href="#">Customize</a>
									</div></li>
							</ul>
							<ul class="navbar-nav">
								<li class="nav-item"><a class="nav-link d-flex"
									href="login.jsp"> <i
										class="far fa-user mr-2 tm-logout-icon"></i> <span>Logout</span>
								</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
			<!-- row -->
			<div class="row tm-content-row tm-mt-big" style="width: 100%;">
				<div class="col-xl-8 col-lg-12 tm-md-12 tm-sm-12 tm-col">
					<div class="bg-white tm-block h-100">
						<div class="row">
							<div class="col-md-8 col-sm-12">
								<h2 class="tm-block-title d-inline-block">게시판</h2>

							</div>
							<div class="col-md-4 col-sm-12 text-right">
								<!-- 등록하기 버튼 누를시 회원과 비회원 구분하도록 하기 -->
								<a href="/mn/communityBoard/commuWriting.do"
									class="btn btn-small btn-primary">글쓰기</a>
							</div>
						</div>
						<div class="table-responsive">

							<form action="BoardList.do?" method="post">
								<table
									class="table table-hover table-striped tm-table-striped-even mt-3">
									<thead>
										<tr class="tm-bg-gray">
											<th scope="col">&nbsp;</th>
											<th scope="col" style="width: 500px;">목록</th>
											<th scope="col" style="width: 300px;">아이디</th>
											<th scope="col" style="width: 200px;">날짜</th>
										</tr>
									</thead>

									<tbody>
										<c:forEach items="${vo}" var="item">
											<tr>
												<th scope="row"></th>
												<!-- jstl foreach문으로 목록 내용 불러오기 -->
											<%-- <td class="tm-product-name">${item.bo_title}</td>  --%>
											<td><a href='/mn/communityBoard/boardDetail.do?bo_num=${item.bo_num}'/>'${item.bo_title}</a></td>
											<td class="text-center">${item.bo_num}</td>
												<td class="text-center">${item.bo_date}</td>
											</tr>
										</c:forEach>
									</tbody>
									
								
								</table>
							</form>

						</div>

						<div class="tm-table-mt tm-table-actions-row">
							<div class="tm-table-actions-col-left">
								<button class="btn btn-danger">재호야 검색??</button>
							</div>
							<div class="tm-table-actions-col-right">
								<span class="tm-pagination-label">Page</span>
								<nav aria-label="Page navigation" class="d-inline-block">
									<ul class="pagination tm-pagination">
										<li class="page-item active"><a class="page-link"
											href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><span class="tm-dots d-block">...</span>
										</li>
										<li class="page-item"><a class="page-link" href="#">13</a></li>
										<li class="page-item"><a class="page-link" href="#">14</a></li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>

				<div class="col-xl-4 col-lg-12 tm-md-12 tm-sm-12 tm-col"></div>
				<footer class="row tm-mt-small">
					<div class="col-12 font-weight-light">
						<p class="d-inline-block tm-bg-black text-white py-2 px-4">
							Copyright &copy; 2018. Created by <a
								href="http://www.tooplate.com" class="text-white tm-footer-link">Tooplate</a>
							| Distributed by <a href="https://themewagon.com"
								class="text-white tm-footer-link">ThemeWagon</a>
						</p>
					</div>
				</footer>
			</div>
		</div>
		<script src="../resources/dashboard/js/jquery-3.3.1.min.js"></script>
		<!-- https://jquery.com/download/ -->
		<script src="../resources/dashboard/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			
		<!-- jquery 시작 -->

		
		
		
		</script>
</body>

</html>