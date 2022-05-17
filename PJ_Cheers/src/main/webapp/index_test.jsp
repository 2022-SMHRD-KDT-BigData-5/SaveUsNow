<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="com.smhrd.domain.Member"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>Clemo – Free HTML5 Multipurpose Portfolio Page Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="apple-touch-icon" href="apple-touch-icon.png">

<script type="text/javascript" src="assets/js/vendor/bootstrap.js"></script>
<script type="text/javascript" src="assets/js/vendor/bootstrap.min.js"></script>
<script type="text/javascript"
	src="assets/js/vendor/jquery-1.11.2.min.js"></script>
<script type="text/javascript"
	src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
<script type="text/javascript" src="assets/js/vendor/npm.js"></script>

<link rel="stylesheet" href="assets/css/fonticons.css">
<link rel="stylesheet" href="assets/css/slider-pro.css">
<link rel="stylesheet" href="assets/css/stylesheet.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">


<!--For Plugins external css-->
<link rel="stylesheet" href="assets/css/plugins.css" />

<!--Theme custom css -->
<link rel="stylesheet" href="assets/css/style.css">

<!--Theme Responsive css-->
<link rel="stylesheet" href="assets/css/responsive.css" />

<script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar-collapse">
	<!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<div class='preloader'>
		<div class='loaded'>&nbsp;</div>
	</div>
	<header id="main_menu" class="header navbar-fixed-top">
		<div class="main_menu_bg">
			<div class="container">
				<div class="row">
					<div class="nave_menu">
						<nav class="navbar navbar-default" id="navmenu">
							<div class="container-fluid">
								<!-- Brand and toggle get grouped for better mobile display -->
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed"
										data-toggle="collapse"
										data-target="#bs-example-navbar-collapse-1"
										aria-expanded="false">
										<span class="sr-only">Toggle navigation</span> <span
											class="icon-bar"></span> <span class="icon-bar"></span> <span
											class="icon-bar"></span>
									</button>
									
									<a class="navbar-brand" href="index.jsp"> <img
										src="assets/images/logo.png" />
									</a>
									
								</div>

								<!-- Collect the nav links, forms, and other content for toggling -->
										
						 		<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-test">
									<ul class="nav navbar-nav navbar-right">
									<!-- 회원정보 -->
									<c:choose>
										<c:when test="${empty loginMember}">
											<!--if절 (조건작성!) - if~else문  -->
											<li class="dropdown"><a href="Join.jsp">회원가입</a></li>
											<li class="dropdown"><a href="Login.jsp">로그인</a></li>
										</c:when>

										<c:otherwise>
											<!--else절  -->
											<c:if test="${loginMember.id eq 'admin'}">
												<!-- 단순 if문 -->
												<a href="select.jsp">전체회원정보</a>
											</c:if>
											<li><a>${loginMember.nick}님 환영합니다.</a></li>
											<li><a href="LogoutCon">로그아웃</a></li>
											<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-haspopup="true">마이페이지</a>
											<ul class="dropdown-menu">
												<li><a href="mypage.jsp">즐겨찾기</a></li>
												<li><a href="mypage.jsp">회원정보 수정</a></li>
												<li><a href="DeleteCon?id=${loginMember.id}">회원 탈퇴</a></li>
											</ul></li>
										</c:otherwise>
										</c:choose>
									</ul>
									

								</div>

								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav navbar-right">
								
										<li><a href="aboutus.html">about us</a></li>
										<li class="dropdown"><a href="recipe.jsp">마셔볼래</a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-haspopup="true">같이마실래?</a>
											<ul class="dropdown-menu">
												<li><a href="toast.html">work page</a></li>
												<li><a href="work1.html">work page Two</a></li>
												<li><a href="index_select.jsp">게시판조회페이지</a></li>
											</ul></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-haspopup="true">같이볼래?</a>
											<ul class="dropdown-menu">
												<li><a href="soto.html">blog page</a></li>
												<li><a href="bloginner.html">singleblog page</a></li>
											</ul></li>
										<li><a href="contact.html">contact</a></li>
									</ul>
								</div>
							</div>
						</nav>
					</div>
				</div>

			</div>

		</div>
	</header>
	<!--End of header -->




	<!-- Home Section -->
	<section id="home" class="home">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 ">
					<div class="main_home_slider text-center">
						<div class="single_home_slider">
							<div class="home-overlay"></div>
							<div class="main_home wow fadeInUp" data-wow-duration="700ms">
								<h2>마셔볼래</h2>
								<div class="separator"></div>
								<p class="subtitle">
									♡ 홈레시피 ♡ <br /> 맛있는 술을 쉽게 만들어 먹을 수 있게 레시피를 제공해주는 공간
								</p>
								<div class="home_btn">
									<a href="recipe.html" class="btn">레시피 보러 가기</a>
								</div>
							</div>
						</div>
						<!-- End of single_home_slider -->

						<div class="single_home_slider">
							<div class="home-overlay"></div>
							<div class="main_home wow fadeInUp" data-wow-duration="700ms">
								<h2>같이마실래?</h2>
								<div class="separator"></div>
								<p class="subtitle">
									♡ 랜선짠 ♡<br /> 따로 또 같이 즐기는 술 마시는 공간
								</p>
								<div class="home_btn">
									<a href="" class="btn">Learn More</a>
								</div>
							</div>
						</div>
						<!-- End of single_home_slider -->

						<div class="single_home_slider">
							<div class="home-overlay"></div>
							<div class="main_home wow fadeInUp" data-wow-duration="700ms">
								<h2>같이볼래?</h2>
								<div class="separator"></div>
								<p class="subtitle">
									♡ OTT매칭 ♡ <br /> 따로 또 같이 보면서 술을 즐기는 공간
								</p>
								<div class="home_btn">
									<a href="" class="btn">Learn More</a>
								</div>
							</div>
						</div>
						<!-- End of single_home_slider -->


					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End of Home Section -->




	<!-- Service Section -->
	<section id="service" class="service sections lightbg">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="head_title text-center">
						<h1>what we do?</h1>
					</div>
					<!-- End of head title -->

					<div class="main_service_area">
						<div class="single_service_area">
							<div class="row">
								<div class="col-sm-6">
									<div class="signle_service_left">
										<img src="assets/images/service0.png" alt="" />
									</div>
								</div>
								<div class="col-sm-5 col-sm-push-1">
									<div class="single_service">
										<h3>creative</h3>
										<h2>kitchen</h2>
										<div class="separator2"></div>
										<p>Sed ut perspiciatis unde omnis iste natus error sit
											voluptatem accusantium doloremque laudantium, totam rem
											aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
											architecto beatae vitae dicta sunt explicabo.</p>

										<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur
											aut odit aut fugit, sed quia consequuntur magni dolores eos
											qui ratione voluptatem sequi nesciunt.</p>

										<a href="" class="btn btn-default">learn more</a>
									</div>
								</div>
							</div>
						</div>
						<!-- End of single service area -->

						<div class="single_service_area  margin-top-80">
							<div class="row">

								<div class="col-sm-6 col-sm-push-6">
									<div class="signle_service_left">
										<img src="assets/images/service2.png" alt="" />
									</div>
								</div>

								<div class="col-sm-5 col-sm-pull-6">
									<div class="single_service">
										<h3>art</h3>
										<h2>installation</h2>
										<div class="separator2"></div>
										<p>Sed ut perspiciatis unde omnis iste natus error sit
											voluptatem accusantium doloremque laudantium, totam rem
											aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
											architecto beatae vitae dicta sunt explicabo.</p>

										<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur
											aut odit aut fugit, sed quia consequuntur magni dolores eos
											qui ratione voluptatem sequi nesciunt.</p>

										<a href="" class="btn btn-default">learn more</a>
									</div>
								</div>

							</div>
						</div>
						<!-- End of single service area -->

						<div class="single_service_area margin-top-80">
							<div class="row">
								<div class="col-sm-6">
									<div class="signle_service_left">
										<img src="assets/images/service3.jpg" alt="" />
									</div>
								</div>
								<div class="col-sm-5 col-sm-push-1">
									<div class="single_service">
										<h3>print</h3>
										<h2>design</h2>
										<div class="separator2"></div>
										<p>Sed ut perspiciatis unde omnis iste natus error sit
											voluptatem accusantium doloremque laudantium, totam rem
											aperiam, eaque ipsa quae ab illo inventore veritatis et quasi
											architecto beatae vitae dicta sunt explicabo.</p>

										<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur
											aut odit aut fugit, sed quia consequuntur magni dolores eos
											qui ratione voluptatem sequi nesciunt.</p>

										<a href="" class="btn btn-default">learn more</a>
									</div>
								</div>
							</div>
						</div>
						<!-- End of single service area -->
					</div>
				</div>
				<!-- End of col-sm-12 -->
			</div>
			<!-- End of row -->
		</div>
		<!-- End of Container -->
	</section>
	<!-- End of Service Section -->

	<!-- Work Section -->
	<section id="work" class="work sections">
		<div class="container">
			<div class="row">
				<div class="main_mix_content text-center">
					<div class="head_title">
						<h1>our best work</h1>
					</div>
					<!-- End of head title -->

					<div id="mixcontent" class="mixcontent text-center">
						<div class="col-sm-4 col-xs-12">
							<div class="single_mixi_portfolio">
								<img src="assets/images/pf01.png" alt="" />
								<div class="single_work_overlay">
									<h4>golfino awards</h4>
									<div class="separator"></div>
									<p>print design</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-xs-12">
							<div class="single_mixi_portfolio">
								<img src="assets/images/pf02.png" alt="" />
								<div class="single_work_overlay single_work_overlay2">
									<h4>golfino awards</h4>
									<div class="separator"></div>
									<p>print design</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-xs-12">
							<div class="single_mixi_portfolio">
								<img src="assets/images/pf3.png" alt="" />
								<div class="single_work_overlay">
									<h4>golfino awards</h4>
									<div class="separator"></div>
									<p>print design</p>
								</div>
							</div>
						</div>
						<div class="col-sm-4 col-xs-12">
							<div class="single_mixi_portfolio">
								<img src="assets/images/pf4.png" alt="" />
								<div class="single_work_overlay single_work_overlay2">
									<h4>golfino awards</h4>
									<div class="separator"></div>
									<p>print design</p>
								</div>
							</div>
						</div>

						<div class="col-sm-4 col-xs-12">
							<div class="single_mixi_portfolio">
								<img src="assets/images/pf6.png" alt="" />
								<div class="single_work_overlay single_work_overlay2">
									<h4>golfino awards</h4>
									<div class="separator"></div>
									<p>print design</p>
								</div>
							</div>
						</div>

						<div class="col-sm-4 col-xs-12">
							<div class="single_mixi_portfolio">
								<img src="assets/images/pf5.png" alt="" />
								<div class="single_work_overlay">
									<h4>golfino awards</h4>
									<div class="separator"></div>
									<p>print design</p>
								</div>
							</div>
						</div>
					</div>

					<a href="" class="btn">learn more</a>
				</div>
			</div>
			<!-- End of row -->
		</div>
		<!-- End of Contaier -->
	</section>
	<!-- End of portfolio Section -->



	<!-- Team Section -->
	<section id="team" class="team colorsbg sections">
		<div class="container">
			<div class="row">
				<div class="main_team_area">
					<div class="head_title text-center">
						<h1>best team</h1>
					</div>
					<!-- End of head title -->

					<div class="main_team text-center">
						<div class="single_team">
							<div class="col-sm-10 col-sm-offset-1">
								<div class="row">
									<div class="col-sm-4">
										<div class="team">
											<img class="img-circle" src="assets/images/team1.jpg" alt="" />
											<h4>paul hall</h4>
											<div class="separator"></div>
											<p>art director</p>
										</div>
									</div>
									<!-- End of col-sm-4 -->
									<div class="col-sm-4">
										<div class="team">
											<img class="img-circle" src="assets/images/team2.jpg" alt="" />
											<h4>joshua spencer</h4>
											<div class="separator"></div>
											<p>founder</p>
										</div>
									</div>
									<!-- End of col-sm-4 -->
									<div class="col-sm-4">
										<div class="team">
											<img class="img-circle" src="assets/images/team3.jpg" alt="" />
											<h4>diane lewis</h4>
											<div class="separator"></div>
											<p>artist, designer</p>
										</div>
									</div>
									<!-- End of col-sm-4 -->
								</div>
							</div>
							<!-- End of col-sm-10 -->
						</div>
						<div class="single_team">
							<div class="col-sm-10 col-sm-offset-1">
								<div class="row">
									<div class="col-sm-4">
										<div class="team">
											<img class="img-circle" src="assets/images/team1.jpg" alt="" />
											<h4>paul hall</h4>
											<div class="separator"></div>
											<p>art director</p>
										</div>
									</div>
									<!-- End of col-sm-4 -->
									<div class="col-sm-4">
										<div class="team">
											<img class="img-circle" src="assets/images/team1.jpg" alt="" />
											<h4>joshua spencer</h4>
											<div class="separator"></div>
											<p>founder</p>
										</div>
									</div>
									<!-- End of col-sm-4 -->
									<div class="col-sm-4">
										<div class="team">
											<img class="img-circle" src="assets/images/team1.jpg" alt="" />
											<h4>diane lewis</h4>
											<div class="separator"></div>
											<p>artist, designer</p>
										</div>
									</div>
									<!-- End of col-sm-4 -->
								</div>
							</div>
							<!-- End of col-sm-10 -->
						</div>
						<div class="single_team">
							<div class="col-sm-10 col-sm-offset-1">
								<div class="row">
									<div class="col-sm-4">
										<div class="team">
											<img class="img-circle" src="assets/images/team1.jpg" alt="" />
											<h4>paul hall</h4>
											<div class="separator"></div>
											<p>art director</p>
										</div>
									</div>
									<!-- End of col-sm-4 -->
									<div class="col-sm-4">
										<div class="team">
											<img class="img-circle" src="assets/images/team1.jpg" alt="" />
											<h4>joshua spencer</h4>
											<div class="separator"></div>
											<p>founder</p>
										</div>
									</div>
									<!-- End of col-sm-4 -->
									<div class="col-sm-4">
										<div class="team">
											<img class="img-circle" src="assets/images/team1.jpg" alt="" />
											<h4>diane lewis</h4>
											<div class="separator"></div>
											<p>artist, designer</p>
										</div>
									</div>
									<!-- End of col-sm-4 -->
								</div>
							</div>
							<!-- End of col-sm-10 -->
						</div>
					</div>
				</div>
			</div>
			<!-- End of row -->
		</div>
		<!-- End of Contaier -->
	</section>
	<!-- End of portfolio Section -->



	<!-- Clients Section -->
	<section id="clients" class="clients sections">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="main_clients_area text-center">
						<div class="head_title">
							<h1>clients say’s</h1>
						</div>
						<!-- End of head title -->

						<div id="example3" class="slider-pro">
							<div class="sp-slides sps_slider">
								<div class="sp-slide">
									<div class="col-sm-12">
										<div class="row">
											<div class="col-sm-6 col-xs-6">
												<div class="single_left_text text-right">
													<h4 class="sp-layer" data-horizontal="right"
														data-vertical="0" data-width="81%"
														data-show-transition="left" data-show-delay="200">
														frank sims</h4>

													<div class="separator sp-layer sp-black"
														data-horizontal="340" data-vertical="70"></div>

													<p class="sp-layer" data-horizontal="right"
														data-vertical="100" data-width="81%"
														data-show-transition="left" data-show-delay="400">
														photographer</p>

												</div>
											</div>
											<!-- End of col-sm-6 -->
											<div class="col-sm-6 col-xs-6">
												<div class="single_right_text text-left">
													<p class="sp-layer right_sp_layer" data-width="100%">Sed
														ut perspiciatis unde omnis iste natus error sit voluptatem
														accusantium doloremque laudantium, totam rem aperiam,
														eaque ipsa quae ab illo inventore veritatis et quasi
														architecto beatae vitae dicta sunt explicabo.</p>
												</div>
											</div>
											<!-- End of col-sm-6 -->
										</div>
									</div>
									<!-- End of col-sm-12 -->
								</div>
								<div class="sp-slide">
									<div class="col-sm-12">
										<div class="row">
											<div class="col-sm-6 col-xs-6">
												<div class="single_left_text text-right">
													<h4 class="sp-layer" data-horizontal="right"
														data-vertical="0" data-width="81%"
														data-show-transition="left" data-show-delay="200">
														frank sims</h4>

													<div class="separator sp-layer sp-black"
														data-horizontal="340" data-vertical="70"></div>

													<p class="sp-layer" data-horizontal="right"
														data-vertical="100" data-width="81%"
														data-show-transition="left" data-show-delay="400">
														photographer</p>

												</div>
											</div>
											<!-- End of col-sm-6 -->
											<div class="col-sm-6 col-xs-6">
												<div class="single_right_text text-left">
													<p class="sp-layer right_sp_layer" data-width="100%">Sed
														ut perspiciatis unde omnis iste natus error sit voluptatem
														accusantium doloremque laudantium, totam rem aperiam,
														eaque ipsa quae ab illo inventore veritatis et quasi
														architecto beatae vitae dicta sunt explicabo.</p>
												</div>
											</div>
											<!-- End of col-sm-6 -->
										</div>
									</div>
									<!-- End of col-sm-12 -->
								</div>
								<div class="sp-slide">
									<div class="col-sm-12">
										<div class="row">
											<div class="col-sm-6 col-xs-6">
												<div class="single_left_text text-right">
													<h4 class="sp-layer" data-horizontal="right"
														data-vertical="0" data-width="81%"
														data-show-transition="left" data-show-delay="200">
														frank sims</h4>

													<div class="separator sp-layer sp-black"
														data-horizontal="340" data-vertical="70"></div>

													<p class="sp-layer" data-horizontal="right"
														data-vertical="100" data-width="81%"
														data-show-transition="left" data-show-delay="400">
														photographer</p>

												</div>
											</div>
											<!-- End of col-sm-6 -->
											<div class="col-sm-6 col-xs-6">
												<div class="single_right_text text-left">
													<p class="sp-layer right_sp_layer" data-width="100%">Sed
														ut perspiciatis unde omnis iste natus error sit voluptatem
														accusantium doloremque laudantium, totam rem aperiam,
														eaque ipsa quae ab illo inventore veritatis et quasi
														architecto beatae vitae dicta sunt explicabo.</p>
												</div>
											</div>
											<!-- End of col-sm-6 -->
										</div>
									</div>
									<!-- End of col-sm-12 -->
								</div>
								<div class="sp-slide">
									<div class="col-sm-12">
										<div class="row">
											<div class="col-sm-6 col-xs-6">
												<div class="single_left_text text-right">
													<h4 class="sp-layer" data-horizontal="right"
														data-vertical="0" data-width="81%"
														data-show-transition="left" data-show-delay="200">
														frank sims</h4>

													<div class="separator sp-layer sp-black"
														data-horizontal="340" data-vertical="70"></div>

													<p class="sp-layer" data-horizontal="right"
														data-vertical="100" data-width="81%"
														data-show-transition="left" data-show-delay="400">
														photographer</p>

												</div>
											</div>
											<!-- End of col-sm-6 -->
											<div class="col-sm-6 col-xs-6">
												<div class="single_right_text text-left">
													<p class="sp-layer right_sp_layer" data-width="100%">Sed
														ut perspiciatis unde omnis iste natus error sit voluptatem
														accusantium doloremque laudantium, totam rem aperiam,
														eaque ipsa quae ab illo inventore veritatis et quasi
														architecto beatae vitae dicta sunt explicabo.</p>
												</div>
											</div>
											<!-- End of col-sm-6 -->
										</div>
									</div>
									<!-- End of col-sm-12 -->
								</div>
							</div>

							<div class="sp-thumbnails">
								<img class="sp-thumbnail" src="assets/images/c1.png" /> <img
									class="sp-thumbnail" src="assets/images/c1.png" /> <img
									class="sp-thumbnail" src="assets/images/c1.png" /> <img
									class="sp-thumbnail" src="assets/images/c1.png" />
							</div>
						</div>
					</div>
				</div>
				<!-- End of col-sm-12 -->
			</div>
			<!-- End of row -->
		</div>
		<!-- End of Contaier -->
	</section>
	<!-- End of portfolio Section -->


	<!-- Contact Section -->
	<section id="contact" class="contact">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class="main_contact sections">
						<div class="head_title text-center whitetext">
							<h1>get in touch</h1>
						</div>
						<!-- End of head title -->

						<div class="row">
							<div class="contact_contant">
								<div class="col-sm-6 col-xs-12">
									<div class="single_message_right_info whitetext">
										<ul>
											<li><i class="fa fa-map-marker"></i> <span>23
													Mulholland Drive, Suite 721. Los Angeles 10010 100 S. Main
													Street. Los Angeles 90012</span></li>

											<li><i class="fa fa-mobile-phone"></i> <span>+1-670-567-5590</span></li>

											<li><i class="fa fa-envelope-o"></i> <span>hello@clemocreative.com</span></li>
										</ul>

										<div class="contact_socail transition">
											<a href=""><i class="fa fa-facebook img-circle"></i></a> <a
												href=""><i class="fa fa-twitter img-circle"></i></a> <a
												href=""><i class="fa fa-google-plus img-circle"></i></a> <a
												href=""><i class="fa fa-pinterest img-circle"></i></a> <a
												href=""><i class="fa fa-instagram img-circle"></i></a>
										</div>
									</div>
								</div>
								<!-- End of col-sm-6 -->

								<div class="col-sm-6 col-xs-12">
									<div class="single_contant_left margin-top-60">
										<form action="#" id="formid">
											<!--<div class="col-lg-8 col-md-8 col-sm-10 col-lg-offset-2 col-md-offset-2 col-sm-offset-1">-->

											<div class="form-group">
												<label>name</label> <input type="text" class="form-control"
													name="name" required="">
											</div>

											<div class="form-group">
												<label>e-mail</label> <input type="email"
													class="form-control" name="email" required="">
											</div>

											<div class="form-group">
												<label>your message</label>
												<textarea class="form-control" name="message" rows="8"></textarea>
											</div>

											<div class="">
												<input type="submit" value="submit" class="btn btn-default">
											</div>
											<!--</div>-->
										</form>
									</div>
								</div>
							</div>
							<!-- End of messsage contant-->
						</div>
					</div>
				</div>
				<!-- End of col-sm-12 -->
			</div>
			<!-- End of row -->
		</div>
		<!-- End of Contaier -->
	</section>
	<!-- End of portfolio Section -->



	<!-- footer Section -->
	<footer id="footer" class="footer">
		<div class="container">
			<div class="main_footer">
				<div class="row">
					<div class="col-sm-12">
						<div class="copyright_text text-center">
							<p class=" wow fadeInRight" data-wow-duration="1s">
								Made with <i class="fa fa-heart"></i> by <a target="_blank"
									href="http://bootstrapthemes.co">Bootstrap Themes</a>2016. All
								Rights Reserved
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End of container -->
	</footer>
	<!-- End of footer -->



	<!-- START SCROLL TO TOP  -->

	<div class="scrollup">
		<a href="#"><i class="fa fa-chevron-up"></i></a>
	</div>

	<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
	<script src="assets/js/vendor/bootstrap.min.js"></script>

	<script src="assets/js/jquery.easing.1.3.js"></script>
	<script src="assets/js/masonry/masonry.min.js"></script>
	<script type="text/javascript">
		$('.mixcontent').masonry();
	</script>

	<script src="assets/js/jquery.sliderPro.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function($) {
			$('#example3').sliderPro({
				width : 960,
				height : 200,
				fade : true,
				arrows : false,
				buttons : true,
				fullScreen : false,
				shuffle : true,
				smallSize : 500,
				mediumSize : 1000,
				largeSize : 3000,
				thumbnailArrows : true,
				autoplay : false,
				thumbnailsContainerSize : 960

			});
		});
	</script>
	<script src="assets/js/plugins.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>
