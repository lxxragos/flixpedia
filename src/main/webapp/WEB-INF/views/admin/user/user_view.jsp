<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.semi.flix.admin.user.*" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FLIXMEDIA-user view</title>

    <!-- Custom fonts for this template-->
    <link href="<%=request.getContextPath()%>/resources/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Custom styles for this template-->
    <link href="<%=request.getContextPath()%>/resources/admin/css/sb-admin-2.min.css" rel="stylesheet">
	<script src="https://cdn.ckeditor.com/ckeditor5/32.0.0/classic/ckeditor.js"></script>
</head>

<body id="page-top">
	<%@include file="../include/adminnav.jsp" %>
	<%
	String key = AdminStringUtil.nullToValue(request.getParameter("key"), "1");
	      String keyword = AdminStringUtil.nullToValue(request.getParameter("keyword"), "");
	      String pg = AdminStringUtil.nullToValue(request.getParameter("pg"), "0");
	%>
    <%
    UserDto dto = (UserDto)request.getAttribute("userDto");
    	dto = (dto == null) ? new UserDto() : dto;
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
                <div class="sidebar-brand-text mx-3">FLIXPEDIA-admin</div>
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
                        <a class="collapse-item" href="utilities-other.html">고객센터</a>
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
                        <a class="collapse-item" href="login.html">광고메일전송</a>
                        <a class="collapse-item" href="register.html">고객센터</a>
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
                <img class="sidebar-card-illustration mb-2" src="img/undraw_rocket.svg" alt="...">
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

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter">3+</span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-primary">
                                            <i class="fas fa-file-alt text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 12, 2019</div>
                                        <span class="font-weight-bold">A new monthly report is ready to download!</span>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-success">
                                            <i class="fas fa-donate text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 7, 2019</div>
                                        $290.29 has been deposited into your account!
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="mr-3">
                                        <div class="icon-circle bg-warning">
                                            <i class="fas fa-exclamation-triangle text-white"></i>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="small text-gray-500">December 2, 2019</div>
                                        Spending Alert: We've noticed unusually high spending for your account.
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter">7</span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_1.svg"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div class="font-weight-bold">
                                        <div class="text-truncate">Hi there! I am wondering if you can help me with a
                                            problem I've been having.</div>
                                        <div class="small text-gray-500">Emily Fowler · 58m</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_2.svg"
                                            alt="...">
                                        <div class="status-indicator"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">I have the photos that you ordered last month, how
                                            would you like them sent to you?</div>
                                        <div class="small text-gray-500">Jae Chun · 1d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="img/undraw_profile_3.svg"
                                            alt="...">
                                        <div class="status-indicator bg-warning"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Last month's report looks great, I am very happy with
                                            the progress so far, keep up the good work!</div>
                                        <div class="small text-gray-500">Morgan Alvarez · 2d</div>
                                    </div>
                                </a>
                                <a class="dropdown-item d-flex align-items-center" href="#">
                                    <div class="dropdown-list-image mr-3">
                                        <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60"
                                            alt="...">
                                        <div class="status-indicator bg-success"></div>
                                    </div>
                                    <div>
                                        <div class="text-truncate">Am I a good boy? The reason I ask is because someone
                                            told me that people say this to all dogs, even if they aren't good...</div>
                                        <div class="small text-gray-500">Chicken the Dog · 2w</div>
                                    </div>
                                </a>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

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
				<input type="hidden" name="user_seq" id="user_seq" value="<%=dto.getUser_seq() %>"/>
				<input type="hidden" name="pg"      value="<%=pg%>" >
      			<input type="hidden" name="key"     value="<%=key%>" >
      			<input type="hidden" name="keyword" value="<%=keyword%>" >
				
				<div class="container rounded bg-white mt-5 mb-5">
				    <div class="row">
				        <div class="col-md-3 border-right">
				            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
				                <img class="rounded mt-5" style="width:80%; height:auto;" id="uplaod" src="../../upload/<%=dto.getUser_images() %>">       
				            </div>
				        </div>
				        <div class="col-md-5 border-right">
				            <div class="p-3 py-5">
				                <div class="d-flex justify-content-between align-items-center mb-3">
				                    
				                </div>
				            <div class="row mt-2">
				                <div class="col-md-6">
				                <label class="labels">아이디</label>
				                <input readonly="readonly" type="text" class="form-control" placeholder="userid" id="user_id" name="user_id"
				                value="<%=dto.getUser_id()%>" >
				                </div>
				                <div class="col-md-6">
				                <label class="labels">패스워드</label>
				                <input readonly="readonly"type="text" class="form-control" placeholder="password" id="password" name="password"
				                value="<%=dto.getPassword()%>" >
				                </div>
				            </div>
				            <div class="row mt-2">
				                <div class="col-md-6">
				                <label class="labels">이름</label>
				                <input readonly="readonly" type="text" class="form-control" placeholder="name" id="name" name="name"
				                value="<%=dto.getName()%>">
				                </div>
				                <div class="col-md-6">
				                <label class="labels">닉네임</label>
				                <input readonly="readonly" type="text" class="form-control" placeholder="nick_name" id="nick_name" name="nick_name"
				                value="<%=dto.getNick_name()%>" >
				                </div>
				            </div>
				            <div class="row mt-3">
				                <div class="col-md-12">
				                <label class="labels">이메일</label>
				                <input readonly="readonly" class="form-control" id="email" name="email" placeholder="email" 
				                ><%=dto.getEmail()%></textarea>
				                </div>
				            </div>
				            <div class="row mt-3">
				                <div class="col-md-12">
				                <label class="labels">휴대폰</label>
				                <input readonly="readonly" class="form-control" id="phone" name="phone" placeholder="phone" 
				                ><%=dto.getPhone()%></textarea>
				                </div>
				            </div>
				            <div class="row mt-3">
				                <div class="col-md-12">
				                <label class="labels">도로명주소</label>
				                <input readonly="readonly" class="form-control" id="address1" name="address1" placeholder="도로명주소" 
				                ><%=dto.getAddress1()%></textarea>
				                </div>
				            </div>
				            <div class="row mt-2">
				                <div class="col-md-7">
				                <label class="labels">상세주소</label>
				                <input readonly="readonly" type="text" class="form-control" placeholder="상세주소" id="address2" name="address2"
				                value="<%=dto.getAddress2()%>">
				                </div>
				                <div class="col-md-5">
				                <label class="labels">우편번호</label>
				                <input readonly="readonly" type="text" class="form-control" placeholder="우편번호" id="zipcode" name="zipcode"
				                value="<%=dto.getZipcode()%>" >
				                </div>
				            </div>
				            
				             
				            <div class="mt-5 text-center">
				                <button class="btn btn-primary profile-button" type="button" onclick="goModify()">수정</button>
				                <button class="btn btn-primary profile-button" type="button" onclick="goDelete()">삭제</button>
				                <button class="btn btn-primary profile-button" type="button" onclick="goList()">취소</button>
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
                        <span>Copyright &copy; Your Website 2021</span>
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

    <!-- Core plugin  JavaScript-->
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
function goList()
{
   var frm = document.myform;
   frm.action="<%=request.getContextPath()%>/admin/user/list";
   frm.submit();
}

function goModify()
{
   var frm = document.myform;
   frm.action="<%=request.getContextPath()%>/admin/user/modify";
   frm.submit();
}


function goDelete()
{
   if( confirm("삭제하시겠습니까?"))
   {
      var frm = document.myform;
      frm.action="<%=request.getContextPath()%>/admin/user/delete";
      frm.submit();
   }
}

function goMain()
{
	location.href="${commonURL}/admin/adminhome";	//페이지 이동	
}
</script>