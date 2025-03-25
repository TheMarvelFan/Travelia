<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <title>| Gallery:</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Travelia Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
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
	<script src="js/jquery.chocolat.js"></script>
	<link rel="stylesheet" href="chocolat.css" type="text/css"/>
  <!-- Javascript calls -->
		<script type="text/javascript">
				$(function() {
					$('#portfolio a').Chocolat({overlayColor:'#000',leftImg:'images/leftw.gif',rightImg:'images/rightw.gif',closeImg:'images/closew.gif'});
				});
		</script>


    </head>
    <body>
      <div id="home" class="header">
		<div class="header-top">
			<div class="container">
				<div class="logo">
					<a href="index.jsp"><h1>Trip<span>Planner</span></h1></a>
				</div>
				<span class="menu"></span>
				<div class="top-menu">
				<ul class="cl-effect-16">
						<li><a href="index.jsp" data-hover="HOME">Home</a></li> 
						<li><a href="about.jsp" data-hover="About">About</a></li>
						<li><a class="active" href="gallery.jsp" data-hover="Gallery">Gallery</a></li>
						<li><a href="contact.jsp" data-hover="CONTACT">Contact</a></li>
                                                <li><a href="trip.jsp" data-hover="Trip Plan">Trip Plan</a></li>

					</ul>
				</div>
				<div class="top_right">
					<h6>Your first visit ? call for info </h6>
					<p>+91-</p>
					<ul class="f-icons">
                                            <li><a href="login.jsp" class=""><h4 >Login </h4></a></li>
						<li><a href="#" class="">| </a></li>
                                                <li><a href="registration.jsp" class=""> <h4>New Registration</h4></a></li>
					</ul>

			    </div>

			<!-- script-for-menu -->
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
		    <h2 class="second">Gallery</h2>
		 </div>
     </div>
</div>
<!--start-gallery-->
<div class="gallery" id="portfolio">
		<div class="container">
			<div class="gallery-bottom">
					<div class="col-md-4 gallery-left">
						<a href="images/g1.jpg">
							<img src="images/g1.jpg" alt="name" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/g2.jpg">
							<img src="images/g2.jpg" alt="name" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/g3.jpg">
							<img src="images/g3.jpg" alt="name" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/g4.jpg">
							<img src="images/g4.jpg" alt="name" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/g6.jpg">
							<img src="images/g6.jpg" alt="name" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/g2.jpg">
							<img src="images/g2.jpg" alt="name" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/g1.jpg">
							<img src="images/g2.jpg" alt="name" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/g2.jpg">
							<img src="images/g3.jpg" alt="name" />
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/g3.jpg">
							<img src="images/g1.jpg" alt="name" />
						</a>
					</div>
					<div class="clearfix"></div>
			</div>
		</div>
	</div>	
	<!--//portfolio-->
   <!--contact-->
		
		<div class="copy">
		    <p>&copy; 2023 All Rights Reserved </p>
		</div>
		<!--footer-->
			<!--start-smoth-scrolling-->
						<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


</body>
</html>