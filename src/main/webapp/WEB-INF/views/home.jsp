<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	

	
<!-- 카졸 시작 movie -->
<section class="movie">
	<!-- 카졸 백그라운드 이미지 movie bg -->
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

			<div class="col-12"> <!-- 카톨 content start-->
				<div class="owl-carousel movie__carousel">

					<div class="item">
						<!-- card -->
						<div class="card card--big">
							<div class="card__cover">
								<img src="<%=request.getContextPath() %>/resources/img/covers/cover.jpg" alt="">
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
						<!-- end card -->
					</div>

					<div class="item">
						<!-- card -->
						<div class="card card--big">
							<div class="card__cover">
								<img src="<%=request.getContextPath() %>/resources/img/covers/cover2.jpg" alt="">
								<a href="#" class="card__play">
									<i class="icon ion-ios-play"></i>
								</a>
							</div>
							<div class="card__content">
								<h3 class="card__title"><a href="#">Benched</a></h3>
								<span class="card__category">
									<a href="#">Comedy</a>
								</span>
								<span class="card__rate"><i class="icon ion-ios-star"></i>7.1</span>
							</div>
						</div>
						<!-- end card -->
					</div>

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
								<h3 class="card__title"><a href="#">Whitney</a></h3>
								<span class="card__category">
									<a href="#">Romance</a>
									<a href="#">Drama</a>
								</span>
								<span class="card__rate"><i class="icon ion-ios-star"></i>6.3</span>
							</div>
						</div>
						<!-- end card -->
					</div>

					<div class="item">
						<!-- card -->
						<div class="card card--big">
							<div class="card__cover">
								<img src="<%=request.getContextPath() %>/resources/img/covers/cover4.jpg" alt="">
								<a href="#" class="card__play">
									<i class="icon ion-ios-play"></i>
								</a>
							</div>
							<div class="card__content">
								<h3 class="card__title"><a href="#">Blindspotting</a></h3>
								<span class="card__category">
									<a href="#">Comedy</a>
									<a href="#">Drama</a>
								</span>
								<span class="card__rate"><i class="icon ion-ios-star"></i>7.9</span>
							</div>
						</div>
						<!-- end card -->
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- 카졸 끝 end movie -->

	<!-- 카졸 시작 drama -->
	<section class="drama" style="margin-top:0px; padding-top: 50px;">
		<!-- 카졸 백그라운드 이미지 drama bg -->
		<div class="owl-carousel drama__bg">
			<div class="item drama__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg.jpg"></div>
			<div class="item drama__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg2.jpg"></div>
			<div class="item drama__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg3.jpg"></div>
			<div class="item drama__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg4.jpg"></div>
		</div>
		<!-- 카졸 백그라운드 이미지 끝end drama bg -->

		<!-- drama 카졸 내용-->
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="drama__title"><b>드라마</b> Drama</h1>
					
					<!-- drama 카졸 move-->
					<button class="drama__nav drama__nav--prev" type="button">
						<i class="icon ion-ios-arrow-round-back"></i>
					</button>
					<button class="drama__nav drama__nav--next" type="button">
						<i class="icon ion-ios-arrow-round-forward"></i>
					</button>
					<!-- drama 카졸 move end-->
				</div>

				<div class="col-12"> <!-- drama 카톨 content start-->
					<div class="owl-carousel drama__carousel">

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover.jpg" alt="">
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
							<!-- end card -->
						</div>

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover2.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">Benched</a></h3>
									<span class="card__category">
										<a href="#">Comedy</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>7.1</span>
								</div>
							</div>
							<!-- end card -->
						</div>

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
									<h3 class="card__title"><a href="#">Whitney</a></h3>
									<span class="card__category">
										<a href="#">Romance</a>
										<a href="#">Drama</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>6.3</span>
								</div>
							</div>
							<!-- end card -->
						</div>

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover4.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">Blindspotting</a></h3>
									<span class="card__category">
										<a href="#">Comedy</a>
										<a href="#">Drama</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>7.9</span>
								</div>
							</div>
							<!-- end card -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- drama 카졸 끝 end  -->

	<!-- enter 카졸 시작  -->
	<section class="enter" style="margin-top:0px; padding-top: 50px;">
		<!-- 카졸 백그라운드 이미지 enter bg -->
		<div class="owl-carousel enter__bg">
			<div class="item enter__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg.jpg"></div>
			<div class="item enter__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg2.jpg"></div>
			<div class="item enter__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg3.jpg"></div>
			<div class="item enter__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg4.jpg"></div>
		</div>
		<!-- 카졸 백그라운드 이미지 끝end enter bg -->

		<!-- enter 카졸 내용-->
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="enter__title"><b>예능</b> enter</h1>
					
					<!-- enter 카졸 move-->
					<button class="enter__nav enter__nav--prev" type="button">
						<i class="icon ion-ios-arrow-round-back"></i>
					</button>
					<button class="enter__nav enter__nav--next" type="button">
						<i class="icon ion-ios-arrow-round-forward"></i>
					</button>
					<!-- enter 카졸 move end-->
				</div>

				<div class="col-12"> <!-- enter 카톨 content start-->
					<div class="owl-carousel enter__carousel">

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover.jpg" alt="">
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
							<!-- end card -->
						</div>

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover2.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">Benched</a></h3>
									<span class="card__category">
										<a href="#">Comedy</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>7.1</span>
								</div>
							</div>
							<!-- end card -->
						</div>

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
									<h3 class="card__title"><a href="#">Whitney</a></h3>
									<span class="card__category">
										<a href="#">Romance</a>
										<a href="#">enter</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>6.3</span>
								</div>
							</div>
							<!-- end card -->
						</div>

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover4.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">Blindspotting</a></h3>
									<span class="card__category">
										<a href="#">Comedy</a>
										<a href="#">drama</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>7.9</span>
								</div>
							</div>
							<!-- end card -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- enter 카졸 끝 end  -->

	<!-- webtoon 카졸 시작  -->
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
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover.jpg" alt="">
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
							<!-- end card -->
						</div>

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover2.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">Benched</a></h3>
									<span class="card__category">
										<a href="#">Comedy</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>7.1</span>
								</div>
							</div>
							<!-- end card -->
						</div>

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
									<h3 class="card__title"><a href="#">Whitney</a></h3>
									<span class="card__category">
										<a href="#">Romance</a>
										<a href="#">webtoon</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>6.3</span>
								</div>
							</div>
							<!-- end card -->
						</div>

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover4.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">Blindspotting</a></h3>
									<span class="card__category">
										<a href="#">Comedy</a>
										<a href="#">drama</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>7.9</span>
								</div>
							</div>
							<!-- end card -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- webtoon 카졸 끝 end  -->

	<!-- ani 카졸 시작  -->
	<section class="ani" style="margin-top:0px; padding-top: 50px;">
		<!-- 카졸 백그라운드 이미지 ani bg -->
		<div class="owl-carousel ani__bg">
			
			
			
			<div class="item ani__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/kalnal.jpg"></div>
		</div>
		<!-- 카졸 백그라운드 이미지 끝end ani bg -->

		<!-- ani 카졸 내용-->
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="ani__title"><b>애니메이션</b> ani</h1>
				
					
					<!-- ani 카졸 move-->
					<button class="ani__nav ani__nav--prev" type="button">
						<i class="icon ion-ios-arrow-round-back"></i>
					</button>
					<button class="ani__nav ani__nav--next" type="button">
						<i class="icon ion-ios-arrow-round-forward"></i>
					</button>
					<!-- ani 카졸 move end-->
				</div>

				<div class="col-12"> <!-- ani 카톨 content start-->
					<div class="owl-carousel ani__carousel">

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover.jpg" alt="">
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
							<!-- end card -->
						</div>

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover2.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">Benched</a></h3>
									<span class="card__category">
										<a href="#">Comedy</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>7.1</span>
								</div>
							</div>
							<!-- end card -->
						</div>

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
									<h3 class="card__title"><a href="#">Whitney</a></h3>
									<span class="card__category">
										<a href="#">Romance</a>
										<a href="#">ani</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>6.3</span>
								</div>
							</div>
							<!-- end card -->
						</div>

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover4.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">Blindspotting</a></h3>
									<span class="card__category">
										<a href="#">Comedy</a>
										<a href="#">drama</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>7.9</span>
								</div>
							</div>
							<!-- end card -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ani 카졸 끝 end  -->

	<!-- book 카졸 시작  -->
	<section class="book" style="margin-top:0px; padding-top: 50px;">
		<!-- 카졸 백그라운드 이미지 book bg -->
		<div class="owl-carousel book__bg">
			<div class="item book__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg.jpg"></div>
			<div class="item book__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg2.jpg"></div>
			<div class="item book__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg3.jpg"></div>
			<div class="item book__cover" data-bg="<%=request.getContextPath() %>/resources/img/home/home__bg4.jpg"></div>
		</div>
		<!-- 카졸 백그라운드 이미지 끝end book bg -->

		<!-- book 카졸 내용-->
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="book__title"><b>도서</b> book</h1>
					
					
					<!-- book 카졸 move-->
					<button class="book__nav book__nav--prev" type="button">
						<i class="icon ion-ios-arrow-round-back"></i>
					</button>
					<button class="book__nav book__nav--next" type="button">
						<i class="icon ion-ios-arrow-round-forward"></i>
					</button>
					<!-- book 카졸 move end-->
				</div>

				<div class="col-12"> <!-- book 카톨 content start-->
					<div class="owl-carousel book__carousel">

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover.jpg" alt="">
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
							<!-- end card -->
						</div>

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover2.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">Benched</a></h3>
									<span class="card__category">
										<a href="#">Comedy</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>7.1</span>
								</div>
							</div>
							<!-- end card -->
						</div>

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
									<h3 class="card__title"><a href="#">Whitney</a></h3>
									<span class="card__category">
										<a href="#">Romance</a>
										<a href="#">book</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>6.3</span>
								</div>
							</div>
							<!-- end card -->
						</div>

						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<img src="<%=request.getContextPath() %>/resources/img/covers/cover4.jpg" alt="">
									<a href="#" class="card__play">
										<i class="icon ion-ios-play"></i>
									</a>
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#">Blindspotting</a></h3>
									<span class="card__category">
										<a href="#">Comedy</a>
										<a href="#">drama</a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>7.9</span>
								</div>
							</div>
							<!-- end card -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- book 카졸 끝 end  -->

	
	
	
	
	
	
	
	
<%@include file="include/footer.jsp" %>
</body>

</html>