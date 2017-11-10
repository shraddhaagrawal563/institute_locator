<%@page import="demo.smsLane"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <a href="pass_snd.jsp"></a>
    <body>
        
        <%                                  
Long z = Long.parseLong(request.getParameter("t1"));
           
String[]x = new String[2];
 
x[0]=z+"";  

Random r=new Random();

x[1]=(10000+r.nextInt(9000)+"");
    
   smsLane.main(x);
  
  try{
      
Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/institute_locator","root","");

String q = "Insert into login_check values(?,?)";
PreparedStatement stmt = con.prepareStatement(q);
 
stmt.setLong(1,Long.parseLong(x[0]));
stmt.setString(2,x[1]);

 int rs = stmt.executeUpdate();


out.print("password send");
out.print("<script>window.location='ilogin.jsp'</script>");

con.close();            
            
       }catch(Exception e){
              out.println("not done"+e);  
            }
%>
        
    </body>
</html>
