<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <title>Travelia a Travel Agency Category Flat Bootstrap Responsive Website Template | Contact :: w3layouts</title>
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

    </head>
    <body>
       <!--start-home-->
	<div id="home" class="header">
		<div class="header-top">
			<div class="container">
				<div class="logo">
					<a href="index.html"><h1>Trip<span>Planner</span></h1></a>
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
		    <h2 class="second">Booking Now </h2>
		 </div>
     </div>
</div>
       <div style="text-align: center;">
            <marquee><h4 style="color: red;">(Note-Please use your registration id for booking!)</h4></marquee>
  <div style="width:1000px;height: 300px;background-color: white;">
        <form method="get" action="booking" name="frm" onsubmit="return validate1();">
       <fieldset width="100px" height=200px">
           
                    <h2 style="color: blue;">Booking </h2>
                <table style="width:600px;height:80px; background-color: white;">
                    <tr height="30px"><td style="text-align: right">Registration Id<label style="color:red;">* </label></td><td width="20px"></td><td><input type="text" name="t1" style="height: 20px"></td></tr>
                    <tr height="30px"><td style="text-align: right">No of person<label style="color:red;">* </label> </td><td width="20px"></td><td><input type="text" name="t2" style="height: 20px"></td></tr>
					<tr height="30px"><td style="text-align: right">No of rooms<label style="color:red;">* </label> </td><td width="20px"></td><td><input type="number" name="t3" style="height: 20px"></td></tr>
					<tr height="30px"><td style="text-align: right">Location <label style="color:red;">* </label> </td><td width="20px"></td><td><input type="text" name="t4" style="height: 20px"></td></tr>
					<tr height="30px"><td style="text-align: right">Hotel Name<label style="color:red;">* </label> </td><td width="20px"></td><td><input type="text" name="t5" style="height: 20px"></td></tr>
          </table>
           <tr height="30px"></tr><tr height="30px"><td><input type="submit" value="Booking Now" style="width:120px;height: 25px;"> </td><td width="20px"></td></tr>
		   </br>
           <a href="registration.jsp"><p style="color: green;">New Registration</p></a>
                 <% 
                            String m=request.getParameter("msg");
                            if(m!=null)
                                out.println("<p style='color:red';>"+m+"</p>");
                            %>  
            </fieldset>
            </form>
        </div>    
    
    </div>
<!--/contact-->
	
	<!--map-->
		<!--//map-->
	<!--footer-->
		<div class="copy">
		    <p>&copy;2023 All Rights Reserved </p>
		</div>
		<!--//footer-->
			<!--start-smooth-scrolling-->
						<script type="text/javascript">
									$(document).ready(function() {
										$().UItoTop({ easingType: 'easeOutQuart' });
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


</body>
</html>