<%-- 
    Document   : login
    Created on : 25 Jul, 2016, 4:24:37 PM
    Author     : nilu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
	 <form action="ilogin_chk.jsp">
    <body>
         <%
            out.print("REGISTRATION NUMBER: <input type=text name=t1><br>");
             out.print("PASSWORD:      <input type=text name=t2><br>");
             
             out.print("<input type='submit' value='LOGIN' >");
             
             out.print("<input type='button' value='cancel'>");
      %>			
      </body>
      </head>
      
      