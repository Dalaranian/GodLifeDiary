<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
<title>작은 도전이 큰 변화로, 갓생일지 </title>
    <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../resources/css/styles.css" rel="stylesheet" />
 </head>
<body>

	 <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg" style="background-color: orangered;">
            <div class="container px-lg-5">
                <img src="/work/챌린지.PNG" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
                <a class="navbar-brand" href="#!">갓생일지</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">마이페이지</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        
	  <!--  Header -->
      <header class="py-5">
            <div class="container px-lg-5">
                <div class="p-4 p-lg-5 bg-light rounded-3 text-center" style="">
                    <div class="m-4 m-lg-5">
                        <h1 class="display-5 fw-bold">갓생일지!</h1>
                        <p class="fs-4">작은 도전이 큰 변화로, </p>
                        <a class="btn btn-primary btn-lg" href="#!" style="background-color: orangered; border-color: orangered;">챌린지 등록</a>
                    </div>
                </div>
            </div>
        </header>
        
         <!-- Page Content-->
        <div style="margin-left: 340px;">
            <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
                <input type="radio" class="btn-check" name="btnradio" id="btnradio1" autocomplete="off" checked>
                <label class="btn btn-outline-primary" for="btnradio1">전체</label>
              
                <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off">
                <label class="btn btn-outline-primary" for="btnradio2">운동</label>
              
                <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off">
                <label class="btn btn-outline-primary" for="btnradio3">공부</label>

                <input type="radio" class="btn-check" name="btnradio" id="btnradio4" autocomplete="off">
                <label class="btn btn-outline-primary" for="btnradio4">습관</label>

                <input type="radio" class="btn-check" name="btnradio" id="btnradio5" autocomplete="off">
                <label class="btn btn-outline-primary" for="btnradio5">취미</label>

                <form class="d-flex" role="search" style="padding-left: 41rem;">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                  </form>
            </div>
        </div>
        <!--챌린지 목록 -->
        <section class="pt-4" style="margin-top: 50px;">
            <div class="container px-lg-5">
                <!-- Page Features-->
                <div class="row gx-lg-5">
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-collection"></i></div>
                                <h2 class="fs-4 fw-bold">운동 챌린지명</h2>
                                <p class="mb-0">뭔가 있어보이는 설명1</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-cloud-download"></i></div>
                                <h2 class="fs-4 fw-bold">공부 챌린지명</h2>
                                <p class="mb-0">뭔가 있어보이는 설명2</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-card-heading"></i></div>
                                <h2 class="fs-4 fw-bold">습관 챌린지명</h2>
                                <p class="mb-0">뭔가 있어보이는 설명3</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-bootstrap"></i></div>
                                <h2 class="fs-4 fw-bold">취미 챌린지명</h2>
                                <p class="mb-0">뭔가 있어보이는 설명4</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-code"></i></div>
                                <h2 class="fs-4 fw-bold">마감 임박 챌린지명</h2>
                                <p class="mb-0">뭔가 있어보이는 설명5</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4"><i class="bi bi-patch-check"></i></div>
                                <h2 class="fs-4 fw-bold">마감된 챌린지명</h2>
                                <p class="mb-0">뭔가 있어보이는 설명을 넣을거에6</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
	<h1><a href="myboard/login">로그인 고</a></h1>
	<h2><a href="myboard/list">list</a></h2>

	<footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>
</html>