
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login::</title>
<!-- for-mobile-apps -->
<!-- //for-mobile-apps -->
<link href='//fonts.googleapis.com/css1?family=Lato:400,100,100italic,300italic,300,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css1?family=Salsa' rel='stylesheet' type='text/css'>
<!-- js -->
<link href="bootstrap.css" rel='stylesheet' type='text/css' />
<!--Custom-Theme-files-->
	<link href="style.css" rel='stylesheet' type='text/css' />	

<script type="text/javascript" src="js1/jquery-2.1.4.min.js"></script>
<!-- js -->
<link href="css1/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- script for close -->
<script>
$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.vlcone').fadeOut('slow', function(c){
			$('.vlcone').remove();
		});
	});	  
});
</script>
<!-- //script for close -->

    </head>
    <body>
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
				
 </div>
 </div>
             </div>


	
       <div class="content">
		<h1>Login Form </h1>
		<div class="main vlcone">
		
			<div class="hotel-left">
				<div class="pay_form">
					<h2>Login Here</h2>
                                        <form action="login" method="post">
                                            <input class="logo" type="text" value="Username" onfocus="this.value = '';" onblur="if (this.value === '') {this.value = 'Username';}" required="" name="t1">
                                            <input class="key" type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value === '') {this.value = 'Password';}" required="" name="t2">
						<input type="submit" value="Login">
					</form>
				</div>
				<a href="ForgotPassword.jsp">Forgot Password</a>
				<a href="registration.jsp" class="login-right">Register</a>
				<div class="clear"></div>
			</div>
			<div class="hotel-right">
				<h3>ONLINE TRIP <span>PLANNER</span></h3>
                                 <%
                            String abc=request.getParameter("msg");
                            if(abc!=null) {
								out.println("<h2 style='color:blue;'>" + abc + "</h2>");
							}
                            %>
				<p></p>
			</div>
			<div class="clear"></div>
		</div>
		   <div class="copy">
			   <p>&copy; 2023 All Rights Reserved </p>
		   </div>
	</div>
</body>
</html>
