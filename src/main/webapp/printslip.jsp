
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Print Slip</title>
    </head>
    <body>
        <a href="index.jsp">Back</a>
        <div style="text-align: center;">
        <%
        jakarta.servlet.http.HttpSession st=request.getSession();
        String a=(String)st.getAttribute("cid");
        String b=(String)st.getAttribute("p");
       
        out.println("<div style='width:400px;border-style:solid;border-width:1px;background-color:#FFCC99;'>"); 
   out.println("<tr><td><h2>Welcome to Online trip Booking </h2></td></tr>");
 out.println("</div>");   
out.println("<div style='width:400px;border-style:solid;border-width:1px;background-color:#99FFCC;'>"); 
   out.println("<tr><h3>Booking Slip</h3></tr>");
 out.println("</div>");
 out.println("</div>");
 
out.println("<div style='width:400px;height:220px;border-style:solid;border-width:1px;background-color:#FFFFFF;'>");          
 out.println("<table border='0' style='width:390px;'>");

  
 out.println("</tr>");
            
                       		
			 out.println("<tr><td align='center'><h5>Customer id:-</h5></td><td align='center'><lable style='color:red;'>"+a+"</lable></td></tr>");
			out.println("<tr><td align='center'><h5>Total person:-</h5></td><td align='center'><lable style='color:red;'>"+b+"</lable></td></tr>");
			//out.println("<tr><td align='center'>Total person</td><td align='center'>"+curdate()+"</td></tr>");
					
			 
			   
                out.println("</table>");
                out.println("<div style='width:400px;background-color:white;'>"); 
                  out.println("<table width=400>");
                  out.println("<tr></tr><tr height=30px></tr></tr><tr></tr><tr></tr><tr></tr><tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>");
		
                  out.println("<tr><td align=center>Signature of Customer</td><td>Service Center </td></tr>");
			
                   out.println("</table>");
   
   
 out.println("</div>");   
                out.println("</div>");
              
            
             
             
                         
           
 

                    %>
                    <script>
if (window.print) {
document.write('<form><input type=button name=print value="Print" onClick="window.print()"></form>');
}
                    </script>
        </div>
  
    </body>
</html>
