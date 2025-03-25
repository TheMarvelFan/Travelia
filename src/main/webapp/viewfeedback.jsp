<%@ page import="java.sql.Statement" %>
<%@ page import="com.kushagra.onlinetripplanner.DataBConnection" %>
<%@ page import="java.sql.ResultSet" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>View Feedback</title>
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

    if(user==null||pass==null)
        response.sendRedirect("login.jsp?msg=Please login first!!!!");
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
                    <li><a href="Add_trip.jsp" data-hover="Add Trip Plan">Add Trip Plan</a></li>
                    <li><a href="DeleteTrip.jsp" data-hover="Delete / View">Delete / View</a></li>
                    <li><a href="viewbooking.jsp" data-hover="View Booking">View Booking</a></li>
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
            <h2 class="second">ADMIN PANEL</h2>
        </div>
    </div>
</div>
<br>
<div style="text-align: center;">
    <h2 style="color: #484095;">View Feedback</h2>
    <%
        try {
            Statement statement = DataBConnection.getConnection().createStatement();
            ResultSet resultSet = statement.executeQuery("select id, sub, msg from feedback");
            out.println("<br><br><div style=\"text-align: center;\">");


            out.println("<table style='margin-left: 340px' width=900");

            out.println("<tr height=70 bgcolor=#68D3D4>");
            out.println("<td>Member_id</id><td>Subject</td><td>Message</td>");
            out.println("</tr>");
            while (resultSet.next()) {
                String id = resultSet.getString(1);
                String sub = resultSet.getString(2);
                String msg = resultSet.getString(3);

                out.println("<tr height=50px bgcolor=#D0FACE><td width=70px>" + id + "</td><td width=70px>" + sub + "</td><td width=300px>" + msg + "</td></td>");
                out.println("</tr>");

            }

            out.println("</table>");
            out.println("</div>");
        }catch (Exception e) {
            System.out.println(e.getMessage());
        }
    %>
</div>

<!--start-about-->


</body>
</html>