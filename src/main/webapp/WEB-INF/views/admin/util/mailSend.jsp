<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.semi.flix.admin.mail.*" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FLIXMEDIA-movie write</title>

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
	MailDto dto = (MailDto)request.getAttribute("mailDto");
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
                    <span>????????????</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                ?????? ??????
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>?????????</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">????????? ??????:</h6>
                        <a class="collapse-item" href="${commonURL}/admin/board/writemain">????????? ?????????</a>
                        <a class="collapse-item" href="${commonURL}/admin/board/listmain">????????? ??????/??????</a>
                        <a class="collapse-item" href="${commonURL}/admin/board/avgmain">?????? ??????</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>??????</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">?????? ??????:</h6>
                        <a class="collapse-item" href="${commonURL}/admin/user/list">??????????????????</a>
                        <a class="collapse-item" href="utilities-other.html">????????????</a>
                    </div>
                </div>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                ??????
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>????????????</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">?????? ?????? ??????:</h6>
                        <a class="collapse-item" href="login.html">??????????????????</a>
                        <a class="collapse-item" href="register.html">????????????</a>
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
                <p class="text-center mb-2"><strong>FLIXPEDIA</strong> ?????????????????? ???????????? ????????? ????????? ???????????????</p>
                <a class="btn btn-success btn-sm" href="${commonURL}/">???????????????</a>
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
                                    ??? ??????
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
				<input type="hidden" name="seq" id="seq" value=""/>
				<input type="hidden" name="hit" id="hit" value=">"/>
				
				<div class="container rounded bg-white mt-5 mb-5">
				    <div class="row" style="justify-content:center">
				        <div class="col-md-6 border-center">
				            <div class="p-3 py-5">
				                <div class="d-flex justify-content-between align-items-center mb-3">
				                    
				                </div>
				            <div class="row mt-2">
				                <div class="col-md-6">
				                <label class="labels">?????????</label>
				                <input type="text" class="form-control" placeholder="to email" id="email1" name="email1"
				                value=<%=dto.getEmail1()%>>
								<button class="btn btn-success" type="button" id="btnfind"
   											style=" width:70px; height: 30px; margin-top:3px;">??????</button>  
				                </div>
				                <div class="col-md-6">
				                <label class="labels">????????? ????????????</label>
				                <input readonly="readonly"type="text" class="form-control" placeholder="user_seq" id="user_seq" name="user_seq"
				                value=<%=dto.getUser_seq()%>>
				                </div>
				            </div>
				            <div class="row mt-2">
				                <div class="col-md-6">
				                <label class="labels">????????????</label>
				                <input type="text" class="form-control" placeholder="from email" id="email2" name="email2"
				                value=<%=email%> readonly>
				                </div>
				                <div class="col-md-6">
				                <label class="labels">???????????? ????????????</label>
				                <input type="text" class="form-control" placeholder="admin_seq" id="id" name="id"
				                value=<%=id%> readonly>
				                </div>
				            </div>
				            <div class="row mt-3">
				                <div class="col-md-12">
				                <label class="labels">??????</label>
				                <input type="text" class="form-control" placeholder="enter title" id="title" name="title" 
				                value=<%=dto.getTitle()%>>
				                </div>
				            </div>
				            <div class="row mt-3">
				                <div class="col-md-12">
				                <label class="labels">??????</label>
				                <textarea class="form-control" placeholder="enter content" id="content" name="content"  
				                style="height : 270px;"><%=dto.getContent()%></textarea>
				                </div>
				            </div>
				            <div class="mt-5 text-center">
				                <button class="btn btn-primary profile-button" type="button" onclick="goSend()">??????</button>
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
                    <h5 class="modal-title" id="exampleModalLabel">????????????</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">??</span>
                    </button>
                </div>
                <div class="modal-body">???????????? ???????????????????</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">??????</button>

                    <a class="btn btn-primary" href="${commonURL}/admin/adminindex">????????????</a>

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
	function goSend()
	{
		var frm = document.myform;
		if(frm.email1.value.trim().length==0)
		{
			alert("???????????? ???????????????");
			frm.email1.focus();
			return false;
		}
		if(frm.user_seq.value.trim().length==0)
		{
			alert("??????????????? ???????????????");
			frm.user_seq.focus();
			return false;
		}
		if(frm.email2.value.trim().length==0)
		{
			alert("???????????? ???????????????");
			frm.email2.focus();
			return false;
		}
		if(frm.id.value.trim().length==0)
		{
			alert("??????????????? ???????????????");
			frm.id.focus();
			return false;
		}
		if(frm.title.value.trim().length==0)
		{
			alert("????????? ???????????????");
			frm.title.focus();
			return false;
		}
		if(frm.content.value.trim().length==0)
		{
			alert("????????? ???????????????");
			frm.content.focus();
			return false;
		}
		frm.action="${commonURL}/sendMail"
		frm.method="post";
		frm.submit(); //????????? ????????????
		
	}
	

	$(()=>{
		$("#btnfind").click(()=>{
			$.ajax({
				url:"${commonURL}/find",	//?????? url??????
				data:{email:$("#email1").val()},	//????????? ????????? ????????? ?????? : JSON??????
				dataType:"json",	//????????? json?????? ?????????. ????????? ????????? ???????????? text??? ??????.
				type:"POST"
			})
			.done((data)=>{
				//???????????? ??????????????? ???????????? done????????? ???????????? ??????????????? ??????????????? ???????????? ???
				//?????? dataType ????????? ????????? text??? ??????.
				console.log(data.result);
				if(data.result == "fail")
				{
					alert("???????????? ????????????.")
				}
				else
				{
					alert("?????? ???????????????.")
					$("#user_seq").val(data.result);	//??????????????? ?????? ??????
				}
			})
			.fail((error)=>{
				//????????????, ????????? ?????? ???
				console.log(error)
			})
		})
	})
	
	function goMain()
	{
		location.href="${commonURL}/admin/adminhome";		
	}

</script>