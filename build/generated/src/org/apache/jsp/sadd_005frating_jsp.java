package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sadd_005frating_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!doctype html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("\t<link href=\"http://www.jqueryscript.net/css/jquerysctipttop.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\t<title>jQuery star-rating.js Demos</title>\n");
      out.write("\n");
      out.write("\t<link href=\"demo/css/styles.css\" rel=\"stylesheet\">\n");
      out.write("\t<link href=\"dist/star-rating.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("\t<style>\n");
      out.write("\t\t.gl-star-rating {\n");
      out.write("\t\t\tmargin-bottom: 1em;\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t\tpre {\n");
      out.write("\t\t\thyphens: none;\n");
      out.write("\t\t\ttab-size: 4;\n");
      out.write("\t\t\twhite-space: pre;\n");
      out.write("\t\t\tword-break: normal;\n");
      out.write("\t\t\tword-spacing: normal;\n");
      out.write("\t\t\tword-wrap: normal;\n");
      out.write("\t\t}\n");
      out.write("\n");
      out.write("\t</style>\n");
      out.write("\n");
      out.write("\t<!--[if lt IE 9]>\n");
      out.write("\t<script src=\"//html5shiv.googlecode.com/svn/trunk/html5.js\"></script>\n");
      out.write("\t<![endif]-->\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<div id=\"jquery-script-menu\">\n");
      out.write("<div class=\"jquery-script-center\">\n");
      out.write("<div class=\"jquery-script-ads\"><script type=\"text/javascript\"><!--\n");
      out.write("google_ad_client = \"ca-pub-2783044520727903\";\n");
      out.write("/* jQuery_demo */\n");
      out.write("google_ad_slot = \"2780937993\";\n");
      out.write("google_ad_width = 728;\n");
      out.write("google_ad_height = 90;\n");
      out.write("//-->\n");
      out.write("</script>\n");
      out.write("<script type=\"text/javascript\"\n");
      out.write("src=\"http://pagead2.googlesyndication.com/pagead/show_ads.js\">\n");
      out.write("</script></div>\n");
      out.write("<div class=\"jquery-script-clear\"></div>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"wrapper\">\n");
      out.write("\n");
      out.write("\t<section>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t<select id=\"star-rating-1\">\n");
      out.write("\t\t\t<option value=\"\">Select a rating</option>\n");
      out.write("\t\t\t<option value=\"5\">5</option>\n");
      out.write("\t\t\t<option value=\"4\">4</option>\n");
      out.write("\t\t\t<option value=\"3\">3</option>\n");
      out.write("\t\t\t<option value=\"2\">2</option>\n");
      out.write("\t\t\t<option value=\"1\">1</option>\n");
      out.write("\t\t</select>\n");
      out.write("\t<input type=button value=ok id=b1>\n");
      out.write("\t<script src=\"http://code.jquery.com/jquery-3.1.1.slim.min.js\"></script>\n");
      out.write("\t<script src=\"demo/js/scale.fix.js\"></script>\n");
      out.write("\t<script src=\"dist/star-rating.min.js\"></script>\n");
      out.write("\n");
      out.write("\t<script>\n");
      out.write("\tvar x;\n");
      out.write("\t\t$('#b1').click(function(){\n");
      out.write("\n");
      out.write("\t\talert(x);\n");
      out.write("\t\t});\n");
      out.write("\t\t$( '#star-rating-1' ).starrating({\n");
      out.write("\t\t\tclickFn: function( selected ) {\n");
      out.write("\t\t\t\tconsole.log( 'I clicked star #' + selected );\n");
      out.write("\t\t\t\tx=selected;\n");
      out.write("\t\t\t},\n");
      out.write("\t\t});\n");
      out.write("\n");
      out.write("\t\tStarRating.defaults.initialText = \"Rate me\";\n");
      out.write("\n");
      out.write("\t\t$( '#star-rating-2' ).starrating();\n");
      out.write("\n");
      out.write("\t\t$( '#star-rating-3' ).starrating();\n");
      out.write("\n");
      out.write("\t\t$( '#star-rating-4' ).starrating();\n");
      out.write("\n");
      out.write("\t\tvar starrating = new StarRating( document.getElementById( 'star-rating-5' ), {\n");
      out.write("\t\t\tclearable: false,\n");
      out.write("\t\t}).init();\n");
      out.write("\n");
      out.write("\t</script>\n");
      out.write("</div>\n");
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
