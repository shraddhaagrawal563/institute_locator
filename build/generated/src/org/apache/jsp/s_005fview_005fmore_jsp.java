package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class s_005fview_005fmore_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

       
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
   
      out.write("\n");
      out.write("    <a href=\"ssend_enquiry.jsp\">send enquiry</a>\n");
      out.write("   \n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
