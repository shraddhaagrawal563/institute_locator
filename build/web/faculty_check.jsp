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
      int c = Integer.parseInt(request.getParameter("t3"));
     
     
      String d = request.getParameter("t4");
       long e = Long.parseLong(request.getParameter("t5"));
      
      String f = request.getParameter("t6");
     
      
            
      Class.forName("com.mysql.jdbc.Driver");

 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/institute_locator","root","");

String q = "insert into faculty value(?,?,?,?,?,?,?)";
PreparedStatement stmt = con.prepareStatement(q);
 
stmt.setString(1,a);
stmt.setString(2,b);
stmt.setInt(3,c);

stmt.setString(4,d);

stmt.setLong(5,e);
stmt.setString(6,f);

stmt.setString(7,(String) session.getAttribute("regn"));

int rs=stmt.executeUpdate();
 if(rs!=0)
{
    out.println("faculty information updated!");
   
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
 