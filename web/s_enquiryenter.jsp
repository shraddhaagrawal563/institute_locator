<%-- 
    Document   : s_enquiryenter
    Created on : Aug 31, 2016, 5:35:10 PM
    Author     : SDPOTDAR
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
           try{
                
              String s = (String) session.getAttribute("s_id");
      long s1= Long.parseLong(s);
      String a = request.getParameter("t1");
     
      Class.forName("com.mysql.jdbc.Driver");

 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/institute_locator","root","");

String q = "insert into stu_enq values(?,?)";
PreparedStatement stmt = con.prepareStatement(q);
 

stmt.setLong(1,s1);

stmt.setString(2,a);

int rs=stmt.executeUpdate();
 if(rs!=0)
{
    out.print(" successfully entered in database!");

  

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
