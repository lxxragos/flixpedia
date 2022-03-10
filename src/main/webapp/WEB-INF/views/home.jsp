<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.semi.flix.drama.*" %>
<%@page import="com.semi.flix.movie.*" %>
<%@page import="java.util.*"%>

<%@ page session="false" %>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<%@include file="include/css.jsp" %> 
</head>
<body class="body">
	<!-- header -->
	<%@include file="include/header.jsp" %>
	<%
	List<DramaDto> dramaList =(List<DramaDto>)request.getAttribute("dramaList"); 
		List<MovieDto> movieList =(List<MovieDto>)request.getAttribute("movieList");
	%>

	
<!-- **************************************************영화 카졸********************************************************** -->
<section class="movie">
	<div class="owl-carousel movie__bg">
		<div class="item home__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg.jpg"></div>
		<div class="item home__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg2.jpg"></div>
		<div class="item home__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg3.jpg"></div>
		<div class="item home__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg4.jpg"></div>
	</div>
	<!-- 카졸 백그라운드 이미지 끝end movie bg -->

	<!-- 카졸 내용-->
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1 class="movie__title"><b>영화</b> Movie</h1>
				
				<!-- 카졸 move-->
				<button class="movie__nav movie__nav--prev" type="button">
					<i class="icon ion-ios-arrow-round-back"></i>
				</button>
				<button class="movie__nav movie__nav--next" type="button">
					<i class="icon ion-ios-arrow-round-forward"></i>
				</button>
				<!-- 카졸 move end-->
			</div>
			<div class="col-12"> 
				<div class="owl-carousel movie__carousel">
				<!-- movie content start-->
				
					<div class="item">
						<!-- card -->
						<div class="card card--big">
							<div class="card__cover">
								<img src="<%=request.getContextPath() %>/resources/img/covers/cover.jpg" alt="">
								<a href="${commonURL}/drama/view" class="card__play">
									<i class="icon ion-ios-play"></i>
								</a>
							</div>
							<div class="card__content">
								<h3 class="card__title"><a href="#">I Dream in Another Language</a></h3>
								<span class="card__category">
									<a href="#">Action</a>
									<a href="#">Triler</a>
								</span>
								<span class="card__rate"><i class="icon ion-ios-star"></i>8.4</span>
							</div>
						</div>
						<!-- end card -->
					</div>

					
				</div>
			</div>
		</div>
	</div>
</section>

<!-- **************************************************영화 카졸 끝********************************************************** -->

<!-- *************************************************드라마 카졸 시작********************************************************** -->
	<form id="dramaForm" name="dramaForm" >
	<input type="hidden" name="board_seq" value=""/>
	<section class="drama" style="margin-top:0px; padding-top: 50px;">
		<!-- 카졸 백그라운드 이미지 drama bg -->
		<div class="owl-carousel drama__bg">
			<div class="item drama__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg.jpg"></div>
			<div class="item drama__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg2.jpg"></div>
			<div class="item drama__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg3.jpg"></div>
			<div class="item drama__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg4.jpg"></div>
		</div>
		<!-- 카졸 백그라운드 이미지 끝end drama bg -->


		<!-- drama 카졸 move-->
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="drama__title"><a href="${commonURL}/drama/list" style="color:white;"><b>드라마</b> Drama</a></h1>
					<button class="drama__nav drama__nav--prev" type="button">
						<i class="icon ion-ios-arrow-round-back"></i>
					</button>
					<button class="drama__nav drama__nav--next" type="button">
						<i class="icon ion-ios-arrow-round-forward"></i>
					</button>
				</div>
				<div class="col-12">
					<div class="owl-carousel drama__carousel">
				<!-- drama 카졸 move end-->
							
				<%						
					for(DramaDto tempDto: dramaList){
				%>
						<div class="item" style="width: 255px; margin-right: 80px;">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover" onclick="goView('<%=tempDto.getBoard_seq()%>')">
									<img src="<%=request.getContextPath() %>/resources/drama_images/<%=tempDto.getDrama_images()%>" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title" onclick="goView('<%=tempDto.getBoard_seq()%>')"><a href="#"><%=tempDto.getDrama_title() %></a></h3>
									<span class="card__category">
										<a href="#"><%=tempDto.getGenre_code() %></a>
										
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i><%=tempDto.getDrama_hit() %></span>
								</div>
							</div>
						</div>
						<!-- end card -->
				<%
					}
				%>
						
					</div>
				</div>
			</div>
		</div>
	</section>
	</form>
	<!-- drama 카졸 끝 end  -->
<!-- ************************************************드라마 카졸 끝************************************************************ -->


