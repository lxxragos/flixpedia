<%@page import="com.semi.flix.drama.*"%>
<%@page import="com.semi.flix.common.StringUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<%@include file="../include/css.jsp" %>
	<title>FlixPedia</title>
</head>
<body class="body">
	
	<%
	request.setAttribute("commonURL", request.getContextPath());
	String key = StringUtil.nullToValue(request.getParameter("key"), "1");
	String keyword = StringUtil.nullToValue(request.getParameter("keyword"), "");
	String pg = StringUtil.nullToValue(request.getParameter("pg"), "0");
	int totalCnt = (Integer)request.getAttribute("totalCnt");
	%>
	
	<% 	DramaDto dto = (DramaDto)request.getAttribute("dramaDto"); %>
	<%@include file="../include/header.jsp" %>

		
	
	<!-- details -->
	<section class="section details">
	<form name="myform">
	<input type="hidden" name="board_seq"      value="<%=dto.getBoard_seq()%>" >
	<input type="hidden" name="pg"      value="<%=pg%>" >
		<!-- details background -->
		<div class="details__bg" data-bg="img/home/home__bg.jpg"></div>
		<!-- end details background -->
		<!-- details content -->
		<div class="container">
			<div class="row">
				<!-- title -->
				<div class="col-12">
					<h1 class="details__title"><%=dto.getDrama_title() %></h1>
				</div>
				<!-- end title -->

				<!-- content -->
				<div class="col-12 col-xl-6">
					<div class="card card--details">
						<div class="row">
							<!-- card cover -->
							<div class="col-12 col-sm-4 col-md-4 col-lg-3 col-xl-5">
								<div class="card__cover">
									<img src="${commonURL}/resources/drama_img/<%=dto.getDrama_images() %>" alt="">
								</div>
							</div>
							<!-- end card cover -->

							<!-- card content -->
							<div class="col-12 col-sm-8 col-md-8 col-lg-9 col-xl-7">
								<div class="card__content">
									<div class="card__wrap">
										<span class="card__rate"><i class="icon ion-ios-star"></i>8.4</span>

										<ul class="card__list">
											<li>화질정보 기능</li>
											<li>연령등급 기능</li>
										</ul>
									</div>

									<ul class="card__meta">
										<li>
											<span>Genre:</span> <%
												if(dto.getGenre_code().equals("00")){ %>
													<a href="#">Action</a>
													<%}else if(dto.getGenre_code().equals("01")){ %>
													<a href="#">Romantic</a>
													<%}else if(dto.getGenre_code().equals("02")){ %>
													<a href="#">Comedy</a>
													<%}else if(dto.getGenre_code().equals("03")){ %>
													<a href="#">Thliler/Criminal</a>
													<%}else if(dto.getGenre_code().equals("04")){ %>
													<a href="#">Horror</a>
													<%}else if(dto.getGenre_code().equals("05")){ %>
													<a href="#">SF/Fantasy</a>
													<%}else if(dto.getGenre_code().equals("06")){ %>
													<a href="#">Drama</a>
													<%}%>
													
												
										</li>
										<li><span>출시연도:</span> 출시년</li>
										<li><span>연출/각본:</span> <%=dto.getDrama_producer() %></li>
									</ul>

									<div class="card__description card__description--details">
										<%=dto.getDrama_content() %>
									</div>
								</div>
							</div>
							<!-- end card content -->
						</div>
					</div>
				</div>
				<!-- end content -->


				<!-- player -->
				<div class="col-12 col-xl-6">
					<iframe width="560" height="315" src="<%=dto.getDrama_url() %>"
					title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				</div>
				<!-- end player -->

				<div class="col-12">
					<div class="details__wrap">
						<!-- availables -->
						<div class="details__devices">
							<span class="details__devices-title">Available on devices:</span>
							<ul class="details__devices-list">
								<li><i class="icon ion-logo-apple"></i><span>IOS</span></li>
								<li><i class="icon ion-logo-android"></i><span>Android</span></li>
								<li><i class="icon ion-logo-windows"></i><span>Windows</span></li>
								<li><i class="icon ion-md-tv"></i><span>Smart TV</span></li>
							</ul>
						</div>
						<!-- end availables -->

						<!-- share -->
						<div class="details__share">
							<span class="details__share-title">Share with friends:</span>

							<ul class="details__share-list">
								<li class="facebook"><a href="#"><i class="icon ion-logo-facebook"></i></a></li>
								<li class="instagram"><a href="#"><i class="icon ion-logo-instagram"></i></a></li>
								<li class="twitter"><a href="#"><i class="icon ion-logo-twitter"></i></a></li>
								<li class="vk"><a href="#"><i class="icon ion-logo-vk"></i></a></li>
							</ul>
						</div>
						<!-- end share -->
					</div>
				</div>
			</div>
		</div>
		</form>
		<!-- end details content -->
	</section>
	<!-- end details -->
	

	
	 <%@include file="../include/footer.jsp" %>
		

</body>
</html>