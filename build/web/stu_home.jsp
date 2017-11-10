<%-- 
    Document   : stu_home
    Created on : Aug 24, 2016, 6:13:57 PM
    Author     : SDPOTDAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
 <div id="content">
                <div class="container background-white">
                    <div class="row margin-vert-30">
        <title>JSP Page</title>
    </head>
       <body>
      <%
 out.print("<input type=text id=t1><br><br>");
%>             
          
     <input type='submit' value="          SEARCH             "  id="b1">     
         <p id="x"> </p>
    
    
    
         <script src="jquery-3.1.0.min.js"></script>
    
    <script>
     
    $(document).ready(function(){
   
     $('#b1').click(function(){
         
        var y=$('#t1').val();
         $.post('s_searching.jsp',{id:y},function(data){
             
             $('#x').html(data);
         });
         
     });        
    
    });
    </script>    
 
     <a href="sadd_rating.jsp">Add Rating</a>
         <a href="sadd_review.jsp">Add Review</a>
        <a href="ssend_enquiry.jsp">send enquiry</a>
         <a href="schat.jsp">chat</a> 
</div>
                            <!-- End Intro / Why Us? -->
                            <div class="row">
                                <hr class="margin-top-20 margin-bottom-30">
                            </div>
                            <div class="row">
                                <div class="col-md-12 animate fadeInUp padding-top-10">
                                    <img src="assets/img/ipads.jpg" alt="filler image" style="margin: 0 auto; display: block;">
                                </div>
                            </div>
                            <div class="row">
                            
                            </div>
<%@include file="footer.jsp" %>
