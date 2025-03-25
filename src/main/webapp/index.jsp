<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>JSP - Hello World</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1><%= "Hello World!" %>--%>
<%--</h1>--%>
<%--<br/>--%>
<%--<a href="hello-servlet">Hello Servlet</a>--%>
<%--</body>--%>
<%--</html>--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Travelia Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="bootstrap.css" rel='stylesheet' type='text/css' />
    <!--Custom-Theme-files-->
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
                    <li><a href="feedback.jsp" data-hover="Feedback">Feedback</a></li>


                </ul>
            </div>
            <div class="top_right">
                <h6>Your first visit ? call for info </h6>
                <p>+91-</p>
                <ul class="f-icons">
                    <li><a href="login.jsp" class=""><h4 >Login</h4></a></li>
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
    <div class="banner">
        <div class="container">
            <div  class="callbacks_container">
                <ul class="rslides" id="slider4">
                    <li>
                        <div class="banner-info">
                            <h3>Pack your Suit</h3>
                            <h4>Start your destiny here...</h4>
                        </div>
                    </li>
                    <li>
                        <div class="banner-info">
                            <h3>Online Trip Planner</h3>

                        </div>
                    </li>
                    <li>
                        <div class="banner-info">
                            <h3>Welcome</h3>

                        </div>
                    </li>
                </ul>
            </div>
            <!--banner-->
            <script src="js/responsiveslides.min.js"></script>
            <script>
                // You can also use "$(window).load(function() {"
                $(function () {
                    // Slideshow 4
                    $("#slider4").responsiveSlides({
                        auto: true,
                        pager:true,
                        nav:false,
                        speed: 500,
                        namespace: "callbacks",
                        before: function () {
                            $('.events').append("<li>before event fired.</li>");
                        },
                        after: function () {
                            $('.events').append("<li>after event fired.</li>");
                        }
                    });

                });
            </script>
        </div>
    </div>
</div>
<!--top-places-->
<div class="top-places">
    <div class="container">
        <h3 class="tittle">Top Places</h3>
        <div class="tip-main">
            <div class="col-md-4 top-grid">
                <a href="family_trip.jsp"> <img src="images/top-p.jpg" alt="image"/></a>
                <a href="family_trip.jsp"><h4>Family Travel</h4></a>
            </div>
            <div class="col-md-4 top-grid">
                <a href="honeymoon_trip.jsp"> <img src="images/top-p1.jpg" alt="image"/></a>
                <a href="honeymoon_trip.jsp"><h4>Honeymoon Package</h4></a>
            </div>
            <div class="col-md-4 top-grid">
                <a href="group_trip.jsp"><img src="images/top-p2.jpg" alt="image"/></a>
                <a href="group_trip.jsp"><h4>Group Travel</h4></a>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!--start-welcome-->
<div class="welcome">
    <div class="video-top">
        <div class="video">
            <iframe src="https://player.vimeo.com/video/59156427"></iframe>
        </div>
        <div class="video-text">
            <h2>Welcome to Our Travelia</h2>
            <p>Proactively envisioned multimedia based expertise and cross-media growth strategies. Seamlessly visualize quality intellectual capital without superior collaboration and idea-sharing. Holistically pontificate installed base portals after maintainable products.</p>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!--//end-welcome-->
<!--start-services-->
<!-- service-type-grid -->
<div class="service-type-grid">
    <div class="container">
        <h3 class="tittle">Our Services</h3>
        <section class="slider">
            <div class="flexslider">
                <ul class="slides">
                    <li>
                        <div class="service-type-grd-info">

                            <div class="col-md-6 service-type-main">
                                <div class="service-type-grd-left">
                                    <img src="images/8.jpg" alt=" " class="img-responsive" />
                                    <h5>Best Food</h5>
                                </div>
                                <div class="service-type-grd-left">
                                    <img src="images/6.jpg" alt=" " class="img-responsive" />
                                    <h5>Best Beach</h5>
                                </div>
                                <div class="service-type-grd-left">
                                    <img src="images/9.jpg" alt=" " class="img-responsive" />
                                    <h5>Best Rooms</h5>
                                </div>
                            </div>
                            <div class="col-d-6 service-type-grd-right">
                                <h3>Enjoy your Trip</h3>
                                <h4>veritatis et quasi beatae vitae </h4>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                                    accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                                    quae ab illo inventore veritatis et quasi architecto beatae vitae
                                    dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
                                    aspernatur aut odit aut fugit, sed quia consequuntur magni dolores
                                    eos qui ratione voluptatem sequi nesciunt.</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </li>
                    <li>
                        <div class="service-type-grd-info">

                            <div class="col-md-6 service-type-main">
                                <div class="service-type-grd-left">
                                    <img src="images/6.jpg" alt=" " class="img-responsive" />
                                    <h5>Best Beach</h5>
                                </div>
                                <div class="service-type-grd-left">
                                    <img src="images/9.jpg" alt=" " class="img-responsive" />
                                    <h5>Best Rooms</h5>
                                </div>
                                <div class="service-type-grd-left">
                                    <img src="images/8.jpg" alt=" " class="img-responsive" />
                                    <h5>Best Food</h5>
                                </div>
                            </div>
                            <div class="col-d-6 service-type-grd-right">
                                <h3>Enjoy your Trip</h3>
                                <h4>veritatis et quasi beatae vitae </h4>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                                    accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                                    quae ab illo inventore veritatis et quasi architecto beatae vitae
                                    dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
                                    aspernatur aut odit aut fugit, sed quia consequuntur magni dolores
                                    eos qui ratione voluptatem sequi nesciunt.</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </li>
                    <li>
                        <div class="service-type-grd-info">

                            <div class="col-md-6 service-type-main">
                                <div class="service-type-grd-left">
                                    <img src="images/9.jpg" alt=" " class="img-responsive" />
                                    <h5>Best Rooms</h5>
                                </div>
                                <div class="service-type-grd-left">
                                    <img src="images/6.jpg" alt=" " class="img-responsive" />
                                    <h5>Best Beach</h5>
                                </div>
                                <div class="service-type-grd-left">
                                    <img src="images/8.jpg" alt=" " class="img-responsive" />
                                    <h5>Best Food</h5>
                                </div>
                            </div>
                            <div class="col-d-6 service-type-grd-right">
                                <h3>Enjoy your Trip</h3>
                                <h4>veritatis et quasi beatae vitae </h4>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem
                                    accusantium doloremque laudantium, totam rem aperiam, eaque ipsa
                                    quae ab illo inventore veritatis et quasi architecto beatae vitae
                                    dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit
                                    aspernatur aut odit aut fugit, sed quia consequuntur magni dolores
                                    eos qui ratione voluptatem sequi nesciunt.</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </li>
                </ul>
            </div>
        </section>
        <!--FlexSlider-->
        <script defer src="js/jquery.flexslider.js"></script>
        <script type="text/javascript">
            $(function(){
                SyntaxHighlighter.all();
            });
            $(window).load(function(){
                $('.flexslider').flexslider({
                    animation: "slide",
                    start: function(slider){
                        $('body').removeClass('loading');
                    }
                });
            });
        </script>
        <!--End-slider-script-->
    </div>
</div>
<!-- //service-type-grid -->
<!--start-blog-->

<!--//blog-->
<!--/destinations-->
<!--//testimonials-->
<!--contact-->


<!--map-->
<!--/footer-->
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