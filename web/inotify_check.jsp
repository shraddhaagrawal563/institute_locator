<%-- 
    Document   : reg_insert
    Created on : Aug 20, 2016, 7:32:09 PM
    Author     : SDPOTDAR
--%>
<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
    </head>
    <body>
        <%
            try{

      String a = request.getParameter("t1");
      String b = request.getParameter("t2");
      
      String c = request.getParameter("t3");
      String d = request.getParameter("t4");
            
      Class.forName("com.mysql.jdbc.Driver");

 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/institute_locator","root","");

String q = "insert into inotification value(?,?,?,?,?)";
PreparedStatement stmt = con.prepareStatement(q);
 
stmt.setString(1,a);
stmt.setString(2,b);
stmt.setString(3,c);
stmt.setString(4,d);
stmt.setString(5,(String) session.getAttribute("regn"));


int rs=stmt.executeUpdate();
 if(rs!=0)
{
    out.print(" successfully entered in database!");
// out.print("<script>window.location='new.jsp'; </script>");
  
}
else
{
    out.print("error!");
}

con.close();
}catch(Exception e){
   
out.println(e);
}
%>

</body>
</html>
