<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SimSim Admin Page</title>

    <!-- Custom fonts for this template -->
    <link href="../resources/manage/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../resources/manage/css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="../resources/manage/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="../main/main_login.do">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">SimSim Admin</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                SITE MANAGEMENT
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>컨텐츠 관리</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">MANAGE LIST:</h6>
                        <a class="collapse-item" href="../manageContents/ContentsList.do">컨텐츠 목록</a>
                        <a class="collapse-item" href="../manageContents/ContentSave.do">컨텐츠 등록</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item active">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>회원 관리</span>
                </a>
                <div id="collapseUtilities" class="collapse show" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">MANAGE LIST:</h6>
                        <a class="collapse-item" href="MembersList.do">회원 목록</a>
                        <a class="collapse-item" href="Withdrawals.do">탈퇴 목록</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Addons
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>광고</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Login Screens:</h6>
                        <a class="collapse-item" href="../managerAd/getManagerList.do">광고 목록</a>
                        <a class="collapse-item" href="../managerAd/getManagerST.do">통계 목록</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    
                    <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800" style="margin-bottom: 0.5rem !important">회원 관리</h1>
                    
				</nav>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">회원 정보 수정</h1>
                    <p class="mb-4">회원의 정보를 수정하거나 삭제 할 수 있습니다.</p>
                    
                    <div class="row">

                        <div class="col-lg-6">

                            <div class="card shadow mb-4">
                            	<form class="user" id="myform" action="modifyMember.do" method="post">
	                                <div class="card-body">
	                                    <h6 class="m-0 font-weight-bold text-primary"style="margin-bottom: 0.5rem !important">아이디</h6>
										<input type="text" name="id" value="${member.id}"/>
	                                    <h6 class="m-0 font-weight-bold text-primary"style="margin-bottom: 0.5rem !important">이 름</h6>
										<input type="text" name="name" value="${member.name}"/>
	                                    <h6 class="m-0 font-weight-bold text-primary"style="margin-bottom: 0.5rem !important">이메일</h6>
										<p>${member.email}</p>
	                                    <h6 class="m-0 font-weight-bold text-primary"style="margin-bottom: 0.5rem !important">생년월일</h6>
										<p>${member.birth}</p>
	                                    <h6 class="m-0 font-weight-bold text-primary"style="margin-bottom: 0.5rem !important">성 별</h6>
										<p>${member.gender}</p>
		                                <h6 class="m-0 font-weight-bold text-primary"style="margin-bottom: 0.5rem !important">권 한</h6>
										<select name="auth">
											<option <c:if test="${member.auth == 1}">selected</c:if> value="1">일반</option>
											<option <c:if test="${member.auth == 5}">selected</c:if> value="5">에디터</option>
											<option <c:if test="${member.auth == 10}">selected</c:if> value="10">서브 관리자</option>
										</select>
	                                	<h6 class="m-0 font-weight-bold text-primary" style="margin: 0.5rem 0 !important">프로필 이미지</h6>
	                                    <c:choose>
	                                    	<c:when test="${member.pic ne null}">
												<img src="../resources/upload/${member.pic}">
	                                    	</c:when>
	                                    	<c:otherwise>
	                                    		이미지가 없습니다.
	                                    	</c:otherwise>
	                                    </c:choose>
	                                    <br>
	                                    <input type="checkbox" name="pic" value="null" style="margin-left: 0.5rem"/>이미지 삭제
	                                    <input type="checkbox" name="state" value="차단"  <c:if test="${member.state eq '차단'}">checked</c:if> style="margin-left: 0.5rem" />차단하기
	                                	
	                                    <br>
										<input type="hidden" name="memnum" value="${member.memnum}"/>
	
	                                    <a href="#" class="btn btn-primary btn-icon-split" onclick="$('#myform').submit();">
	                                        <span class="icon text-white-50">
	                                            <i class="fas fa-check"></i>
	                                        </span>
	                                        <span class="text">수정하기</span>
	                                    </a>
	                                    <a href="MembersList.do"" class="btn btn-secondary btn-icon-split">
	                                        <span class="icon text-white-50">
	                                            <i class="fas fa-arrow-right"></i>
	                                        </span>
	                                        <span class="text">목록으로</span>
	                                    </a>
                                	</div>
                                </form>
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
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">Ã</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="login.html">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../resources/manage/vendor/jquery/jquery.min.js"></script>
    <script src="../resources/manage/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../resources/manage/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</body>

</html>