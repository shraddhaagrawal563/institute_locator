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
        <form action="stu_insert.jsp">
        <h1>Student Registration</h1>
        <%
            out.print("Name:        <input type=text name=t1 placeholder='Enter name'><br>");
             out.print("Contact:     <input type=text name=t2 placeholder='Enter contact'><br>");
             out.print("Date of Birth :    <input type=text name=t3 placeholder='Enter date of birth'><br>");
              
             
                    
              out.print("Qualification <input type=text name=t4 placeholder='Enter qualification'><br>");
              out.print("Address <input type=text name=t5 placeholder='Enter address'><br>");
                      
             out.print("course interested <select name=t6>");
                     out.print("<option>C</option>");
                     out.print("<option>C++</option>");
                      out.print("<option>CORE JAVA</option>");
                       out.print("<option>ADVANCE JAVA</option>");
                        out.print("<option>DATA STRUCTURE</option>");
                       
                        
                      out.print("</select><br>");
             
            out.print("Email id:    <input type=text name=t7 placeholder='Enter     email address'><br>");
              
            out.print("<input type=submit value='Register'><br>");
            

        %>
        </form>
    </body>
</html>
