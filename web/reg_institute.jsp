<%-- 
    Document   : reg_institute
    Created on : Aug 20, 2016, 6:31:03 PM
    Author     : SDPOTDAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registration</title>
    </head>
    <body>
        <form action="reg_insert.jsp">
        <h1>Institute Registration</h1>
        <%
            out.print("Registration Number:        <input type=text name=t1 placeholder='Enter Details'><br>");
             out.print("Institute Name:     <input type=text name=t2 placeholder='Enter Details'><br>");
             
             out.print("Address:    <input type=text name=t3 placeholder='Enter Address'><br>");
             
                    
              out.print("Contact: <input type=text name=t4 placeholder='Enter Contact'><br>");
             out.print("Certified: <select name=t5 placeholder='Enter Details'>");
                     out.print("<option>Yes</option>");
                     out.print("<option>No</option>");
                      out.print("</select><br>");
                      
             out.print("Afflicated <select name=t6>");
                     out.print("<option>Yes</option>");
                     out.print("<option>No</option>");
                      out.print("</select><br>");
             out.print("Afflicated From: <input type=text name=t7><br>");
              out.print("No. Of Faculty: <input type=text name=t8><br><br>");
               out.print("courses offered: <input type=text name=t9><br><br>");
              
            out.print("<input type=submit value='Register'><br>");
            

        %>
        </form>
    </body>
</html>
