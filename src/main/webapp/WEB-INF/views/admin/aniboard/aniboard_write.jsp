<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.semi.flix.admin.aniboard.*" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FLIXMEDIA-ani write</title>

    <!-- Custom fonts for this template-->
    <link href="<%=request.getContextPath()%>/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Custom styles for this template-->
    <link href="<%=request.getContextPath()%>/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
	
</head>

<body id="page-top">
	<%@include file="../include/adminnav.jsp" %>
	<%
	AniBoardDto dto = (AniBoardDto)request.getAttribute("aniboardDto");
	%>
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a onclick="goMain()" class="sidebar-brand d-flex align-items-center justify-content-center" >
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3"><strong>FLIXPEDIA-admin</strong></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" onclick="goMain()">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>메인화면</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                관리 메뉴
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>게시판</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">게시판 관리:</h6>

                        <a class="collapse-item" href="${commonURL}/admin/board/writemain">게시글 업로드</a>
                        <a class="collapse-item" href="${commonURL}/admin/board/listmain">게시글 수정/삭제</a>
                        <a class="collapse-item" href="${commonURL}/admin/review/list">평점 관리</a>

                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>회원</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">회원 관리:</h6>
                        <a class="collapse-item" href="${commonURL}/admin/user/list">회원정보관리</a>
                        <a class="collapse-item" href="${commonURL}/admin/q_a/list">고객센터</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                기타
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>기타기능</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">기타 기능 관리:</h6>
                        <a class="collapse-item" href="${commonURL}/admin/list">광고메일전송</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->
            <div class="sidebar-card d-none d-lg-flex">
                <img class="sidebar-card-illustration mb-2" style="width:150px; height:auto; "src="<%=request.getContextPath()%>/resources/admin/img/logo.png" alt="...">
                <p class="text-center mb-2"><strong>FLIXPEDIA</strong> 메인페이지로 이동하여 자세한 사항을 확인하세요</p>
                <a class="btn btn-success btn-sm" href="${commonURL}/">도메인이동</a>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form name="myform2" class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2" name="keyword2" id="keyword2" value="<%=keyword2 %>"
                                onkeydown="naventerkey();">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button" onclick="goMainSearch()">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
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
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small" id="username"><%=username%></span>
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="${commonURL}/admin/adminmember/myinfo">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    내 정보
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="${commonURL}/member/logout" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

				<!-- Begin Page Content -->
				<form id="myform" name="myform" enctype="multipart/form-data">
				<input type="hidden" name="board_seq" id="board_seq" value="<%=dto.getBoard_seq() %>"/>
				<input type="hidden" name="hit" id="hit" value="<%=dto.getAni_hit() %>"/>
				
				<div class="container rounded bg-white mt-5 mb-5">
				    <div class="row">
				        <div class="col-md-5 border-right">
					            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
					                <img class="rounded mt-5" src="">       
					                <input type="file" class="form-control" id="uplaod" name="upload" 
					                        placeholder="이미지를 업로드하세요" value="<%=dto.getAni_images() %>" onchange="readURL(this);"/>
					                        <br/><br/>
									<img id="preview" src="../../upload/<%=dto.getAni_images() %>"style="width:50%; height:auto;"/>
									<input type="hidden" name="ani_images" value="<%=dto.getAni_images() %>"/>
					            </div>
				        </div>
				        <div class="col-md-7 border-right">
				            <div class="p-3 py-5">
				                <div class="d-flex justify-content-between align-items-center mb-3">
				                    
				                </div>
				            <div class="row mt-2">
				                <div class="col-md-6">
				                <label class="labels">카테고리</label>
				                <input type="text" class="form-control" placeholder="category" id="category_code" name="category_code"
				                value="<%=dto.getCategory_code()%>">
				                </div>
				                <div class="col-md-6">
				                <label class="labels">장르</label>
				                <input type="text" class="form-control" placeholder="genre" id="genre_code" name="genre_code"
				                value="<%=dto.getGenre_code()%>" >
				                </div>
				            </div>
				            <div class="row mt-2">
				                <div class="col-md-6">
				                <label class="labels">제목</label>
				                <input type="text" class="form-control" placeholder="title" id="ani_title" name="ani_title"
				                value="<%=dto.getAni_title()%>">
				                </div>
				                <div class="col-md-6">
				                <label class="labels">감독</label>
				                <input type="text" class="form-control" placeholder="producer" id="ani_producer" name="ani_producer"
				                value="<%=dto.getAni_producer()%>" >
				                </div>
				            </div>
				            <div class="row mt-3">
				                <div class="col-md-12">
				                <label class="labels">줄거리</label>
				                <textarea class="form-control" id="ani_content" name="ani_content" placeholder="enter contents" 
				                ><%=dto.getAni_content()%></textarea>
				                </div>
				            </div>
				            <div class="row mt-3">
				                <div class="col-md-4">
				                <label class="labels">관람객수</label>
				                <input type="text" class="form-control" placeholder="attendance" id="ani_avg_ratings" name="ani_avg_ratings"
				                value="<%=dto.getAni_avg_ratings()%>">
				                </div>
				                <div class="col-md-4">
				                <label class="labels">제작년도</label>
				                <input type="text" class="form-control" placeholder="productionyear" id="ani_productionyear" name="ani_productionyear"
				                value="<%=dto.getAni_productionyear()%>">
				                </div>
				                <div class="col-md-4">
				                <label class="labels">연령제한</label>
				                <input type="text" class="form-control" placeholder="agelimit" id="ani_agelimit" name="ani_agelimit"
				                value="<%=dto.getAni_agelimit()%>">
				                </div>
				            </div>
				            <div class="row mt-3">
				                <div class="col-md-12">
				                <label class="labels">예고편 url</label>
				                <textarea class="form-control" id="ani_url" name="ani_url" placeholder="URL address" 
				                ><%=dto.getAni_url()%></textarea>
				                </div>
				            </div>
				            <div class="mt-5 text-center">
				                <button class="btn btn-primary profile-button" type="button" onclick="goWrite()">등록</button>
				            </div>
				            </div>
				        </div>
				    </div>
				</div>
				</form>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Made By HJ &copy; FLIXPEDIA 2022</span>
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
                    <h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">로그아웃 하시겠습니까?</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>

                    <a class="btn btn-primary" href="${commonURL}/admin/adminindex">로그아웃</a>

                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="<%=request.getContextPath()%>/resources/admin/vendor/jquery/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="<%=request.getContextPath()%>/resources/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="<%=request.getContextPath()%>/resources/admin/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="<%=request.getContextPath()%>/resources/admin/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="<%=request.getContextPath()%>/resources/admin/js/demo/chart-area-demo.js"></script>
    <script src="<%=request.getContextPath()%>/resources/admin/js/demo/chart-pie-demo.js"></script>

