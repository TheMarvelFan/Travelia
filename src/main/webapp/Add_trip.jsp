<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Trip</title>
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
<%
    jakarta.servlet.http.HttpSession st=request.getSession();
    String user=(String)st.getAttribute("user1");
    String pass=(String)st.getAttribute("pass1");

    if(user==null||pass==null) {
        response.sendRedirect("login.jsp?msg=Please login first!");
    }
%>

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
                    <li><a href="DeleteTrip.jsp" data-hover="Delete / View">Delete / View</a></li>
                    <li><a href="viewbooking.jsp" data-hover="View Booking">View Booking</a></li>
                    <li><a href="viewfeedback.jsp" data-hover="View Feedback">View Feedback</a></li>
                </ul>
            </div>
            <div class="top_right">
                <ul class="f-icons">
                    <li><a href="logout" class=""><h4 style="color:red;" >Logout </h4></a></li>
                    <li>|</li>
                    <li><a href="changePass.jsp" class=""> <h4 style="color:greenyellow;">Change Password</h4></a></li>
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
            <h2 class="second">ADMIN PANEL </h2>
        </div>
    </div>
</div>
<!--start-about-->
<div class="about">

    <div style="margin-left: 500px; text-align: center;">
        <form method="post" action="addtrip" enctype="multipart/form-data">
            <fieldset>
                <legend><h1 style="margin-left: -448px ; color: orange;">Add Trip </h1></legend>
                <table style="margin-left: 126px;">
                    <tr height="30px"><select name="t1" style="margin-left: -386px;"><option value="Family_Travel">Family Travel</option><option value="Honeymoon_Package">Honeymoon Package</option><option value="Group_Travel">Group Travel</option></select></tr>
                    <tr height="30px"><td>Location<label style="color:red;">* </label> </td><td style="width: 20px" ></td><td><input type="text" name="t2" style="height: 20px"></td></tr>
                    <tr height="30px"><td>Trip Day<label style="color:red;">* </label></td><td style="width: 20px" ></td><td><input type="text" name="t3" style="height: 20px"></td></tr>
                    <tr height="30px"><td>Trip Price<label style="color:red;">* </label></td><td style="width: 20px" ></td><td><input type="number" name="t4" style="height: 20px"></td></tr>
                    <tr height="30px"><td>Description<label style="color:red;">* </label></td><td style="width: 20px" ></td><td><textarea name="t5"></textarea></td></tr>

                    <tr height="30px"><td>Photo <label style="color:red;">* </label></td><td style="width: 20px" ></td><td><input type="file" name="t6" style="height: 20px"></td></tr>

                    <tr height="30px"></tr><tr height="30px"><td><input type="submit" value="Add" style="margin-left: 57px; width:90px;height: 30px ;background-color:lightskyblue;"> </td><td style="width: 20px" ></td><td><input type="reset" value="Clear" style="width: 90px ;height: 30px;background-color: indianred;"></td></tr>

                    <tr height="50px">

                </table>
                <p style="color: green;">
                    <%
                        String abc=request.getParameter("msg");
                        if(abc!=null) {
                            out.println("<h4 style='color:green;'>" + abc + "</h4>");
                        }
                    %>
                </p>
            </fieldset>
        </form>
    </div>
</div>
<!--start-welcome-->

<!--//end-welcome-->
<!--start-services-->
<!-- service-type-grid -->
<!--//service-type-grid -->
<!--testimonials-->

<!--contact-->

<!--map-->

<div class="copy">
    <p>&copy; 2023 All Rights Reserved</p>
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