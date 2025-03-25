<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="com.kushagra.onlinetripplanner.DataBConnection" %>
<%@ page import="java.sql.ResultSet" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <title>Travelia a Travel Agency Category Flat Bootstrap Responsive Website Template | About :: w3layouts</title>
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
						<li><a href="Add_trip.jsp" data-hover="Add Trip Plan">Add Trip plan</a></li>
				         	<li><a href="viewbooking.jsp" data-hover="View">View Booking</a></li>
                        <li><a href="viewfeedback.jsp" data-hover="feedback">View Feedback</a></li>
	
                                                
					</ul>
				</div>
				<div class="top_right">
					<ul class="f-icons">
                                            <li><a href="logout" class=""><h4 style="color:red;" >Logout </h4></a></li>
						<li>|</li>
                                                <li><a href="" class=""> <h4 style="color:greenyellow;">Change Password</h4></a></li>
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
                            <%
           
          String id=request.getParameter("id");
          try {
              PreparedStatement preparedStatement = DataBConnection.getConnection().prepareStatement("select * from registration where email=?");
              preparedStatement.setString(1, id);
              ResultSet resultSet = preparedStatement.executeQuery();

              if (resultSet.next()) {
                  String h_id = resultSet.getString(1);

                  String name = resultSet.getString(2);
                  String lname = resultSet.getString(3);
                  String gender = resultSet.getString(4);
                  String phone = resultSet.getString(5);
                  String a = resultSet.getString(6);
                  String b = resultSet.getString(7);
                  String c = resultSet.getString(8);
                  String d = resultSet.getString(9);
                  out.println("<table width=600px height=270px >");
                  out.println("<tr width=400px style='background-color:#F6D6D2;'><td style='text-align=right;'>Booking Id:-</td><td width=80px></td><td>" + h_id + "</td></tr>");
                  out.println("<tr width=400px style='background-color:#CDF0F4;'><td style='text-align=right;'>Customer Name:-</td><td width=80px></td><td>" + name + "</td></tr>");
                  out.println("<tr width=400px style='background-color:#F8F5B1;'><td style='text-align=right;'>Customer Email:-</td><td width=80px></td><td>" + lname + "</td></tr>");
                  out.println("<tr width=400px style='background-color:#CDF0F4;'><td style='text-align=right;'>Address:-</td><td width=80px></td><td>" + gender + "</td></tr>");
                  out.println("<tr width=400px style='background-color:#D1EBAF;'><td style='text-align=right;'>Pin:-</td><td width=80px></td><td>" + phone + "</td></tr>");
                  out.println("<tr width=400px style='background-color:#B1DBAB;'><td style='text-align=right;'>City:-</td><td width=80px></td><td>" + a + "</td></tr>");
                  out.println("<tr width=400px style='background-color:#CDF0F4;'><td style='text-align=right;'>State:-</td><td width=80px></td><td>" + b + "</td></tr>");
                  out.println("<tr width=400px style='background-color:#CDF0F4;'><td style='text-align=right;'>Phone:-</td><td width=80px></td><td>" + c + "</td></tr>");
                  out.println("<tr width=400px style='background-color:#CDF0F4;'><td style='text-align=right;'>Registration Date:-</td><td width=80px></td><td>" + d + "</td></tr>");

                  out.println("</table><br></br>");
              }
          } catch (Exception e) {
              System.out.println(e.getMessage());
          }
			                   %>
    
                
                                           <div class="clearfix" style="border-style: solid"></div>
		</div></div>	
		 
</div>

   
		
</body>
</html>