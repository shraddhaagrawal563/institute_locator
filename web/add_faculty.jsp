<%-- 
    Document   : add_faculty
    Created on : Aug 21, 2016, 7:07:21 PM
    Author     : SDPOTDAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="faculty_check.jsp">
        <h1>Add Faculty</h1>
        <%
            out.print("Name:        <input type=text name=t1><br>");
             out.print("Qualification:     <input type=text name=t2><br>");
             
             out.print("Year of experience:    <input type=text name=t3><br>");
             
                     
             
             out.print("Subject: <input type=text name=t4><br>");
            
             out.print("Contact: <input type=text name=t5><br>");
              out.print("Email id: <input type=text name=t6><br><br>");
            out.print("<input type=submit value='add'><br>");
            
        %>
        </form>
    </body>
</html>

    </body>
</html>
