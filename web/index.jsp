<%--<%
    if(session.getAttribute("name")==null){
    response.sendRedirect("index.jsp");
    }
%>--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%--<%=session.getAttribute("name")%>--%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600%7CUbuntu:300,400,500,700" rel="stylesheet">

	<!-- CSS -->
	<link rel="stylesheet" href="css/bootstrap-reboot.min.css">
	<link rel="stylesheet" href="css/bootstrap-grid.min.css">
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
	<link rel="stylesheet" href="css/nouislider.min.css">
	<link rel="stylesheet" href="css/ionicons.min.css">
	<link rel="stylesheet" href="css/plyr.css">
	<link rel="stylesheet" href="css/photoswipe.css">
	<link rel="stylesheet" href="css/default-skin.css">
	<link rel="stylesheet" href="css/main.css">

	<!-- Favicons -->
	<link rel="icon" type="image/png" href="icon/favicon-32x32.png" sizes="32x32">
	<link rel="apple-touch-icon" href="icon/favicon-32x32.png">
	<link rel="apple-touch-icon" sizes="72x72" href="icon/apple-touch-icon-72x72.png">
	<link rel="apple-touch-icon" sizes="114x114" href="icon/apple-touch-icon-114x114.png">
	<link rel="apple-touch-icon" sizes="144x144" href="icon/apple-touch-icon-144x144.png">

	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="Dmitry Volkov">
	<title>Online Movie Ticket Booking</title>

</head>
<body class="body">
	
	<!-- header -->
	<header class="header">
		<div class="header__wrap">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="header__content">
							<!-- header logo -->
							<a href="index.html" class="header__logo">
								<img src="img/logo.svg" alt="">
							</a>
							<!-- end header logo -->

							<!-- header nav -->
							<ul class="header__nav">
								<!-- dropdown -->
								<li class="header__nav-item">
									<a class="dropdown-toggle header__nav-link" href="#" role="button" id="dropdownMenuHome" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Home</a>

									<ul class="dropdown-menu header__dropdown-menu" aria-labelledby="dropdownMenuHome">
										<li><a href="index.html">Home slideshow bg</a></li>
										<li><a href="index2.html">Home static bg</a></li>
									</ul>
								</li>
								<!-- end dropdown -->

								<!-- dropdown -->
								<li class="header__nav-item">
									<a class="dropdown-toggle header__nav-link" href="#" role="button" id="dropdownMenuCatalog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Catalog</a>

									<ul class="dropdown-menu header__dropdown-menu" aria-labelledby="dropdownMenuCatalog">
										<li><a href="catalog1.html">Catalog Grid</a></li>
										<li><a href="catalog2.html">Catalog List</a></li>
										<li><a href="details1.html">Details Movie</a></li>
										<li><a href="details2.html">Details TV Series</a></li>
									</ul>
								</li>
								<!-- end dropdown -->

								<li class="header__nav-item">
									<a href="pricing.html" class="header__nav-link">Pricing Plan</a>
								</li>

								<li class="header__nav-item">
									<a href="faq.html" class="header__nav-link">Help</a>
								</li>

								<!-- dropdown -->
