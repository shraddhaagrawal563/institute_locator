<%-- 
    Document   : reg_insert
    Created on : Aug 20, 2016, 7:32:09 PM
    Author     : SDPOTDAR
--%>
<%@page import="demo.smsLane"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">     
    </head>
    <body>
        <%
            try{
                
                   
      String a = request.getParameter("t1");
      long b = Long.parseLong(request.getParameter("t2"));
     
      String c =request.getParameter("t3");
      String d = request.getParameter("t4");
      String e =request.getParameter("t5");
      
      String f =request.getParameter("t6");
            
      String g = request.getParameter("t7");
      Class.forName("com.mysql.jdbc.Driver");

 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/institute_locator","root","");

String q = "insert into stu_reg values(?,?,?,?,?,?,?)";
PreparedStatement stmt = con.prepareStatement(q);
 

stmt.setString(1,a);
stmt.setLong(2,b);
stmt.setString(3,c);
stmt.setString(4,d);
stmt.setString(5,e);

stmt.setString(6,f);
stmt.setString(7,g);
int rs=stmt.executeUpdate();
 if(rs!=0)
{
    out.print(" successfully entered in database!");

  

}
else
{
    out.print("error!");
}
 
 
           
String[]x = new String[2];
 
x[0]=b+"";  

Random r=new Random();

x[1]=(10000+r.nextInt(9000)+"");
    
//smsLane.main(x);
 
  
String p = "insert into slogin values(?,?)";
PreparedStatement stmt1 = con.prepareStatement(p);
 
stmt1.setLong(1,Long.parseLong(x[0]));
stmt1.setString(2,x[1]);

 int rs1 = stmt1.executeUpdate();


out.print("password send");
out.print("<script>window.location='stu_login.jsp'</script>");
 
con.close();
}catch(Exception e){
   
out.println(e);
}
%>

</body>
</html>
