<%-- 
    Document   : login
    Created on : 25 Jul, 2016, 4:24:37 PM
    Author     : nilu
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
 <div id="content">
                <div class="container background-white">
                    <div class="row margin-vert-30">
       
    <form action="slogin_check.jsp">
    <body>
         <%
            out.print(" CONTACT NUMBER: <input type=text name=t1><br>");
             
            out.print("PASSWORD:      <input type=text name=t2><br>");
             
            out.print("<input type='submit' value='LOGIN'><br>");
             
            out.print("<input type='button' value='cancel'>");
      %>
      </form>
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

