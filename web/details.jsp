<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
	<title>PVR Cinemas</title>

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
							<a href="home.jsp" class="header__logo">
								<img src="img/logo.svg" alt="">
							</a>
							<!-- end header logo -->

							<!-- header nav -->
							<ul class="header__nav">
                                                           <!-- dropdown -->
								<li class="header__nav-item">
<!--									<a class="dropdown-toggle header__nav-link" href="#" role="button" id="dropdownMenuHome" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Home</a>

									<ul class="dropdown-menu header__dropdown-menu" aria-labelledby="dropdownMenuHome">
										<li><a href="index.html">Home slideshow bg</a></li>
										<li><a href="index2.html">Home static bg</a></li>
									</ul>-->
								</li>
								<!-- end dropdown -->

								<!-- dropdown -->
								<li class="header__nav-item">
<!--									<a class="dropdown-toggle header__nav-link" href="#" role="button" id="dropdownMenuCatalog" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Catalog</a>

									<ul class="dropdown-menu header__dropdown-menu" aria-labelledby="dropdownMenuCatalog">
										<li><a href="catalog1.html">Catalog Grid</a></li>
										<li><a href="catalog2.html">Catalog List</a></li>
										<li><a href="details1.html">Details Movie</a></li>
										<li><a href="details2.html">Details TV Series</a></li>
									</ul>-->
								</li>
								<!-- end dropdown -->

								<li class="header__nav-item">
									<!--<a href="pricing.html" class="header__nav-link">Pricing Plan</a>-->
								</li><!--

-->								
								<!-- dropdown -->

								<!-- end dropdown -->
							</ul>
							<!-- end header nav -->

							<!-- header auth -->
							<div class="header__auth">
								<button class="header__search-btn" type="button">
									<i class="icon ion-ios-search"></i>
                                                                </button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                                </button>&nbsp;&nbsp;&nbsp;

                                                        <div class="header__auth">
								<a class="header__nav-link" href="index.jsp" role="button">Sign Out</a>

							</div>

								<a class="header__sign-in">
									<i class="icon ion-ios-log-in"></i>
									<span><%=session.getAttribute("name")%></span>
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

	<!-- details -->
	<section class="section details">
		<!-- details background -->
		<div class="details__bg" data-bg="img/home/home__bg.jpg"></div>
		<!-- end details background -->

		<!-- details content -->
		<div class="container">
			<div class="row">
                                             <%
                                            String id=request.getParameter("id");
                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
                                                Statement st = con.createStatement();
                                                String sql = "SELECT * FROM now_running where movie_id="+id;
                                                ResultSet rs = st.executeQuery(sql);
                                                while (rs.next()) {
                                                    String mname = rs.getString("movie_name");
//                                                  String desc = rs.getString("movie_desc");
                                                    String genre = rs.getString("genre");
                                                    String filename = rs.getString("file_name");
                                                
                                        %>
				<!-- title -->
				<div class="col-12">
					<h1 class="details__title"><%=mname%></h1>
				</div>
				<!-- end title -->

				<!-- content -->
				<div class="col-10">
					<div class="card card--details card--series">
						<div class="row">
							<!-- card cover -->
							<div class="col-12 col-sm-4 col-md-4 col-lg-3 col-xl-3">
								<div class="card__cover">
									<img src="<%=filename%>" alt="">
								</div>
							</div>
							<!-- end card cover -->

							<!-- card content -->
							<div class="col-12 col-sm-8 col-md-8 col-lg-9 col-xl-9">
								<div class="card__content">
									<div class="card__wrap">
										<span class="card__rate"><i class="icon ion-ios-star"></i>8.4</span>

										<ul class="card__list">
											<li>HD</li>
											<li>16+</li>
										</ul>
									</div>

									<ul class="card__meta">
										<li><span>Genre:</span> <a href="#">Action</a>
										<a href="#"><%=genre%></a></li>
										
                                                                                
									</ul>
                                                                        <div class="card__description card__description--details">
										A film – also called a movie, motion picture, moving picture, picture or photoplay – is a work of visual art that simulates experiences and otherwise communicates ideas, stories, perceptions, feelings, beauty, or atmosphere through the use of moving images. These images are generally accompanied by sound and, more rarely, other sensory stimulations.[1] The word "cinema", short for cinematography, is often used to refer to filmmaking and the film industry, and to the art form that is the result of it.
									</div>

									
								</div>
							</div>
							<!-- end card content -->
						</div>
					</div>
				</div>
				<!-- end content -->

				

			

				<div class="col-12">
					<div class="details__wrap">
						<!-- availables -->
						<div class="details__devices">
							<a class="header__sign-in">
									<i class="icon ion-ios-log-in"></i>
									<span>Book Now</span>
								</a>
                                                       </div>
						<!-- end availables -->
                                                
						
					</div>
				</div>
        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
			</div>
		</div>
		<!-- end details content -->
	</section>
	<!-- end details -->


	<!-- footer -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<!-- footer list -->
			
				<!-- end footer list -->

				<!-- footer list -->
				
				<!-- end footer list -->

				<!-- footer list -->
				
				<!-- end footer list -->

				<!-- footer list -->
				
				<!-- end footer list -->

				<!-- footer copyright -->
				<div class="col-12">
					
				</div>
				<!-- end footer copyright -->
			</div>
		</div>
	</footer>
	<!-- end footer -->

	<!-- Root element of PhotoSwipe. Must have class pswp. -->
	<div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">

		<!-- Background of PhotoSwipe. 
		It's a separate element, as animating opacity is faster than rgba(). -->
		<div class="pswp__bg"></div>

		<!-- Slides wrapper with overflow:hidden. -->
		<div class="pswp__scroll-wrap">

			<!-- Container that holds slides. PhotoSwipe keeps only 3 slides in DOM to save memory. -->
			<!-- don't modify these 3 pswp__item elements, data is added later on. -->
			<div class="pswp__container">
				<div class="pswp__item"></div>
				<div class="pswp__item"></div>
				<div class="pswp__item"></div>
			</div>

			<!-- Default (PhotoSwipeUI_Default) interface on top of sliding area. Can be changed. -->
			<div class="pswp__ui pswp__ui--hidden">

				<div class="pswp__top-bar">

					<!--  Controls are self-explanatory. Order can be changed. -->

					<div class="pswp__counter"></div>

					<button class="pswp__button pswp__button--close" title="Close (Esc)"></button>

					<button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>

					<!-- Preloader -->
					<div class="pswp__preloader">
						<div class="pswp__preloader__icn">
							<div class="pswp__preloader__cut">
								<div class="pswp__preloader__donut"></div>
							</div>
						</div>
					</div>
				</div>

				<button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button>

				<button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button>

				<div class="pswp__caption">
					<div class="pswp__caption__center"></div>
				</div>
			</div>
		</div>
	</div>

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