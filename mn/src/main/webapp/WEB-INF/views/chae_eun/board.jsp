<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>커뮤니티 게시판</title>

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="resources/dashboard/dashboard/css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="resources/dashboard/css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="resources/dashboard/css/tooplate.css">
</head>

<body id="reportsPage" class="bg02">
    <div class="" id="home">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="navbar navbar-expand-xl navbar-light bg-light">
                        <a class="navbar-brand" href="login.jsp">
                            <i class="fas fa-3x fa-tachometer-alt tm-site-icon"></i>
                            <h1 class="tm-site-title mb-0">멍냥게시판</h1>
                        </a>
                        <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav mx-auto">
                                <li class="nav-item">
                                    <a class="nav-link" href="login.jsp">Dashboard
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        Reports
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#">Daily Report</a>
                                        <a class="dropdown-item" href="#">Weekly Report</a>
                                        <a class="dropdown-item" href="#">Yearly Report</a>
                                    </div>
                                </li>
                                <li class="nav-item active">
                                    <a class="nav-link" href="products.jsp">Products</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="accounts.jsp">Accounts</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                        aria-expanded="false">
                                        Settings
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="#">Profile</a>
                                        <a class="dropdown-item" href="#">Billing</a>
                                        <a class="dropdown-item" href="#">Customize</a>
                                    </div>
                                </li>
                            </ul>
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link d-flex" href="login.jsp">
                                        <i class="far fa-user mr-2 tm-logout-icon"></i>
                                        <span>Logout</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- row -->
            <div class="row tm-content-row tm-mt-big">
                <div class="col-xl-8 col-lg-12 tm-md-12 tm-sm-12 tm-col">
                    <div class="bg-white tm-block h-100">
                        <div class="row">
                            <div class="col-md-8 col-sm-12">
                                <h2 class="tm-block-title d-inline-block">게시판</h2>

                            </div>
                            <div class="col-md-4 col-sm-12 text-right">
                            <!-- 등록하기 버튼 누를시 회원과 비회원 구분하도록 하기 -->
                                <a href="regist-post.jsp" class="btn btn-small btn-primary">등록하기</a>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-hover table-striped tm-table-striped-even mt-3">
                                <thead>
                                    <tr class="tm-bg-gray">
                                        <th scope="col">&nbsp;</th>
                                        <th scope="col">목록</th>
                                        <th scope="col" class="text-center">아이디</th>
                                        <th scope="col">날짜</th>
                                      
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">
                                         
                                        </th>

                                        <td class="tm-product-name" type="text" onClick="location.href='board-post.jsp'">고냥씨 목욕시키기</td>
                                        <td class="text-center">145</td>
                                        <!-- <td class="text-center">255</td> -->
                                        <td>2018-10-28</td>
                                       
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                      
                                        </th>
                                        <td class="tm-product-name">코스모는 무덤이야</td>
                                        <td class="text-center">240</td>
                                        <!-- <td class="text-center">260</td> -->
                                        <td>2018-10-24</td>
                                        
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                          
                                        </th>
                                        <td class="tm-product-name">살려줘</td>
                                        <td class="text-center">360</td>
                                        <!-- <td class="text-center">440</td> -->
                                        <td>2019-02-14</td>
                                      
                                    </tr>
                                    <tr>
                                        <th scope="row">
                                           
                                        </th>
                                        <td class="tm-product-name">행복한 생각</td>
                                        <td class="text-center">445</td>
                                        <!-- <td class="text-center">655</td> -->
                                        <td>2019-03-22</td>
                                        
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                        <div class="tm-table-mt tm-table-actions-row">
                            <div class="tm-table-actions-col-left">
                                <button class="btn btn-danger">재호야 검색??</button>
                            </div>
                            <div class="tm-table-actions-col-right">
                                <span class="tm-pagination-label">Page</span>
                                <nav aria-label="Page navigation" class="d-inline-block">
                                    <ul class="pagination tm-pagination">
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item">
                                            <span class="tm-dots d-block">...</span>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="#">13</a></li>
                                        <li class="page-item"><a class="page-link" href="#">14</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-xl-4 col-lg-12 tm-md-12 tm-sm-12 tm-col">
                   
            </div>
            <footer class="row tm-mt-small">
                <div class="col-12 font-weight-light">
                    <p class="d-inline-block tm-bg-black text-white py-2 px-4">
                        Copyright &copy; 2018. Created by
                        <a href="http://www.tooplate.com" class="text-white tm-footer-link">Tooplate</a> |  Distributed by <a href="https://themewagon.com" class="text-white tm-footer-link">ThemeWagon</a>
                    </p>
                </div>
            </footer>
        </div>
    </div>
    <script src="resources/dashboard/js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="resources/dashboard/js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    
    <!-- 각각 게시글 내용으로 가기 -->
    <script type="text/javascript">

    </script>
</body>

</html>