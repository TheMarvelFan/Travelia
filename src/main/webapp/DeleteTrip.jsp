<%@ page import="java.sql.Statement" %>
<%@ page import="com.kushagra.onlinetripplanner.DataBConnection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View / Delete Trips</title>
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
        response.sendRedirect("login.jsp?msg=Please login first!");
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
                    <li><a href="viewfeedback.jsp" data-hover="View Feedback">View Feedback</a></li>
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
            <h2 class="second">ADMIN PANEL </h2>
        </div>
    </div>
</div>
<!--start-about-->
<br><br><br>
<div style="text-align: center;">

    <div class="offers">
        <div class="container">
            <div style="overflow: scroll;">
                <%
                    try {
                        Statement statement = DataBConnection.getConnection().createStatement();
                        ResultSet resultSet = statement.executeQuery("select * from trip");
                        out.println("<table width=1200   bgcolor=#B9E1F5 border='1'>");
                        out.println("<tr height=10 bgcolor=#5DD0CF>");
                        out.println("<td align=center><p style=color:#F66755;>Trip Id</p></td><td align=center><p style=color:#F66755;>Category</p></td><td align=center><p style=color:#F66755;>Location</p></td><td align=center><p style=color:#F66755;>Trip Days</p></td><td align=center><p style=color:#F66755;>Price</p></td><td align=center><p style=color:#F66755;>Date</p></td><td align=center><p style=color:#F66755;>Action</p></td>");
                        out.println("</tr>");
                        while (resultSet.next()) {
                            String id = resultSet.getString(1);
                            String category = resultSet.getString(2);
                            String location = resultSet.getString(3);
                            int days = resultSet.getInt(4);
                            int price = resultSet.getInt(5);
                            String date = resultSet.getString(8);
                            out.println("<tr bgcolor=#DFF5E1 height=40px><td align=center>" + id + "</td><td align=center>" + category + "</td><td align=center>" + location + "</td><td align=center>" + days + "</td><td align=center>" + price + "<td align=center>" + date + "</td><td align=center><a href=deletetrip?id=" + id + ">Delete</a></td>");
                            out.println("</tr>");
                        }
                        out.println("</table>");
                    } catch (SQLException | ClassNotFoundException e) {
                        throw new RuntimeException(e);
                    }
                    String m=request.getParameter("msg");
                    if(m!=null) {
                        out.println("<p style='color:red'>" + m + "</p>");
                    }
                %>
            </div>
            <div class="clearfix" style="border-style: solid"></div>
        </div></div>

</div>
</body>
</html>
