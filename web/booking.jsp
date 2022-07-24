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
                                                Statement st1 = con.createStatement();
                                                String sql = "SELECT * FROM now_running where movie_id="+id;
                                                String sql1 = "SELECT show_time_1,show_time_2,show_time_3 FROM movie_details where movie_id="+id;
                                                ResultSet rs = st.executeQuery(sql);
                                                ResultSet rs1 = st1.executeQuery(sql1);
                                                while (rs.next()) {
                                                    String mname = rs.getString("movie_name");
                                                    if(rs1.next()){
                                                    String show_time_1 = rs1.getString("show_time_1");
                                                    String show_time_2 = rs1.getString("show_time_2");
                                                    String show_time_3 = rs1.getString("show_time_3");
                            %>
                            
                            
                            <form method="post" action="bookInsert.jsp" class="signn__form">
                                <input type="hidden" name="mid" value="<%=id%>"> <!-- movie_id -->
                                <input type="hidden" name="uid" value="${uid}">  <!-- user_id -->
                                                        <div class="sign__group">
                                                                <span class="sign__text">Your Name</span><br>
								<input type="text" name="name" id="name" value="${name}" class="signn__input" disabled>
							</div>
                                                        <div class="sign__group">
                                                                <span class="sign__text">Selected movie</span><br>
								<input type="text" name="mname" id="mname" value="<%=mname%>" class="signn__input" disabled>
							</div>
                                                        <div class="sign__group">
                                                            <span class="sign__text">Select show time</span><br>
                                                                    <select name="stime" id="stime" class="signn__input" required>
                                                                        <option value="<%=show_time_1%>"><%=show_time_1%></option>
                                                                        <option value="<%=show_time_2%>"><%=show_time_2%></option>
                                                                        <option value="<%=show_time_3%>"><%=show_time_3%></option>
                                                                    </select>
							</div>
							<div class="sign__group">
                                                            <span class="sign__text">No of Seats required</span><br>
								<input type="number" name="seat" id="seat" onkeyup="getOrderTotal()" class="signn__input" placeholder="" required>
							</div>
                                                        <div class="sign__group">
                                                            <span class="sign__text">Total amount</span><br>
								<input type="text" name="Amount" id="amount" value="0" class="signn__input">
							</div>
                                                        <!--<div id="amount"></div>-->
							
							<button class="sign__btn" type="submit">Proceed to payment</button>
                                                        <a href="details.jsp?id=<%=id%>" class="sign__btn">
									<span>Cancel</span>
								</a>

						</form>
                            
        <%
            }
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
        
    <script>
                function getOrderTotal() {
                    var a = document.getElementById("seat").value;
                    if(a>20){
                            alert("One user can only book maximum of 10 tickets");
                            document.getElementById('amount').value=""; 
                        }
                    else{
                    total = a * 200;
                    document.getElementById('amount').value = total;
                    }
                }
    </script>
    
        
        
</body>

</html>