</body>

</html>
<script>
	function goWrite()
	{
		var frm = document.myform;
		if(frm.category_code.value.trim().length==0)
		{
			alert("카테고리를 작성하세요");
			frm.category_code.focus();
			return false;
		}
		if(frm.genre_code.value.trim().length==0)
		{
			alert("장르를 작성하세요");
			frm.genre_code.focus();
			return false;
		}
		if(frm.ani_avg_ratings.value.trim().length==0)
		{
			alert("평균 시청률을 작성하세요");
			frm.ani_avg_ratings.focus();
			return false;
		}
		if(frm.ani_title.value.trim().length==0)
		{
			alert("제목을 작성하세요");
			frm.ani_title.focus();
			return false;
		}
		if(frm.ani_producer.value.trim().length==0)
		{
			alert("이름을 작성하세요");
			frm.ani_producer.focus();
			return false;
		}
		if(frm.ani_content.value.trim().length==0)
		{
			alert("내용을 작성하세요");
			frm.ani_content.focus();
			return false;
		}
		if(frm.ani_url.value.trim().length==0)
		{
			alert("영상 주소를 작성하세요");
			frm.ani_url.focus();
			return false;
		}
		if(frm.ani_productionyear.value.trim().length==0)
		{
			alert("제작년도를 작성하세요");
			frm.ani_productionyear.focus();
			return false;
		}
		if(frm.ani_agelimit.value.trim().length==0)
		{
			alert("제한연령을 작성하세요");
			frm.ani_agelimit.focus();
			return false;
		}

		frm.action="<%=request.getContextPath()%>/admin/aniboard/save";
		frm.method="post";
		frm.submit(); //서버로 전송하기
	}
	
	function readURL(input) {
		if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      document.getElementById('preview').src = e.target.result;
	    };
	    reader.readAsDataURL(input.files[0]);
	    } 
		else {
	    document.getElementById('preview').src = "";
	    }
	}

</script>