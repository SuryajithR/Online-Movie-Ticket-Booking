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
	<title>PVR Cinemas</title>

</head>
<body class="body">
    <input type="hidden" id="status" value="<%= request.getAttribute("status") %>">
	<div class="sign section--bg" data-bg="img/section/section.jpg">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="sign__content">
						<!-- registration form -->
                                                <form method="post" action="register" class="sign__form"
							id="register-form">
							<a href="index.html" class="sign__logo">
								<img src="img/logo.svg" alt="">
							</a>

							<div class="sign__group">
								<input type="text" name="name" id="name" class="sign__input" placeholder="Name" required>
							</div>

							<div class="sign__group">
								<input type="text" name="email" id="email" class="sign__input" placeholder="Email" required>
							</div>
                                                        
                                                        <div class="sign__group">
								<input type="text" name="contact" id="contact" class="sign__input" placeholder="Mobile" required>
							</div>

							<div class="sign__group">
								<input type="password" name="pass" id="pass" class="sign__input" placeholder="Password" required>
							</div>

							<div class="sign__group sign__group--checkbox">
								<input id="remember" name="remember" type="checkbox" checked="checked">
								<label for="remember">I agree to the <a href="#">Privacy Policy</a></label>
							</div>
							
							<button class="sign__btn" type="submit">Sign up</button>

							<span class="sign__text">Already have an account? <a href="signin.jsp">Sign in!</a></span>
						</form>
						<!-- registration form -->
					</div>
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
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
        
<script type="text/javascript">
    var status = document.getElementById("status").value;
    if(status === "true") {
        swal("Success", "Account created successfully", "success");
    }
</script>
</body>

</html>