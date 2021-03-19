<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>관리자페이지 - 게시판관리 - 게시판 글내용확인</title>

<!-- Custom fonts for this template -->
<link
	href="/mn/resources/manager/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/mn/resources/manager/css/sb-admin-2.min.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="/mn/resources/manager/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="../buenoBasic/main.do"> <img
				class="sidebar-card-illustration mb-2"
				src="../resources/manager/img/2MN_remove_bg.png" alt="" w>
				<div class="sidebar-brand-text mx-3">메인페이지</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- tables 형태  통계 collapse 열려잇으면 글씨에 불들어옴.-->
			<li class="nav-item"><a class="nav-link"
				href="/mn/manager/statistics.do" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-chart-area"></i> <span>통계</span></a></li>



			<!-- tables 형태 게시판관리.-->
			<li class="nav-item active"><a class="nav-link"
				href="/mn/manager/board.do"> <i class="fas fa-fw fa-table"></i>
					<span>게시판 관리</span>
			</a></li>

			<!-- tables 형태 광고관리.-->

			<li class="nav-item"><a class="nav-link"
				href="/mn/manager/ad.do"> <i class="fas fa-fw fa-table"></i> <span>광고
						관리</span></a></li>



			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-folder"></i> <span>컨텐츠 관리</span>
			</a>
				<div id="collapseTwo" class="collapse"
					aria-labelledby="headingTwo" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">MANAGE LIST:</h6>
						<a class="collapse-item" href="/mn/manageContents/ContentsList.do">컨텐츠 목록</a>
				
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-cog"></i> <span>회원 관리</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">MANAGE LIST:</h6>
						<a class="collapse-item" href="/mn/manageMembers/MembersList.do">회원
							목록</a>
					</div>
				</div></li>


			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!--             Sidebar Toggler (Sidebar)
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div> -->

			<!-- Sidebar Message -->
			<div class="sidebar-card">
				<img class="sidebar-card-illustration mb-2"
					src="../resources/manager/img/MN2.png" alt="">
				<!--  <p class="text-center mb-2"><strong>SB Admin Pro</strong> is packed with premium features, components, and more!</p>
                <a class="btn btn-success btn-sm" href="https://startbootstrap.com/theme/sb-admin-pro">Upgrade to Pro!</a> -->
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Page Heading -->
					<h1 class="h3 mb-4 text-gray-800"
						style="margin-bottom: 0.5rem !important">게시판 관리</h1>
				</nav>
				<!-- Sidebar Toggle (Topbar) -->
				<form class="form-inline">
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
				</form>

				<!--             Topbar Search
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form> -->

				<!-- Topbar Navbar -->
				<ul class="navbar-nav ml-auto">
				

					<div class="topbar-divider d-none d-sm-block"></div>

					<!-- Nav Item - User Information -->
					<li class="nav-item dropdown no-arrow">
				
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
							aria-labelledby="userDropdown">
							<a class="dropdown-item" href="#"> <i
								class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
							</a> <a class="dropdown-item" href="#"> <i
								class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Settings
							</a> <a class="dropdown-item" href="#"> <i
								class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> Activity
								Log
							</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="#" data-toggle="modal"
								data-target="#logoutModal"> <i
								class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
								Logout
							</a>
						</div>
					</li>

				</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800">게시글 열람</h1>
					<p class="mb-4">게시글 내용을 확인 할 수 있습니다.</p>

					<div class="row">

						<div class="col-lg-6">

							<div class="card shadow mb-2">
								<div class="card-header py-2">
									<div class="form-group">
										<h6 class="m-0 font-weight-bold text-primary"
											style="margin-bottom: 0.5rem !important">게시글 제목</h6>
										<input class="form-control form-control-user" type="text"
											name="board_title" value="${boardContent.bo_title}" disabled />
									</div>
								</div>



								<div class="card-body">
									<h6 class="m-0 font-weight-bold text-primary"
										style="margin: 0.5rem 0 !important">카테고리</h6>
									<input class="text" type="text" name="board_cate"
										value="${boardContent.bo_cate}" disabled />
								<h6 class="m-0 font-weight-bold text-primary"
									style="margin: 0.5rem 0 !important">작성일자</h6>
								<input class="text" type="text" name="board_date"
									value="${boardContent.bo_date}" disabled />



									<h6 class="m-0 font-weight-bold text-primary"
										style="margin: 0.5rem 0 !important">게시글 내용</h6>
									<textarea name="board_content" rows="20" cols="77" disabled>${boardContent.bo_content}</textarea>


									<a
										href="/mn/manager/boardDelete.do?bo_num=${boardContent.bo_num}"
										onclick="return confirm('정말 삭제하시겠습니까?');"
										class="btn btn-danger btn-icon-split"> <span
										class="icon text-white-50"> <i class="fas fa-trash"></i>
									</span> <span class="text">삭제하기</span>
									</a> <a href="/mn/manager/board.do"
										" class="btn btn-secondary btn-icon-split"> <span
										class="icon text-white-50"> <i
											class="fas fa-arrow-right"></i>
									</span> <span class="text">목록으로</span>
									</a>


								</div>
							</div>

						</div>
					</div>
				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2020</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="/mn/resources/manager/vendor/jquery/jquery.min.js"></script>
	<script
		src="/mn/resources/manager/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script
		src="/mn/resources/manager/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/mn/resources/manager/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script
		src="/mn/resources/manager/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/mn/resources/manager/vendor/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="/mn/resources/manager/js/demo/datatables-demo.js"></script>

</body>

</html>