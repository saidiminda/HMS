package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import javax.servlet.http.*;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/warden.html");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/css/bootstrap.css\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form class=\"modal-content\" name=\"Login\"   onsubmit=\"return nm();\" action=\"Login.jsp\" method=\"post\">\n");
      out.write("    <div class=\"container\">\n");
      out.write("      \n");
      out.write("      \n");
      out.write("        <center> HOSTEL MANAGEMENT SYSTEM</center>\n");
      out.write("      \n");
      out.write("  \n");
      out.write("      <label> Username</label><br>\n");
      out.write("      <input type=\"text\" name=\"uname\" placeholder=\"T/UDOM/2017/0002\"><br><br>\n");
      out.write("      <label> Password</label><br>\n");
      out.write("      <input type=\"password\" name=\"pass\" placeholder=\"Enter password\" ><br><br>\n");
      out.write("      <input type=\"Submit\" name=\"Submit\" value=\"login\" class=\"btn btn-default\" style=\"background-color: #008b8b;\">\n");
      out.write("      <p>Don't have account? <a href=\"register.html\"><i>register</i></a></p>\n");
      out.write("        </div>\n");
      out.write("          </form>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");
 
            
        String WardenPassword="cive123";
        String WardenUsername="warden";
        String username=request.getParameter("uname").toString();
        String password=request.getParameter("pass");
        int number=1;
      //  username == WardenUsername && password == WardenPassword
        if ( request.getParameter("uname")==WardenUsername ){
             out.print(username);
        out.print(password); 
      out.write("\n");
      out.write("        ");
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/css/bootstrap.css\"/>\n");
      out.write("        <title></title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("        <body style=\"background-color:white \">\n");
      out.write("\t<nav class=\"navbar navbar-inverse\" style=\"background-color: Teal \">\n");
      out.write("\t<div class=\"container-fluid\">\n");
      out.write("\t\t<a class=\"navbar-brand\" href=\"#\" >ACTIVITY</a>\n");
      out.write("\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("\t\t\t<li style=\"padding-left: 400px\">\n");
      out.write("\t\t\t\t<a href=\"#\">EDIT INFOR</a>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t\t<li style=\"padding-left: 250px\">\n");
      out.write("\t\t\t\t<a href=\"#\">LOGOUT</a>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</nav>\n");
      out.write("     \n");
      out.write("     <footer style=\"padding-top: 350px\">\n");
      out.write("     \t<nav class=\"navbar navbar-inverse\" style=\"background-color: Teal \">\n");
      out.write("\t<div class=\"container-fluid\">\n");
      out.write("\t\t<a class=\"navbar-brand\" href=\"#\" style=\"\">ABOUT US</a>\n");
      out.write("\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("\n");
      out.write("\t\t\t<li style=\"padding-left: 770px\" >\n");
      out.write("\t\t\t\t<a href=\"#\" style=\"\"  >CONTACT US</a>\n");
      out.write("\t\t\t</li>\n");
      out.write("\t\t</ul>\n");
      out.write("\t</div>\n");
      out.write("</nav>\n");
      out.write("</footer>\n");
      out.write("</body>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        ");

            
              
        }
        else {
            try{
                String Dtbs="jdbc:mysql://localhost:3306/student";
                String pas="";
                String usName="root";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(Dtbs,usName,pas);
                Statement st=con.createStatement();
                String sql1="select * from stdntdetail where regNumber="+username+" and password="+password;
                ResultSet rs=st.executeQuery(sql1);
                
                if(rs.next()){
                response.sendRedirect("student.html");
                }
            }
            catch(Exception e){
            }
        
        }
        
        
      out.write("\n");
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
