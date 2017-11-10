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

     String id=request.getParameter("id");
     
     out.print(id);
Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/institute_locator","root","");

String a = "Select * from reg_institute where icourse like '%"+id+"%'";


Statement stmt = con.createStatement();
//stmt.setString(1, id);
ResultSet rs = stmt.executeQuery(a);

//session.setAttribute("regn",rs.getInt("iregno")+"");
out.println("<table border=1>");
out.println("<tr><td>regno</td> <td>name</td> <td>address</td> <td>contact</td> <td>certified</td> <td>affli</td> <td>affli_from</td> <td>no_of_fac</td> <td>course</td> <td>more info</td>  </tr>");

while(rs.next())
		   
                       
                   {
out.println("<tr><td>"+rs.getInt("iregno")+"</td> <td>"+rs.getString("iname")+"</td> <td>"+rs.getString("iaddress")+"</td> <td>"+rs.getLong("icontact")+"</td><td>"+rs.getString("icertified")+"</td><td>"+rs.getString("iaffli")+"</td><td>"+rs.getString("iaffli_from")+"</td><td>"+rs.getInt("ino_of_fac")+"</td><td>"+rs.getString("icourse")+"</td>  <td> <a href='view_more.jsp?id="+rs.getString("iregno")+"'> view more </a> </td> </tr>");


			          
		   }

                   
		out.println("</table>");
    


con.close();

}catch(Exception e){

out.println(e);

}
   %>
   
</body>
</html>
