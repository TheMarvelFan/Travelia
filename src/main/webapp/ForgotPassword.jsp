<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title> Forgot Password </title>
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
                    <li><a href="trip.jsp" data-hover="Trip Plan">Plan Trip</a></li>

                </ul>
            </div>
            <div class="top_right">
                <h6>Your first visit? Call for more info </h6>
                <p>+91-00000000</p>
                <ul class="f-icons">
                    <li><a href="login.jsp" class="" style="color: #269abc;"><h4 >Login </h4></a></li>
                    <li style="color: #269abc">| </li>
                    <li><a href="registration.jsp" class="" style="color: #269abc;"> <h4>New Registration</h4></a></li>
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
            <h2 class="second"> Forgot Password </h2>
        </div>
    </div>
</div>
<br><br><br><br><br>
<div>
    <form action="forgotpass" method="post">
        <input style="width: 265px; height: 30px; font-size: 14pt; margin-left: 650px; text-align: center;" type="email" name="email" id="email" placeholder="Enter your registered email" required><br><br>
        <button style="width: 80px; height: 30px; font-size: 13pt; margin-left: 750px;"> Submit </button>
    </form>
</div>
<!--//contact-->
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