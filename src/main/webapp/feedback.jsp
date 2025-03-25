<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> | Feedback </title>
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
		    <h2 class="second">Send Feedback </h2>
		 </div>
     </div>
</div>
<!--start-about-->
 <div style="text-align: center;">
             <form method="get" action="feedback">
            <fieldset width="100px" height=200px">
                <legend><h1><p style="color:brown; margin-top: 4px;">Feedback</p></h1></legend>
                <table>
                    <br></br>
                    <tr height="30px"><td>User Id<label style="color:red; text-align: center;">*</label> </td><td width="20px"></td><td><input type="text" name="t1" style="height: 20px"></td></tr>
                    
                    <tr height="30px"><td>Subject </td><td width="20px"></td><td><input type="text" name="t2" style="height: 20px; text-align: center;"></td></tr>
                    <tr height="30px"><td> Message </td><td width="20px"></td><td><textarea name="t3" style="width:300px;height: 70px; text-align: center;"> </textarea></td></tr>
                   <tr height="30px"></tr><tr height="30px"><td><input type="submit" value="Send" style="width:90px;height: 30px ;background-color:lightskyblue; text-align: center;"> </td><td width="20px"></td><td><input type="reset" value="Clear" style="width: 90px ;height: 30px;background-color: indianred;"></td></tr>
                    <tr height="50px"><td>
                           
                </table>
                 <%
                            String abc=request.getParameter("msg");
                            if(abc!=null) {
                            	out.println("<h4 style='color:green;'>"+abc+"</h4>");
							}
                            %>
            </fieldset>
            </form>
        </div>
   
</body>
</html>