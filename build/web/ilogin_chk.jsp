<%-- 
    Document   : loginchk
    Created on : 14 Jul, 2016, 2:00:34 PM
    Author     : nilu
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login check Page</title>
    </head>
    <body>
         <%
              try
              {
                  
            String a= request.getParameter("t1");
            String b= request.getParameter("t2");
         
            Class.forName("com.mysql.jdbc.Driver");   
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/institute_locator","root","");
		String q= "Select * from login_check where uname=? and password=?";
		PreparedStatement stmt=con.prepareStatement(q);
                stmt.setString(1,a);
                stmt.setString(2,b);
                
		ResultSet rs= stmt.executeQuery();
		if(rs.next())
		{ 
                    
              response.sendRedirect("institute_home.jsp");
        	session.setAttribute("regn",a+"");	
	        		}
              else
                {
                    out.println("<script>alert('invalid username or password!');</script>");
                    response.sendRedirect("ilogin.jsp");
                }
 
		con.close();
                 }
 catch(Exception e)
{
   out.print(e);
}
                 
        %>
         
            
            
    </body>
</html>
