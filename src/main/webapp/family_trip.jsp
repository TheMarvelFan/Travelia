<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.kushagra.onlinetripplanner.DataBConnection" %>
<%@ page import="java.sql.ResultSet" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
<title> |online trip planner</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Travelia Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="style.css" rel='stylesheet' type='text/css' />	
<link rel="stylesheet" href="flexslider.css" type="text/css" media="screen" />
<link rel="stylesheet" type="text/css" href="style3.css" />
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
                                                <li><a href="registration.jsp" class=""> <h4>New Registration</h4></a></li></ul>

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
		    <h2 class="second">New Trip </h2>
		 </div>
     </div>
</div>
<!--start-blog-->
		<div id="blog" class="blog-section">
		   <div class="container">
                       <%
						   try {
							   String cat = "Family_Travel";
							   PreparedStatement preparedStatement = DataBConnection.getConnection().prepareStatement("select location, trip_day, price, descr, photo from trip where t_cat= ?");
							   preparedStatement.setString(1, cat);
							   ResultSet resultSet = preparedStatement.executeQuery();
							   while (resultSet.next()) {
								   String loc = resultSet.getString(1);
								   String t_day = resultSet.getString(2);
								   String price = resultSet.getString(3);
								   String dec = resultSet.getString(4);
								   String photo = resultSet.getString(5);

								   out.println("<div class='blog'>");
								   out.println("<div class='col-md-4 blog-text'>");
								   out.println("<h5>" + loc + "</h5>");
								   out.println("<label>Trip Price-<label style='color:red;'>" + price + "</label></label><br>");
								   out.println("<label>Trip Day-<label style='color:green;'>" + t_day + "</label></label>");

								   out.println("<a href='booking.jsp'><h4 style='color:red;'>BOOKING NOW</h4></a>");
								   out.println("<p>" + dec + "</p>");
								   out.println("</div>");
								   out.println("<div class='col-md-8 welcome-img'>");
								   out.println("<a href='booking.jsp' class='mask'><img src='" + photo + "' alt='image' class='img-responsive zoom-img'></a>");
								   out.println("</div>");


								   out.println("<div class='clearfix'> </div>");
								   out.println("</div>");
								   out.println("<div style='width:900px;height:5px;'></div>");

							   }
						   } catch (Exception e) {
							   System.out.println(e.getMessage());
						   }
                    %>
      
			    			   <!--start-blog-pagenate-->
					<div class="blog-pagenat">
						<ul>
							<li><a class="frist" href="#">Prev</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#">6</a></li>
							<li><a class="last" href="#">Next</a></li>
						</ul>
					</div>
				<!--//End-blog-pagenate-->

		</div>
	</div>
	<!--//blog-->
   <!--contact-->
				<div class="copy">
		    <p>&copy; 2016 All Rights Reserved | Design by <a href=""></a> </p>
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
		

</body>
</html>