<!-- ************************************************예능 카졸************************************************************ -->
	<section class="enter" style="margin-top:0px; padding-top: 50px;">
		<!-- 카졸 백그라운드 이미지 enter bg -->
		<div class="owl-carousel enter__bg">
			<div class="item enter__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg.jpg"></div>
			<div class="item enter__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg2.jpg"></div>
			<div class="item enter__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg3.jpg"></div>
			<div class="item enter__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg4.jpg"></div>
		</div>
		<!-- 카졸 백그라운드 이미지 끝end enter bg -->

		<!--********** Enter [카 졸]***********************************************-->
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="enter__title"><b>예능</b> ENTER</h1>
					
					<!-- enter 카졸 move-->
					<button class="enter__nav enter__nav--prev" type="button">
						<i class="icon ion-ios-arrow-round-back"></i>
					</button>
					<button class="enter__nav enter__nav--next" type="button">
						<i class="icon ion-ios-arrow-round-forward"></i>
					</button>
				</div>
		
				<div class="col-12"> <!-- enter 카톨 content start-->
					<div class="owl-carousel enter__carousel">
				<!-- enter 카졸 move-->
							
							
					<!-- card -->				
						<div class="item">
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover2.jpg" alt="">
									<a href="#" class="card__play">
									
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">I Dream in Another Language</a></h3>
									<span class="card__category">
										<a href="#">Action</a>
										<a href="#">Triler</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>8.4</span>
								</div>
							</div>
						</div>
						<!-- end card -->
						
					</div>
				</div>
			</div>
		</div>
	</section>
<!-- ************************************************예능 카졸 끝************************************************************ -->

<!-- ************************************************ 웹툰 카졸 ************************************************************ -->
	<section class="webtoon" style="margin-top:0px; padding-top: 50px;">
		<!-- 카졸 백그라운드 이미지 webtoon bg -->
		<div class="owl-carousel webtoon__bg">
			<div class="item webtoon__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg.jpg"></div>
			<div class="item webtoon__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg2.jpg"></div>
			<div class="item webtoon__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg3.jpg"></div>
			<div class="item webtoon__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg4.jpg"></div>
		</div>
		<!-- 카졸 백그라운드 이미지 끝end webtoon bg -->

		<!-- webtoon 카졸 내용-->
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="webtoon__title"><b>웹툰</b> webtoon</h1>
					
					<!-- webtoon 카졸 move-->
					<button class="webtoon__nav webtoon__nav--prev" type="button">
						<i class="icon ion-ios-arrow-round-back"></i>
					</button>
					<button class="webtoon__nav webtoon__nav--next" type="button">
						<i class="icon ion-ios-arrow-round-forward"></i>
					</button>
					<!-- webtoon 카졸 move end-->
				</div>

				<div class="col-12"> <!-- webtoon 카톨 content start-->
					<div class="owl-carousel webtoon__carousel">

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover3.jpg" alt="">
									<a href="#" class="card__play">
									
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">I Dream in Another Language</a></h3>
									<span class="card__category">
										<a href="#">Action</a>
										<a href="#">Triler</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>8.4</span>
								</div>
							</div>
						</div>
						<!-- end card -->

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ************************************************ 웹툰 카졸 끝 ************************************************************ -->

	<!-- ************************************************ 애니 카졸 시작 ************************************************************ -->
	<section class="ani" style="margin-top:0px; padding-top: 50px;">
		<!-- 카졸 백그라운드 이미지 ani bg -->
		<div class="owl-carousel webtoon__bg">
			<div class="item webtoon__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg.jpg"></div>
			<div class="item webtoon__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg2.jpg"></div>
			<div class="item webtoon__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg3.jpg"></div>
			<div class="item webtoon__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg4.jpg"></div>
		</div>
		<!-- 카졸 백그라운드 이미지 끝end ani bg -->

		<!-- ani 카졸 내용-->
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="webtoon__title"><b>애니메이션</b> animation</h1>
					
					<!-- webtoon 카졸 move-->
					<button class="webtoon__nav webtoon__nav--prev" type="button">
						<i class="icon ion-ios-arrow-round-back"></i>
					</button>
					<button class="webtoon__nav webtoon__nav--next" type="button">
						<i class="icon ion-ios-arrow-round-forward"></i>
					</button>
					<!-- webtoon 카졸 move end-->
				</div>

				<div class="col-12"> <!-- ani 카톨 content start-->
					<div class="owl-carousel ani__carousel">

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover3.jpg" alt="">
									<a href="#" class="card__play">
									
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">I Dream in Another Language</a></h3>
									<span class="card__category">
										<a href="#">Action</a>
										<a href="#">Triler</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>8.4</span>
								</div>
							</div>
						</div>
						<!-- end card -->

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ************************************************ 애니 카졸 끝 ************************************************************ -->
		
	
<%@include file="include/footer.jsp" %>
</body>

</html>

<script>

function goView(seq){
	let frm = document.dramaForm;
	frm.board_seq.value=seq;///////////
	frm.method="get";
	frm.action="${pageContext.request.contextPath}/drama/view";
	frm.submit();
}

</script>