<!--								<li class="dropdown header__nav-item">
									<a class="dropdown-toggle header__nav-link header__nav-link--more" href="#" role="button" id="dropdownMenuMore" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="icon ion-ios-more"></i></a>

									<ul class="dropdown-menu header__dropdown-menu" aria-labelledby="dropdownMenuMore">
										<li><a href="test.jsp">About</a></li>
										<li><a href="signin.jsp">Sign In</a></li>
										<li><a href="signup.jsp">Sign Up</a></li>
										<li><a href="404.html">404 Page</a></li>
									</ul>
								</li>-->
								<!-- end dropdown -->
							</ul>
							<!-- end header nav -->

							<!-- header auth -->
							<div class="header__auth">
								<button class="header__search-btn" type="button">
									<i class="icon ion-ios-search"></i>
								</button>

								<a href="signin.jsp" class="header__sign-in">
									<i class="icon ion-ios-log-in"></i>
									<span>sign in</span>
								</a>
							</div>
							<!-- end header auth -->

							<!-- header menu btn -->
							<button class="header__btn" type="button">
								<span></span>
								<span></span>
								<span></span>
							</button>
							<!-- end header menu btn -->
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- header search -->
		<form action="#" class="header__search">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="header__search-content">
							<input type="text" placeholder="Search for a movie, TV Series that you are looking for">

							<button type="button">search</button>
						</div>
					</div>
				</div>
			</div>
		</form>
		<!-- end header search -->
	</header>
	<!-- end header -->

	<!-- home -->
        <form method="post" action="signin">
	<section class="home">
		<!-- home bg -->
		<div class="owl-carousel home__bg">
			<div class="item home__cover" data-bg="img/home/home__bg.jpg"></div>
			<div class="item home__cover" data-bg="img/home/home__bg2.jpg"></div>
			<div class="item home__cover" data-bg="img/home/home__bg3.jpg"></div>
			<div class="item home__cover" data-bg="img/home/home__bg4.jpg"></div>
		</div>
		<!-- end home bg -->

		<div class="container">
			<div class="row">
				<div class="col-12">
					<h1 class="home__title"><b>NEW MOVIES</b> OF THIS SEASON</h1>

					<button class="home__nav home__nav--prev" type="button">
						<i class="icon ion-ios-arrow-round-back"></i>
					</button>
					<button class="home__nav home__nav--next" type="button">
						<i class="icon ion-ios-arrow-round-forward"></i>
					</button>
				</div>
				<div class="col-12">
					<div class="">
                                        <%
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
                                                Statement st = con.createStatement();
                                                String sql = "SELECT * FROM now_running";
                                                ResultSet rs = st.executeQuery(sql);
                                                while (rs.next()) {
                                                    String mname = rs.getString("movie_name");
//                                                  String lastname = rs.getString("movie_desc");
                                                    String genre = rs.getString("genre");
                                                    String filename = rs.getString("file_name");
                                        %>
						<div class="item">
							<!-- card -->
							<div class="card card--big">
								<div class="card__cover">
									<!--<img src="img/covers/cover.jpg" alt="">-->
                                                                        <img src="<%=filename%>" width="150" height="360"/>
			
								</div>
								<div class="card__content">
									<h3 class="card__title"><a href="#"><%=mname%></a></h3>
									<span class="card__category">
										<a href="#"><%=genre%></a>
									</span>
									<span class="card__rate"><i class="icon ion-ios-star"></i>8.4</span>
								</div>
							</div>
							<!-- end card -->
						</div>
                                                                        
        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
					</div>
				</div>
			</div>
		</div>
	</section>
        </form>
	<!-- end home -->

	<!-- footer -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<!-- footer list -->
				<div class="col-12 col-md-3">
<!--					<h6 class="footer__title">Download Our App</h6>
					<ul class="footer__app">
						<li><a href="#"><img src="img/Download_on_the_App_Store_Badge.svg" alt=""></a></li>
						<li><a href="#"><img src="img/google-play-badge.png" alt=""></a></li>
					</ul>-->
				</div>
				<!-- end footer list -->

				<!-- footer list -->
<!--				<div class="col-6 col-sm-4 col-md-3">
					<h6 class="footer__title">Resources</h6>
					<ul class="footer__list">
						<li><a href="#">About Us</a></li>
						<li><a href="#">Pricing Plan</a></li>
						<li><a href="#">Help</a></li>
					</ul>
				</div>-->
				<!-- end footer list -->

				<!-- footer list -->
<!--				<div class="col-6 col-sm-4 col-md-3">
					<h6 class="footer__title">Legal</h6>
					<ul class="footer__list">
						<li><a href="#">Terms of Use</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Security</a></li>
					</ul>
				</div>-->
				<!-- end footer list -->

				<!-- footer list -->
<!--				<div class="col-12 col-sm-4 col-md-3">
					<h6 class="footer__title">Contact</h6>
					<ul class="footer__list">
						<li><a href="#">+91 69696969</a></li>
						<li><a href="#">https://www.yedu.tech/</a></li>
					</ul>
					<ul class="footer__social">
						<li class="facebook"><a href="#"><i class="icon ion-logo-facebook"></i></a></li>
						<li class="instagram"><a href="#"><i class="icon ion-logo-instagram"></i></a></li>
						<li class="twitter"><a href="#"><i class="icon ion-logo-twitter"></i></a></li>
						<li class="vk"><a href="#"><i class="icon ion-logo-vk"></i></a></li>
					</ul>
				</div>-->
				<!-- end footer list -->

				<!-- footer copyright -->
				<div class="col-12">
					<div class="footer__copyright">
						<small><a target="_blank" href="https://www.yedu.tech/">Yedu K T Y</a></small>

						<ul>
							<li><a href="#">Terms of Use</a></li>
							<li><a href="#">Privacy Policy</a></li>
						</ul>
					</div>
				</div>
				<!-- end footer copyright -->
			</div>
		</div>
	</footer>
	<!-- end footer -->

	<!-- JS -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.mousewheel.min.js"></script>
	<script src="js/jquery.mCustomScrollbar.min.js"></script>
	<script src="js/wNumb.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/plyr.min.js"></script>
	<script src="js/jquery.morelines.min.js"></script>
	<script src="js/photoswipe.min.js"></script>
	<script src="js/photoswipe-ui-default.min.js"></script>
	<script src="js/main.js"></script>
</body>

</html>