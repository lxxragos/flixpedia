
<%@page import="com.semi.flix.common.Pager"%>
<%@page import="java.util.List"%>
<%@page import="com.semi.flix.comment.CommentDto"%>
<%@page import="com.semi.flix.animation.AnimationDto"%>
<%@page import="com.semi.flix.common.StringUtil"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<%@include file="../include/css.jsp" %>
	<title>FlixGo – Online Movies, TV Shows & Cinema HTML Template</title>
</head>
<body class="body">
	<%
	String key = StringUtil.nullToValue(request.getParameter("key"), "7");
	String pg = StringUtil.nullToValue(request.getParameter("pg"), "0");
	int commentTotalCnt = (Integer)request.getAttribute("commentTotalCnt");
	AnimationDto dto = (AnimationDto)request.getAttribute("animationDto");
	List<CommentDto> list =(List<CommentDto>)request.getAttribute("commentList");
	
	%>
	<%@include file="../include/header.jsp" %>

		
	
	<!-- details -->
	<section class="section details">
<form name="myform">
	<input type="hidden" name="board_seq"      value="<%=dto.getBoard_seq()%>" >
		<!-- details background -->
		<div class="details__bg" data-bg="${commonURL }/resources/img/home/home__bg.jpg"></div>
		<!-- end details background -->
		<!-- details content -->
		<div class="container">
			<div class="row">
				<!-- title -->
				<div class="col-12">
					<h1 class="details__title"><%=dto.getAni_title() %></h1>
				</div>
				<!-- end title -->

				<!-- content -->
				<div class="col-12 col-xl-6">
					<div class="card card--details">
						<div class="row">
							<!-- card cover -->
							<div class="col-12 col-sm-4 col-md-4 col-lg-3 col-xl-5">
								<div class="card__cover">
									<img src="${commonURL}/resources/animation_img/<%=dto.getAni_images() %>" alt="">
								</div>
							</div>
							<!-- end card cover -->

							<!-- card content -->
							<div class="col-12 col-sm-8 col-md-8 col-lg-9 col-xl-7">
								<div class="card__content">
									<div class="card__wrap">
										<span class="card__rate"><i class="icon ion-ios-star"></i><%=dto.getStar_avg() %></span>

										<ul class="card__list">
											<li><%=dto.getAni_agelimit() %></li>
											
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
										<li><span>출시년:</span> <%=dto.getAni_productionyear() %></li>
										<li><span>작가:</span> <%=dto.getAni_author() %></li>
									</ul>

									<div class="card__description card__description--details">
										<%=dto.getAni_content() %>
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
					<iframe width="560" height="315" src="<%=dto.getAni_url() %>"
					title="YouTube video player" frameborder="0" 
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
					allowfullscreen></iframe>
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
		
		<!-- content -->
	<section class="content">
		<div class="content__head">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<!-- content title -->
						<h2 class="content__title">Discover</h2>
						<!-- end content title -->

						<!-- content tabs nav -->
						<ul class="nav nav-tabs content__tabs" id="content__tabs" role="tablist">
							

							<li class="nav-item">
								<a class="nav-link active" data-toggle="tab" href="#tab-2" role="tab" aria-controls="tab-2" aria-selected="true">Reviews(${commentTotalCnt}건)</a>
							</li>

							
						</ul>
						<!-- end content tabs nav -->
							
			
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-12 col-lg-8 col-xl-8">
					<!-- content tabs -->
					<div class="tab-content" id="myTabContent">
						

						<div class="tab-pane fade show active" id="tab-2" role="tabpanel" aria-labelledby="2-tab">
							<div class="row">
								<!-- reviews -->
								<div class="col-12">
									<div class="reviews">
						<form name="commentForm" method="get">
							<input type="hidden" name="pg"  id="pg" value="<%=pg%>"/>
							<input type="hidden" name="key" id="key" value="<%=key%>"/>
							<input type="hidden" id="board_seq" name="board_seq" value="<%=dto.getBoard_seq()%>">
							<input type="hidden" id="category_code" name="category_code" value="<%=dto.getCategory_code()%>">
							<ul class="reviews__list">
										
							<% for(CommentDto Cdto : list){ %>
										<!--댓글 한칸 시작  -->
											<li class="reviews__item">
												<div class="reviews__autor">
													<img class="reviews__avatar" src="${commonURL }/resources/user_img/<%=Cdto.getUser_images() %>" alt=""> 
													<span class="reviews__name">닉네임 : <%=Cdto.getNick_name() %></span>
													<span class="reviews__time">작성일 : <%=Cdto.getWdate() %></span>

													<span class="reviews__rating"><i class="icon ion-ios-star"></i><%=Cdto.getStar_point() %></span>
												</div>
												<p class="reviews__text"><%=Cdto.getContent() %></p>
												<%
												if(Cdto.getUser_seq().equals(userseq)){
												%>
												<div align="right">
												<button style="width:40px; height: 40px; "  type="button" class="form__btn" onclick="goCommentWrite()">삭제</button>
												</div>
											<%} %>
											</li>
							<%
							
								
							
							} %>
										<!--댓글 한칸 끝  -->
										
										</ul>
										<div class="col-12">
												<%=Pager.makeTag(request, 4, commentTotalCnt) %>
											</div>
							</form>			

										<form action="#" class="form" name="myform2">
											<input type="hidden" id="board_seq" name="board_seq" value="<%=dto.getBoard_seq()%>">
											<input type="hidden" id="category_code" name="category_code" value="<%=dto.getCategory_code()%>">
											<input type="hidden" id="user_seq" name="user_seq" value="<%=userseq%>">
											<input type="hidden" id="star_point" name="star_point" value="">
											
											<input type="text" class="form__input" placeholder="Title" value="<%=nickname%>">
											<textarea class="form__textarea" placeholder="Review" name="content" id="content" ></textarea>
											<div class="form__slider" >
												<div class="form__slider-rating" id="slider__rating"></div>
												<div class="form__slider-value" id="form__slider-value" ></div>
											</div>
											
											<button type="button" class="form__btn" onclick="goCommentWrite()">등록</button>
											
										</form>
									</div>
								</div>
								<!-- end reviews -->
							</div>
						</div>
		</div></div></div></div>
	</section>
	<!-- end details -->
	

	
	 <%@include file="../include/footer.jsp" %>
		

</body>
</html>
<script>



function goCommentWrite()
{
	var star_point = document.getElementById('form__slider-value').value;
	frm2 = document.myform2;
	frm2.star_point.value=star_point;
	
	var userid='<%=userid%>';
	if(userid=="")
	{
		alert("로그인하세요");
		location.href="${commonURL}/member/signin";
	}
	
	var queryString = $("form[name=myform2]").serialize();
   $.ajax({
	   url:"${commonURL}/comment/write",
      data:queryString,
      type:"POST",
      dataType:"json"
   })
   .done( (result)=>{
	    $("#content").val("");
	    //$("#btnCommentSave").html("답글등록");
	    //$("#comment_id").val("");
      	alert("등록완료");
      	location.reload()
   })
   .fail( (error)=>{
      console.log(error);
   })
} 
function goPage(pg)
{
	frm = document.commentForm;
	frm.pg.value=pg;///////////
	frm.method="get";
	frm.action="${pageContext.request.contextPath}/animation/view";
	frm.submit();
}

</script>


