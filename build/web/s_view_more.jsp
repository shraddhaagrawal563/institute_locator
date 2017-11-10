<%-- 
    Document   : searching
    Created on : Aug 22, 2016, 6:52:33 PM
    Author     : SDPOTDAR
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       
try
 {

Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/institute_locator","root","");
//String b= request.getParameter("t1");
String id=request.getParameter("id");

//String s = (String) session.getAttribute("regn"); 
        
       
     //  if(s==null){
       
       //out.print("<script> window.location='logout.jsp'; </script>");
      
       //}
out.print("<h1><b><u>NOTIFICATIONS<b><u></h1>");
String a = "Select * from inotification where regno='"+id+"'";


Statement stmt = con.createStatement();
//stmt.setString(1,b);
ResultSet rs = stmt.executeQuery(a);


out.println("<table border=1>");
out.println("<tr><td>course</td> <td>date</td> <td>time</td> <td>faculty</td><td>regno</td></tr>");

		   while(rs.next())
		   {
out.println("<tr><td>"+rs.getString("course")+"</td> <td>"+rs.getString("date")+"</td> <td>"+rs.getString("time")+"</td> <td>"+rs.getString("faculty")+"</td><td>"+rs.getInt("regno")+"</td></tr>");
			          
		   }
		out.println("</table>");
    
//String id=request.getParameter("id");

//String s = (String) session.getAttribute("regn"); 
        
       
     //  if(s==null){
       
       //out.print("<script> window.location='logout.jsp'; </script>");
      
       //}
                out.print("<h1><b><u>OUR FACULTIES<b><u></h1>");

String b = "Select * from faculty where regno='"+id+"'";


Statement stmt1 = con.createStatement();
//stmt.setString(1,b);
ResultSet rs1 = stmt1.executeQuery(b);


out.println("<table border=1>");
out.println("<tr><td>name</td> <td>qualification</td> <td>year_of_experience</td> <td>subject</td> <td>contact</td> <td>email_id</td></tr>");

		   while(rs1.next())
		   {
out.println("<tr><td>"+rs1.getString("name")+"</td> <td>"+rs1.getString("qualification")+"</td> <td>"+rs1.getInt("year_of_experience")+"</td> <td>"+rs1.getString("subject")+"</td> <td>"+rs1.getLong("contact")+"</td> <td>"+rs1.getString("email_id")+"</td></tr>");
			          
		   }
		out.println("</table>");
    


con.close();

}catch(Exception e){

out.println(e);

}
   %>
    <a href="ssend_enquiry.jsp">send enquiry</a>
   
</body>
</html>
