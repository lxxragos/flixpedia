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

    <title>FLIXMEDIA-user write</title>

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
	UserDto dto = (UserDto)request.getAttribute("userDto");
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
                        <a class="collapse-item" href="${commonURL}/admin/board/avgmain">평점 관리</a>
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
                        <form id="myform" name="myform">
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
                            </form>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

				<!-- Begin Page Content -->
				<form id="myform" name="myform" enctype="multipart/form-data">
				<input type="hidden" name="user_seq" id="user_seq" value="<%=dto.getUser_seq() %>"/>
				
				<div class="container rounded bg-white mt-5 mb-5">
				    <div class="row">
				        <div class="col-md-5 border-right">
					            <div class="d-flex flex-column align-items-center text-center p-3 py-5">
					                <img class="rounded mt-5" src="">       
					                <input type="file" class="form-control" id="uplaod" name="upload" 
					                        placeholder="이미지를 업로드하세요" value="<%=dto.getUser_images() %>" onchange="readURL(this);"/>
					                        <br/><br/>
									<img id="preview" src="../../upload/<%=dto.getUser_images() %>"style="width:50%; height:auto;"/>
									<input type="hidden" name="user_images" value="<%=dto.getUser_images() %>"/>
					            </div>
				        </div>
				        <div class="col-md-7 border-right">
				            <div class="p-3 py-5">
				                <div class="d-flex justify-content-between align-items-center mb-3">
				                    
				                </div>
				           	<div class="row mt-3">
				            <% if(dto.getUser_id().equals("")) {%>
				                <div class="col-md-12">
				                	<label class="labels">아이디</label>
				                	<input type="hidden" name="idcheck" id="idcheck" value="N"/>
				                	<input type="text" class="form-control" placeholder="userid" id="user_id" name="user_id"
				                	value="<%=dto.getUser_id()%>" >
				                	<p style="font-size: 11px">아이디는 영문 대소문자와 숫자 4~12자리로 입력하세요</p>
				                </div>
				                <div class="input-group-append">
									<button class="btn btn-success" type="button" id="btnDuplicate">중복체크</button>  
								</div>
				            <% }else{ %>
				                <div class="col-md-12">
				                	<label class="labels">아이디</label>
				                	<input type="hidden" name="idcheck" id="idcheck" value="N"/>
				                	<input type="text" class="form-control" placeholder="userid" id="user_id" name="user_id"
				                	value="<%=dto.getUser_id()%>" readonly>
				                </div>
				                <div class="input-group-append">
									<button class="btn btn-success" type="button" id="btnDuplicate"></button>  
								</div>
				             <%} %>
				             </div>
				             <div class="row mt-2">
				                <div class="col-md-6">
				                <label class="labels">패스워드</label>
				                <input type="text" class="form-control" placeholder="password" id="password" name="password"
				                value="<%=dto.getPassword()%>" >
				                <p style="font-size: 11px">비밀번호는 영문 대소문자와 숫자 4~12자리로 입력하세요</p>
				                </div>
				                <div class="col-md-6">
				                <label class="labels">패스워드</label>
				                <input type="text" class="form-control" placeholder="password check" id="pwd_ck" name="pwd_ck"
				                value="<%=dto.getPassword()%>" >
				                </div>
				            </div>
				            <div class="row mt-2">
				                <div class="col-md-6">
				                <label class="labels">이름</label>
				                <input type="text" class="form-control" placeholder="name" id="name" name="name"
				                value="<%=dto.getName()%>">
				                </div>
				                <div class="col-md-6">
				                <label class="labels">닉네임</label>
				                <input type="text" class="form-control" placeholder="nick_name" id="nick_name" name="nick_name"
				                value="<%=dto.getNick_name()%>" >
				                </div>
				            </div>
				            <div class="row mt-3">
				                <div class="col-md-12">
				                <label class="labels">이메일</label>
				                <input class="form-control" id="email" name="email" placeholder="email" 
				                ><%=dto.getEmail()%></textarea>
				                </div>
				            </div>
				            <div class="row mt-3">
				                <div class="col-md-12">
				                <label class="labels">휴대폰</label>
				                <input class="form-control" id="phone" name="phone" placeholder="phone" 
				                ><%=dto.getPhone()%></textarea>
				                </div>
				            </div>
				            <button type="button"
									onClick="goPopup();" value="팝업_domainChk"
									style="width:100px; height: 30px; margin:2px;">주소 검색</button>
							<div class="form-group row">
								<p style="font-size: 11px">주소는 검색을 이용해주세요</p>
							</div>
				            <div class="row mt-3">
				                <div class="col-md-12">
				                <label class="labels">도로명주소</label>
				                <input class="form-control" readonly="readonly" id="address1" name="address1" placeholder="도로명주소" 
				                ><%=dto.getAddress1()%></textarea>
				                </div>
				            </div>
				            <div class="row mt-2">
				                <div class="col-md-7">
				                <label class="labels">상세주소</label>
				                <input type="text" class="form-control"readonly="readonly" placeholder="상세주소" id="address2" name="address2"
				                value="<%=dto.getAddress2()%>">
				                </div>
				                <div class="col-md-5">
				                <label class="labels">우편번호</label>
				                <input type="text" class="form-control"readonly="readonly" placeholder="우편번호" id="zipcode" name="zipcode"
				                value="<%=dto.getZipcode()%>" >
				                </div>
				            </div>
				            <div class="mt-5 text-center">
				                <button class="btn btn-primary profile-button" type="button" onclick="goWrite()">수정</button>
				                <button class="btn btn-primary profile-button" type="button" onclick="goCancle()">취소</button>
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
function goPopup()
{
	var pop = window.open("juso","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
}
function jusoCallBack(address1,address2,zipcode)
{
		document.myform.address1.value = address1;
		document.myform.address2.value = address2;
		document.myform.zipcode.value = zipcode;
}
$(()=>{
	$("#btnDuplicate").click(()=>{
		$.ajax({
			url:"${commonURL}/admin/user/isDuplicate",	//요청 url정보
			data:{user_id:$("#user_id").val()},	//서버로 전달할 데이터 정보 : JSON형태
			dataType:"json",	//결과를 json으로 받겠다. 이렇게 안하면 결과값이 text로 온다.
			type:"POST"
		})
		.done((data)=>{
			//데이터가 정상적으로 수신되면 done이라는 메서드가 호출되면서 매개변수는 전달받은 값
			//값은 dataType 속성을 안주면 text로 온다.
			console.log(data.result);
			if(data.result == "true")	//중복
			{
				alert("이미 사용중인 아이디 입니다.")
			}
			else
			{
				alert("사용 가능합니다.")
				$("#idcheck").val("Y");
				$("#user_id").prop("readonly", true);	//수정못하게 막는 기능
			}
		})
		.fail((error)=>{
			//통신에러, 오류에 대한 것
			console.log(error)
		})
	})
})
	function goWrite()
	{
	var queryString = $("form[name=myform]").serialize();
	console.log( queryString );
	var user_id='<%=dto.getUser_id()%>';
	var frm = document.myform;
	if( frm.name.value.trim()==""){
		alert("이름을 입력하세요");
		frm.name.focus();
		return false;
	};
	
	 if( frm.user_id.value.trim()==""){
   		alert("아이디를 입력하세요");
   		frm.user_id.focus();
   		return false;
   		} 
	if( frm.password.value.trim()=="")
	{
		alert("비밀번호를 입력하세요");
		frm.password.focus();
		return false;
	}
	 var password1RegExp = /^[a-zA-z0-9]{4,12}$/; //비밀번호 유효성 검사
     if (!password1RegExp.test(frm.password.value.trim())) {
         alert("비밀번호는 영문 대소문자와 숫자 4~12자리로 입력해야합니다!");
         form.password.value = "";
         form.password.focus();
         return false;
     }
	if( frm.password.value.trim()!=frm.pwd_ck.value.trim())
	{
		alert("비밀번호가 다릅니다");
		frm.pwd_ck.focus();
		return false;
	};
	if( frm.nick_name.value.trim()=="")
	{
		alert("닉네임을 입력하세요");
		frm.nick_name.focus();
		return false;
	};
	if( frm.email.value.trim()=="")
	{
		alert("이메일을 입력하세요");
		frm.email.focus();
		return false;
	};
	if( frm.phone.value.trim()=="")
	{
		alert("전화번호를 입력하세요");
		frm.phone.focus();
		return false;
	};
	if( frm.zipcode.value.trim()=="")
	{
		alert("우편번호를 입력하세요");
		frm.zipcode.focus();
		return false;
	};
	if( frm.address1.value.trim()=="")
	{
		alert("도로명 주소를 입력하세요");
		frm.address1.focus();
		return false;
	};
	if( frm.address2.value.trim()=="")
	{
		alert("상세 주소를 입력하세요");
		frm.address2.focus();
		return false;
	};
	
	if(userid=='')
	{
		url="${commonURL}/admin/user/insert",
		msg="회원가입이 되었습니다.";
	}
	else
	{
		url="${commonURL}/admin/user/update",
		msg="회원 정보가 수정되었습니다."
	}
		
	$.ajax({
		url:url,
		data:queryString,
		type:"POST",
	})
	.done( (result)=>{
		console.log( result );
		alert(msg);
		location.href="${commonURL}/admin/user/list";
	})
	.fail( (error)=>{
		console.log(error);
	})
	}
	
	function goMain()
	{
		location.href="${commonURL}/admin/adminhome";		
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
	
	function goCancel()
	{
		location.href="${commonURL}/admin/user/list";
	}
</script>