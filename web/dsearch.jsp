<%-- 
    Document   : search
    Created on : Aug 23, 2016, 4:50:27 PM
    Author     : SDPOTDAR
--%>

<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <!-- start home -->
    	<section id="home">
    		<div class="container">
    			<div class="row">
    				<div class="col-md-offset-2 col-md-8">
    					<h1 class="wow fadeIn" data-wow-offset="50" data-wow-delay="0.9s">We make website that are <span>awesome</span></h1>
    					<div class="element">
                            <div class="sub-element">Hello, This is a HTML Website.</div>
                            <div class="sub-element">Awesome Website is Designed and provided by Giri Designs.</div>
                            <div class="sub-element">If you need this website, Please contact us.</div>
                            
                        </div>
    					<!--<a data-scroll href="#about" class="btn btn-default wow fadeInUp" data-wow-offset="50" data-wow-delay="0.6s">GET STARTED</a> --!>
           <%
 out.print("<input type=text id=t1><br><br>");
%>             
          
     <input type='submit' value='           SEARCH             '  id= "b1">     
         <p id="x"> </p>
    
    
    
         <script src="jquery-3.1.0.min.js"></script>
    
    <script>
     
    $(document).ready(function(){
   
     $('#b1').click(function(){
         var y=$('#t1').val();
         $.post('searching.jsp',{id:y},function(data){
             $('#x').html(data);
         });
         
     });        
    
    });
        
    </script>

                                        
    				</div>
    			</div>
    		</div>
    	</section>
    	<!-- end home -->

    

    
         
      
    </body>
</html>
<%@include file="footer.jsp" %>