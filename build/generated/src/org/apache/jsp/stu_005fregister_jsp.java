package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class stu_005fregister_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>registration</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"stu_insert.jsp\">\n");
      out.write("        <h1>Student Registration</h1>\n");
      out.write("        ");

            out.print("Name:        <input type=text name=t1 placeholder='Enter name'><br>");
             out.print("Contact:     <input type=text name=t2 placeholder='Enter contact'><br>");
             out.print("Date of Birth :    <input type=text name=t3 placeholder='Enter date of birth'><br>");
              
             
                    
              out.print("Qualification <input type=text name=t4 placeholder='Enter qualification'><br>");
              out.print("Address <input type=text name=t5 placeholder='Enter address'><br>");
                      
             out.print("course interested <select name=t6>");
                     out.print("<option>C</option>");
                     out.print("<option>C++</option>");
                      out.print("<option>CORE JAVA</option>");
                       out.print("<option>ADVANCE JAVA</option>");
                        out.print("<option>DATA STRUCTURE</option>");
                       
                        
                      out.print("</select><br>");
             
            out.print("Email id:    <input type=text name=t7 placeholder='Enter     email address'><br>");
              
            out.print("<input type=submit value='Register'><br>");
            

        
      out.write("\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
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
