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
<script type="text/javascript">
    function abc()
    {
    if(document.frm.t1.value==="")
        {
             alert("Please Enter Full Name");
             return false;
        }
        if(document.frm.t2.value==="")
            {
             alert("Please enter email");
             return false;
             
            }
            if(document.frm.t3.value==="")
                {
              alert("Please enter address!");
              return false;
                }
                if(document.frm.t4.value==="")
                {
              alert("Please Enter Pin!");
              return false;
                }
                if(document.frm.t7.value==="")
                {
              alert("Please fill Phone Number");
              return false;
                }
          
              else
                  {
                     return true;
                  }
    }
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
		    <h2 class="second">Customer Registration</h2>
		 </div>
     </div>
</div>
       <div style="text-align: center;">
  <div style="width:1000px;height: 500px;background-color: white;">
        <form method="get" action="registration" name="frm" onsubmit="return abc();">
       <fieldset width="100px" height=200px">
           
                <table style="width:600px;height:300px; background-color: white;"><br>
                    <h2 style="color: blue;">Customer Registration </h2>
                   
                    <tr height="30px"><td align="right">Full Name<label style="color:red;">* </label></td><td width="20px"></td><td><input type="text" name="t1" style="height: 30px"></td></tr>
                    <tr height="30px"><td align="right">Email_id<label style="color:red;">* </label> </td><td width="20px"></td><td><input type="email" name="t2" style="height: 30px"></td></tr>
                    
                    <tr height="30px"><td align="right">Address<label style="color:red;">* </label></td><td width="20px"></td><td><textarea name="t3" style="height: 70px;width: 220px;"></textarea></td></tr>
                    <tr height="30px"><td align="right">Pin No<label style="color:red;">* </label> </td><td width="20px"></td><td><input type="number" name="t4" style="height: 30px"></td></tr>

                    <tr height="30px"><td align="right">City<label style="color:red;">* </label> </td><td width="20px"></td><td><input type="text" name="t5" style="height: 30px"></td></tr>
                    <tr height="30px"><td align="right">State<label style="color:red;">* </label> </td><td width="20px"></td><td><input type="text" name="t6" style="height: 30px"></td></tr>
                    <tr height="30px"><td align="right">Phone No<label style="color:red;">* </label> </td><td width="20px"></td><td><input type="number" name="t7" style="height: 30px"></td></tr>
                    
                      
                      
                    
                    
          </table>
           <tr height="30px"></tr><tr height="30px"><td><input type="submit" value="Submit" style="width:90px;height: 25px;"> </td><td width="20px"></td></tr>
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
		    <p>&copy; 2023 All Rights Reserved </p>
		</div>
		<!--//footer-->
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