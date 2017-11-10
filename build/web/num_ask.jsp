<%-- 
    Document   : new
    Created on : Aug 22, 2016, 12:09:32 AM
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
        <form action="pass_snd.jsp">

        <%
            out.print("please insert a mobile number so that your password can be sent");
  out.print("mobile <input type=text name=t1>");

  out.print("<input type='submit' value='ok'><br>");

  //out.print("<a href='forget.jsp'>forget password</a><br>");

%>
 </form>


        
    </body>
</html>
