<%-- 
    Document   : reg_institute
    Created on : Aug 20, 2016, 6:31:03 PM
    Author     : SDPOTDAR
--%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registration</title>
    </head>
    <body>
        <form action="inotify_check.jsp">
        <h1>Institute Notification</h1>
        <% 
            out.print("Course Name: <select name=t1>");
            try
 {

Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/institute_locator","root","");

String a = "Select * from faculty";

PreparedStatement stmt = con.prepareStatement(a);

ResultSet rs = stmt.executeQuery();

while(rs.next()){

out.println("<option value="+rs.getString("subject")+">"+rs.getString("subject")+"</option>");
}

     
            
            
            out.print("</select><br>");
           
             out.print("Date:   <input type=text name=t2 placeholder='(yyyy-mm-dd)'><br>");
             
             out.print("Time:    <input type=text name=t3><br>");
             
                     
             
             //out.print(" <input type=text name=t4><br>");

             

out.println("Faculty name: <Select name=t4>");
             

 
 
String b = "Select * from faculty";

PreparedStatement stmt1 = con.prepareStatement(b);

ResultSet rs1 = stmt1.executeQuery();

while(rs1.next()){

out.println("<option value="+rs1.getString("name")+">"+rs1.getString("name")+"</option>");
}


con.close();

}catch(Exception e){

out.println(e);

}
       


out.print("</select><br>");

out.println("<input type=submit value='Add'><br>");


             
        %>
        </form>
    </body>
</html>