package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class block6_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <style type=\"text/css\">\n");
      out.write("\tul {\n");
      out.write("    list-style-type: none;\n");
      out.write("    margin: 0;\n");
      out.write("    padding: 0;\n");
      out.write("    overflow: hidden;\n");
      out.write("    background-color: #008000;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li {\n");
      out.write("    float: left;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li a{\n");
      out.write("    display: inline-block;\n");
      out.write("    color: white;\n");
      out.write("    text-align: center;\n");
      out.write("    padding: 14px 100px;\n");
      out.write("    text-decoration: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("li a:hover, .dropdown:hover .dropbtn {\n");
      out.write("    background-color: grey;\n");
      out.write("}\n");
      out.write("* {box-sizing: border-box;}\n");
      out.write("body {font-family: Verdana, sans-serif;}\n");
      out.write("\n");
      out.write("\n");
      out.write("           \n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: #f0ffff;\">\n");
      out.write("\n");
      out.write("<ul class=\"nav1\">\n");
      out.write("  \n");
      out.write("  <li><a href=\"student.html\">Previous  </a></li>\n");
      out.write("  \n");
      out.write("  <li style=\"padding-left: 50%;\"><a href=\"\">Logout</a></li>\n");
      out.write("</ul>\n");
      out.write("<center>\n");
      out.write(" \n");
      out.write("    <div class=\"container\" style=\"background-color: #fefefe; margin: 5% auto 15% auto; border: 1px solid #888; width: 100%;\">\n");
      out.write("\n");
      out.write("    \t\n");
      out.write("    \t\t<table style=\"width: 100%;\">\n");
      out.write("    \t\t\t<thead><tr style=\"width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #008080;font-size: 20px;\" ><td colspan=\"10\"><center>STUDENTS INFORMATION</center></td></tr>\n");
      out.write("                \n");
      out.write("                <tr style=\"width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #f1f1f1; font-size: 18px;\">\n");
      out.write("    \t\t\t\t\t<td>RegNumber</td><td>First Name</td><td>Second Name</td> <td>Last  Name</td>\n");
      out.write("    \t\t\t\t\t<td>Phone Number</td><td>Gender</td><td>Course</td>\n");
      out.write("    \t\t\t\t\t<td>Block Number</td><td>Room Number</td><td>side</td>\n");
      out.write("                        </tr>\n");
      out.write("    \t\t\t</thead>\n");
      out.write("    \t\t\t<tbody>\n");
      out.write("    \t\t\t\t<tr style=\"width: 100%; height: 50px; padding: 15px; margin: 5px 0 22px 0;border: none; background: #f1f1f1;\">\n");
      out.write("\n");
      out.write("    \t\t\t\t\t<td>First Name:</td><td>Second Name</td> <td>Last  Name</td>\n");
      out.write("    \t\t\t\t\t<td>RegNumber</td><td>Phone Number</td><td>Gender</td><td>Course</td>\n");
      out.write("    \t\t\t\t\t<td>Block Number</td><td>Room Number</td><td>side</td>\n");
      out.write("    \t\t\t\t</tr>\n");
      out.write("    \t\t\t</tbody>\n");
      out.write("    \t\t</table>\n");
      out.write("  </div>\n");
      out.write("</center>\n");
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
