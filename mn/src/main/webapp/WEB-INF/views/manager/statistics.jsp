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


<title>관리자페이지 - 통계페이지</title>

<!-- Custom fonts for this template-->
<link href="/mn/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/mn/resources/manager/css/sb-admin-2.min.css"
	rel="stylesheet">
<!-- Custom styles for this page -->
<link
	href="/mn/resources/manager/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">


</head>

<body id="page-top">
	<%-- ${adRevenue[0]} 0번째 --%>
	<%-- 1111111111111111111111111111
	
	<table>
		<c:forEach items="${adRevenue}" var="ad">
			<tr>
				<td>${ad.startdate}</td>
				<td>${ad.revenue}</td>

			</tr>
		</c:forEach>
	</table>
	11111111111111111111111111111 --%>
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
			<li class="nav-item active"><a class="nav-link"
				href="/mn/manager/statistics.do" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-chart-area"></i> <span>통계</span></a></li>



			<!-- tables 형태 게시판관리.-->
			<li class="nav-item"><a class="nav-link"
				href="/mn/manager/board.do"> <i class="fas fa-fw fa-table"></i>
					<span>게시판 관리</span>
			</a></li>

			<!-- tables 형태 광고관리.-->

			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>광고 관리</span></a>
				<div id="collapsePages" class="collapse"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">MANAGE LIST:</h6>
						<a class="collapse-item" href="/mn/manager/ad.do">광고 목록</a> <a
							class="collapse-item" href="/mn/manager/adInsert.do">광고 등록</a>
					</div>
				</div></li>



			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-folder"></i> <span>컨텐츠 관리</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">MANAGE LIST:</h6>
						<a class="collapse-item" href="/mn/manageContents/ContentsList.do">컨텐츠
							목록</a>

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
				<!--  
			                <!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Page Heading -->
					<h1 class="h3 mb-4 text-gray-800"
						style="margin-bottom: 0.5rem !important">멍냥 사이트 통계</h1>
				</nav>
				<!-- Sidebar Toggle (Topbar) -->
				<button id="sidebarToggleTop"
					class="btn btn-link d-md-none rounded-circle mr-3">
					<i class="fa fa-bars"></i>
				</button>

				<!-- 				Topbar Search
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form> -->

				<!-- Topbar Navbar -->
				<ul class="navbar-nav ml-auto">
					<!-- 
						Nav Item - Search Dropdown (Visible Only XS)
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> Dropdown - Messages
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>
 -->




					<div class="topbar-divider d-none d-sm-block"></div>

					<!-- Nav Item - User Information -->
					<li class="nav-item dropdown no-arrow">
						<!--                             <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas McGee</span>
                                <img class="img-profile rounded-circle"
                                    src="resources/manager/img/undraw_profile.svg">
                            </a> --> <!-- Dropdown - User Information -->
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
					<!-- Content Row -->
					<div class="row">
						<!--
${boardTotal}  총 게시물 값 받아옴
${boardToday}  오늘의 게시물 값만 받아옴
		-->
						<!-- 오늘의 총 게시물 수-->
						<div class="col-xl-3 col-md-4 mb-2">
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-6">
											<div
												class="text-l font-weight-bold text-primary text-uppercase mb-3">
												고객님들의 게시판 총 게시물 수</div>
											<div class="h3 mb-0 font-weight-bold text-gray-800">${boardTotal}
												개</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-calendar fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-3 col-md-4 mb-2">
							<div class="card border-left-success shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-6">
											<div
												class="text-l font-weight-bold text-success text-uppercase mb-3">
												오늘의 게시판 게시물 수</div>
											<div class="h3 mb-0 font-weight-bold text-gray-800">${boardToday}
												개</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- Content Row -->
						<div class="col-xl-3 col-md-4 mb-2">
							<div class="card border-left-success shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-6">

											<div
												class="text-l font-weight-bold text-primary text-uppercase mb-3">
												등록된 총 회원 수</div>
											<!-- 이부분 db값 따오기  -->
											<div class="h3 mb-0 font-weight-bold text-gray-800">${memberTotal}
												명</div>
										</div>
										<div class="col-auto">
											<i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>


						<div class="row">

							<!-- Area Chart -->
							<div class="col-xl-9 col-lg-7">
								<div class="card shadow mb-4">
									<!-- Card Header - Dropdown -->

									<!-- 현재 상품판매 수수료/ 광고클릭수에 따른 광고수익 예상수익.-->
									<div
										class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

										<h6 class="m-2 font-weight-bold text-info">사이트 예상 수익</h6>

										<div class="dropdown no-arrow">
											<a class="dropdown-toggle" href="#" role="button"
												id="dropdownMenuLink" data-toggle="dropdown"
												aria-haspopup="true" aria-expanded="false"> <i
												class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
											</a>
											<div
												class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
												aria-labelledby="dropdownMenuLink">
												<div class="dropdown-header">Dropdown Header:</div>
												<a class="dropdown-item" href="#">Action</a> <a
													class="dropdown-item" href="#">Another action</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="#">Something else here</a>
											</div>
										</div>
									</div>
									<!-- Card Body -->
									<div class="card-body">
										<div class="chart-area">
											<canvas id="myAreaChart"></canvas>
										</div>
									</div>
								</div>
							</div>

							<!-- Pie Chart -->
							<div class="col-xl-4 col-lg-5">
								<div class="card shadow mb-4">
									<!-- Card Header - Dropdown -->
									<div
										class="card-header py-3 d-flex flex-row align-items-center justify-content-between">

										<h6 class="m-0 font-weight-bold text-warning">

											회원 강아지 / 고양이 등록비율

											<div class="dropdown no-arrow">
												<a class="dropdown-toggle" href="#" role="button"
													id="dropdownMenuLink" data-toggle="dropdown"
													aria-haspopup="true" aria-expanded="false"> <i
													class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
												</a>
												<div
													class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
													aria-labelledby="dropdownMenuLink">
													<div class="dropdown-header">Dropdown Header:</div>
													<a class="dropdown-item" href="#">Action</a> <a
														class="dropdown-item" href="#">Another action</a>
													<div class="dropdown-divider"></div>
													<a class="dropdown-item" href="#">Something else here</a>
												</div>
											</div>
									</div>
									<!-- Card Body -->
									<div class="card-body">
										<div class="chart-pie pt-4 pb-2">
											<canvas id="myPieChart"></canvas>
										</div>
														<!-- 
										파이차트 아래 텍스트 부분
										<div class="mt-4 text-center small">
											<span class="mr-2"> <i
												class="fas fa-circle text-primary"></i> 강아지
											</span> <span class="mr-2"> <i
												class="fas fa-circle text-success"></i> 고양이
											</span>
										</div>
										파이차트 아래 텍스트 부분
 													-->
									</div>
								</div>
							</div>
						</div>
					</div>





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
							<h5 class="modal-title" id="exampleModalLabel">Ready to
								Leave?</h5>
							<button class="close" type="button" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">Select "Logout" below if you are
							ready to end your current session.</div>
						<div class="modal-footer">
							<button class="btn btn-secondary" type="button"
								data-dismiss="modal">Cancel</button>
							<a class="btn btn-primary" href="manager/login.jsp">Logout</a>
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
			<script src="/mn/resources/manager/vendor/chart.js/Chart.min.js"></script>

			<!-- Page level custom scripts -->
			<!-- 	<script src="/mn/resources/manager/js/demo/chart-area-demo.js"></script> -->
			<!-- 차트 에어리어 관련 JS -->
			<script>
//Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#858796';

function number_format(number, decimals, dec_point, thousands_sep) {
  // *     example: number_format(1234.56, 2, ',', ' ');
  // *     return: '1 234,56'
  number = (number + '').replace(',', '').replace(' ', '');
  var n = !isFinite(+number) ? 0 : +number,
    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
    s = '',
    toFixedFix = function(n, prec) {
      var k = Math.pow(10, prec);
      return '' + Math.round(n * k) / k;
    };
  // Fix for IE parseFloat(0.55).toFixed(0) = 0;
  s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
  if (s[0].length > 3) {
    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
  }
  if ((s[1] || '').length < prec) {
    s[1] = s[1] || '';
    s[1] += new Array(prec - s[1].length + 1).join('0');
  }
  return s.join(dec);
}

// Area Chart Example
var ctx = document.getElementById("myAreaChart");
var myLineChart = new Chart(ctx, {
  type: 'line',
  data: {
	                    /* db데이터 */
    labels: ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
                           /*  */
    datasets: [{
      label: "Earnings",
      lineTension: 0.3,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(68, 60, 113, 1)",
      pointRadius: 3,
      pointBackgroundColor: "rgba(78, 115, 223, 1)",
      pointBorderColor: "rgba(78, 115, 223, 1)",
      pointHoverRadius: 3,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 10,
      pointBorderWidth: 2,
                                    /* db데이터 */
	/*   data: [0, 20000000, 25000000, 35000000, 40000000, 35000000, 55000000, 45000000, 20000000, 30000000, 35000000, 25000000],  */
	  data: ${adRevenue},     
    }],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: false,
          drawBorder: false
        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
        ticks: {
          maxTicksLimit: 5,
          padding: 10,
          // Include a dollar sign in the ticks
          callback: function(value, index, values) {
            return number_format(value) + '₩';
          }
        },
        gridLines: {
          color: "rgb(234, 236, 244)",
          zeroLineColor: "rgb(234, 236, 244)",
          drawBorder: false,
          borderDash: [2],
          zeroLineBorderDash: [2]
        }
      }],
    },
    legend: {
      display: false
    },
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      intersect: false,
      mode: 'index',
      caretPadding: 10,
      callbacks: {
        label: function(tooltipItem, chart) {
          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
          return datasetLabel + ': $' + number_format(tooltipItem.yLabel);
        }
      }
    }
  }
});
myLineChart.data.datasets[0].data[6] = ${adRevenue}[0];
myLineChart.update();
/* alert(type(myLineChart.data.datasets[0].data[5])); */

</script>




			<!-- <script src="resources/manager/js/demo/chart-pie-demo.js"></script>-->
			<!-- 파이 차트 관련 JS-->
			<script>
//Set new default font family and font color to mimic Bootstrap's default styling
 Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
 Chart.defaults.global.defaultFontColor = '#858796';
 
 
// <script src="resources/manager/js/demo/chart-pie-demo.js">
// Pie Chart Example  강아지 / 고양이 파이차트   
 var ctx = document.getElementById("myPieChart");
 var myPieChart = new Chart(ctx, {
   type: 'doughnut',
   data: {
     labels: ["강이지", "고양이"],
     datasets: [{
       data: [${petDog}, ${petCat}],
       backgroundColor: ['#4e73df', '#1cc88a'],
       hoverBackgroundColor: ['#2e59d9', '#17a673'],
       hoverBorderColor: "rgba(234, 236, 244, 1)",
     }],
   },
   options: {
     maintainAspectRatio: false,
     tooltips: {
       backgroundColor: "rgb(255,255,255)",
       bodyFontColor: "#858796",
       borderColor: '#dddfeb',
       borderWidth: 1,
       xPadding: 15,
       yPadding: 15,
       displayColors: false,
       caretPadding: 10,
     },
     legend: {
       display: false
     },
     cutoutPercentage: 80,
   },
 });
 
 
 </script>
</body>

</html>