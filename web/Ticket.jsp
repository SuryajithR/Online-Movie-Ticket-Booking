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
        <style>     
#invoice-POS{
  box-shadow: 0 0 1in -0.25in rgba(0, 0, 0, 0.5);
  padding:2mm;
  margin: 0 auto;
  width: 62mm;
  background: #FFF;
} 
  
::selection {background: #f31544; color: #FFF;}
::moz-selection {background: #f31544; color: #FFF;}
h1{
  font-size: 1.5em;
  color: #222;
}
h2{font-size: .9em;}
h3{
  font-size: 1.2em;
  font-weight: 300;
  line-height: 2em;
}
p{
  font-size: .7em;
  color: #666;
  line-height: 1.2em;
}
 
#top, #mid,#bot{ /* Targets all id with 'col-' */
  border-bottom: 1px solid #EEE;
}

#top{min-height: 100px;}
#mid{min-height: 80px;} 
#bot{ min-height: 50px;}

#top .logo{
	height: 60px;
	width: 60px;
	background: url(http://michaeltruong.ca/images/logo1.png) no-repeat;
	background-size: 60px 60px;
}
.clientlogo{
  float: left;
	height: 60px;
	width: 60px;
	background: url(http://michaeltruong.ca/images/client.jpg) no-repeat;
	background-size: 60px 60px;
  border-radius: 50px;
}
.info{
  display: block;
  margin-left: 0;
}
.title{
  float: right;
}
.title p{text-align: right;} 
table{
  width: 100%;
  border-collapse: collapse;
}
td{

}
.tabletitle{
  padding: 5px;
  font-size: .5em;
  background: #EEE;
}
.service{border-bottom: 1px solid #EEE;}
.item{width: 24mm;}
.itemtext{font-size: .5em;}

#legalcopy{
  margin-top: 5mm;
}

  
 
</style>

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
		<form action="searchMovie.jsp" method="post" class="header__search">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="header__search-content">
							<input type="text" placeholder="Search for a movie, TV Series that you are looking for">

							<button type="submit">search</button>
						</div>
					</div>
				</div>
			</div>
		</form>
		<!-- end header search -->
	</header>
	<!-- end header -->

        
        

        <br><br><br><br><br><br>
<div class="col-16 col-md-6 col-lg-12">
<form class="signn__form">
    
    <div class="container">
  <div class="row">
    <div class="col">
        <%
        String id=request.getParameter("id");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie?useSSL=false","root","root");
            Statement st = con.createStatement();
            String sql = "SELECT * FROM booking where id="+id;
            ResultSet rs = st.executeQuery(sql);

            while (rs.next()) {
                String mid = rs.getString("mid");
                String moviename = rs.getString("mname");
                String stime = rs.getString("stime");
                String seatno = rs.getString("seatno");
                String amount = rs.getString("amount");
                double am=Double.parseDouble(amount)+15.84;
                
        %>
        <h2 class="sign__text">IMPORTANT INSTRUCTIONS</h2>
        <span class="sign__text">This transaction can be cancelled up to 4 hour(s) before the show as per cinema cancellation policy.</span><br>
        <span class="sign__text">The Credit Card and Credit Card Holder must be present at the ticket counter while collecting the ticket(s).GST collected is paid to the department.</span><br>
        <span class="sign__text">999799 - Other Services n.e.c. PAN Based GSTN. 27AABCB3428P1ZF.</span><br>
        <span class="sign__text">For Further Assistance:</span><br>
        <span class="sign__text"><a href="#">https://www.pvrcinemas.co/</a></span><br><br>
        <h2 class="sign__text">ORDER SUMMARY</h2>
        <span class="sign__text">Ticket amount: ₹ <%= amount %></span><br>
        <span class="sign__text">Quantity: <%= seatno %></span><br>
        <span class="sign__text">Integrated GST (IGST) @ 18% : ₹ 15.84</span><br>
        <span class="sign__text">Amount paid: ₹ <%= am %></span><br>
    </div>

    <div class="col">
        <h2 class="sign__textt1">Your booking is confirmed!</h2>
        <div id="invoice-POS">
    
                <center id="top">
                  <div class="logo"></div>
                  <div class="info"> 
                    <h2>PVR Cinemas</h2>
                  </div><!--End Info-->
                </center><!--End InvoiceTop-->

                <div id="mid">
                  <div class="info" align="center">
                    <h2>Movie Ticket</h2>
                    <img src="img/qrcode.png" alt="qr" width="40" height="40">
                  </div>
                </div><!--End Invoice Mid-->
                                            <div id="midd">
                                                <div class="info">
                                                  <h6>Ticket number : PVRC<%= id %></h6>

                                                   </div>

                                                    <div id="bot">

                                                    <div id="table">
                                                            <table>
                                                                    <tr class="tabletitle">
                                                                            <td class="item"><h2>Movie name</h2></td>
                                                                            <td class="item"><h2>Show time</h2></td>
                                                                            <td class="Hours"><h2>No.of seats</h2></td>
                                                                    </tr>

                                                                    <tr class="service">
                                                                            <td class="tableitem"><p class="itemtext"><%= moviename %></p></td>
                                                                            <td class="tableitem"><p class="itemtext"><%= stime %></p></td>
                                                                            <td class="tableitem"><p class="itemtext"><%= seatno %></p></td>
                                                                    </tr>

                                                                    <tr class="tabletitle">
                                                                            <td></td>
                                                                            <td class="Rate"><h2></h2></td>
                                                                            <td class="item "><h2>Screen 1</h2></td>
                                                                    </tr>

                                                            </table>
                                                    </div><!--End Table-->

                                                    <div id="legalcopy">
                                                            <p class="legal" align="center"><strong>Thank you for your Support!</strong> Please visit again 🙂 </p>
                                                    </div>

                                            </div><!--End InvoiceBot-->
              </div><!--End Invoice-->
        </div>
    </div>
  </div>
    </div>
        <div class="sign__textt2">
        <button class="form__btn" type="submit">Download</button>
        </div>
        <div class="sign__textt3">
            <a href="details.jsp?id=<%=mid%>" class="sign__text"><span><i class="icon ion-md-arrow-round-back">&nbsp;</i>Back to details</span></a>
        </div>
        <%
                }
            con.close();
            } catch (Exception e) {
                out.println(e);
            }
        %>
</form>
</div>

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
