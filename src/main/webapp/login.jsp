
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<title>Login</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="Travelia Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<link href="bootstrap.css" rel='stylesheet' type='text/css' />
		<!-- Custom Theme files -->
		<link href="style.css" rel='stylesheet' type='text/css' />
		<link rel="stylesheet" href="flexslider.css" type="text/css" media="screen" />
		<script src="js/jquery.min.js"> </script>
		<!--/script-->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
		</script>

	</head>
	<body>
	<!--start-home-->
	<div id="home" class="header">
		<div class="header-top">
			<div class="container">
				<div class="logo">
					<a href="index.jsp"><h1>Trip<span>Planner</span></h1></a>
				</div>
				<span class="menu"></span>
				<div class="top-menu">
					<ul class="cl-effect-16">
						<li><a class="" href="index.jsp" data-hover="HOME">Home</a></li>
						<li><a href="about.jsp" data-hover="About">About</a></li>
						<li><a href="gallery.jsp" data-hover="Gallery">Gallery</a></li>
						<li><a href="contact.jsp" data-hover="Contact">Contact</a></li>
						<li><a href="trip.jsp" data-hover="Trip Plan">Trip Plan</a></li>

					</ul>
				</div>
				<div class="top_right">
					<h6>Your first visit? Call for more info </h6>
					<p>+91-00000000</p>
				</div>
				<script>
					$( "span.menu" ).click(function() {
						$( ".top-menu" ).slideToggle( "slow", function() {
							// Animation complete.
						});
					});
				</script>

				<div class="clearfix"></div>
				<!--End-top-nav-script-->
			</div>
		</div>
		<div class="banner two">
			<div class="container">
				<h2 class="second">Login</h2>
			</div>
		</div>
	</div>
	<br><br><br><br>
			<div class="hotel-left">
				<div class="pay_form" style="text-align: center;">
					<h2 style="text-align: center; margin-top: 2px; margin-bottom: 4px;">Login Here</h2>
					<form action="login" method="post">
						<input style="text-align: center; margin-left:  558px ; padding-right: 0px; margin-top: 25px; margin-bottom: 2px;" class="logo" type="text" value="Username" onfocus="this.value = '';" onblur="if (this.value === '') {this.value = 'Username';}" required="" name="t1"><br></br>
						<input style="margin-top: 25px;margin-left:  -1141px; margin-bottom: 2px;" class="key" type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value === '') {this.value = 'Password';}" required="" name="t2"><br>
						<input style="margin-top: 25px" type="submit" value="Login">
					</form>
				</div>
				<a href="ForgotPassword.jsp" style="text-align: center; margin-left: 558px;">Forgot Password</a><br>
				<a href="registration.jsp" class="login-right" style="text-align: center; margin-left: 558px;">Register</a>
				<div class="clear"></div>
			</div>
			<div class="hotel-right">
                                 <%
                            String abc=request.getParameter("msg");
                            if(abc!=null) {
								out.println("<h2 style='color:blue;'>" + abc + "</h2>");
							}
                            %>
				<p></p>
			</div>
			<div class="clear"></div>
		   <div class="copy" style="margin-top: 315px;">
			   <p>&copy; 2023 All Rights Reserved </p>
		   </div>
</body>
</html>
