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
    
    <style type="text/css">
a{text-decoration:none}
</style>
    

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
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>회원 관리</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">MANAGE LIST:</h6>
                        <a class="collapse-item" href="../manageMembers/MembersList.do">회원 목록</a>
                        <a class="collapse-item" href="../manageMembers/Withdrawals.do">탈퇴 목록</a>
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
            <li class="nav-item active">
                <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>광고</span>
                </a>
                <div id="collapsePages" class="collapse show" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">Login Screens:</h6>
                        <a class="collapse-item" href="getManagerList.do">광고 목록</a>
                        <a class="collapse-item active" href="getManagerST.do">통계 목록</a>
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
                    <h1 class="h3 mb-4 text-gray-800" style="margin-bottom: 0.5rem !important">광고 관리</h1>


                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">광고 통계 상세</h1>
                    <p class="mb-4">현재 선택한 광고의 상세한 통계를 볼 수 있습니다.</p>

                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">광고별 통계</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
  
    <table  class="managertable">

    <tr>  
    <td rowspan="8" align = "center" width="350" >
    <img  width="300"  alt="" src="/Project/resources/upload/${manager.adimg}"></td>
    <td align="center" width="150">광고총클릭수 현황</td>
    <td align="char">${manager.totalclick}</td> 
    </tr>
    <tr> 
    <td align="center" width="150">10대 클릭수</td>
    <td align="char">${manager.click10}</td> 
    </tr>  
    <tr> 
     <td align="center" width="150">20대 클릭수</td>
    <td align="char">${manager.click20}</td> 
    </tr>
    <tr>              
    <td align="center" width="150">30대 클릭수</td>
    <td align="char">${manager.click30}</td> 
    </tr>
    <tr>              
     <td align="center" width="150">40대 클릭수</td>
    <td align="char">${manager.click40}</td> 
    </tr> 
     <tr>              
     <td align="center" width="150">50대 이상클릭수</td>
     <td align="char">${manager.click50ov}</td> 
     </tr>
     <tr>              
     <td align="center" width="150">남자</td>
     <td align="char">${manager.clickm}</td> 
     </tr>
     <tr>              
     <td align="center" width="150">여자</td>
     <td align="char">${manager.clickf}</td> 
     </tr>                  
      </table>    
      
 
                            <h6 class="m-0 font-weight-bold text-primary">그래프</h6>
             <div id="managerST" style="width: 1300px; height: 500px; display:none;"></div>

		<button class="btn btn-primary btn-icon-split">
	                                        <span class="icon text-white-50">
	                                            <i class="fas fa-arrow-right"></i>
	                                        </span>
	                                        <span class="text">그래프 보기</span>
	                                    </button>

		<a href="getManagerST.do" class="btn btn-secondary btn-icon-split">
	                                        <span class="icon text-white-50">
	                                            <i class="fas fa-arrow-right"></i>
	                                        </span>
	                                        <span class="text">목록으로</span>
	                                    </a>
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
                        <span aria-hidden="true">Ã </span>
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
    <script src="../resources/manage/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../resources/manage/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="../resources/manage/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../resources/manage/js/demo/datatables-demo.js"></script>
    
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">

google.charts.load('current', {packages: ['corechart']});
//묶은 세로 막대형 차트 1
function managerChart() {
//버튼 클릭 시 ajax를 사용하여 서버로부터 json 배열 객체를 가져왔다
var arr = [['나이(성별)', '클릭수',],
['10대',${manager.click10}],['20대',${manager.click20}],
['30대',${manager.click30}],['40대',${manager.click40}],
['50ov',${manager.click50ov}],['남자',${manager.clickm}],
['여자',${manager.clickf}]];
//실 데이터를 가진 데이터테이블 객체를 반환하는 메소드
var dataTable = google.visualization.arrayToDataTable(arr);
//옵션객체 준비
var options = {
title: '나이대별(성별) 클릭수',
hAxis: {title: '나이(성별)',
}};
//차트를 그릴 영역인 div 객체를 가져옴
var objDiv = document.getElementById('managerST');
// 인자로 전달한 div 객체의 영역에 컬럼차트를 그릴수 있는 차트객체를 반환
var chart = new google.visualization.ColumnChart(objDiv);
// 차트객체에 데이터테이블과 옵션 객체를 인자로 전달하여 차트 그리는 메소드
chart.draw(dataTable, options);
} 
$(document).ready(function(){
  $('button').on('click', function(){
	  $('#managerST').show();
	  managerChart();
   });
});

</script>
</body>

</html>
