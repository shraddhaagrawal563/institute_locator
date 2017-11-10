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
                  
            long a= Long.parseLong(request.getParameter("t1"));
            String b= request.getParameter("t2");
         
            Class.forName("com.mysql.jdbc.Driver");   
         Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/institute_locator","root","");
		String q= "Select * from slogin where uname=? and password=?";
		PreparedStatement stmt=con.prepareStatement(q);
                stmt.setLong(1,a);
                stmt.setString(2,b);
                
		ResultSet rs= stmt.executeQuery();
		if(rs.next())
		{ 
                    
              response.sendRedirect("stu_home.jsp");
        	session.setAttribute("s_id",a+"");	
	        		}
              else
                {
                    out.println("<script>alert('invalid username or password!');</script>");
                    response.sendRedirect("stu_login.jsp");
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
