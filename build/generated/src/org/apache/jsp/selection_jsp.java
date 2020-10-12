package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import javax.servlet.http.*;

public final class selection_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <body>\n");
      out.write("        <ul class=\"nav1\">\n");
      out.write("  \n");
      out.write("  <li><a href=\"student.html\">Previous  </a></li>\n");
      out.write("  <li><a href=\"#\">Profile</a></li>\n");
      out.write("  <li><a href=\"\">Logout</a></li>\n");
      out.write("</ul>\n");
      out.write("<center>\n");
      out.write(" \n");
      out.write("    <div class=\"container\">\n");
      out.write("        <form style=\"background-color: #fefefe; margin: 5% auto 15% auto; border: 1px solid #888; width: 40%; padding-bottom: 30PX;\" action=\"selection.jsp\" method=\"post\">     \n");
      out.write("      \n");
      out.write("        <center>ENTER YOUR SELECTION BELOW</center><br><br>\n");
      out.write("    \n");
      out.write("     <label>Room Number</label><br>\n");
      out.write("     <input type=\"number\" min=\"1\" max=\"60\" name=\"roomNo\" style=\"width: 90%; padding: 15px; margin: 5px 0 22px 0;\n");
      out.write("      display: inline-block;\n");
      out.write("      border: none; background: #f1f1f1\"><br><br>\n");
      out.write("      <label>Block number</label><br>\n");
      out.write("      <input type=\"number\" min=\"1\" max=\"6\" name=\"blockNo\" style=\"width: 90%; padding: 15px; margin: 5px 0 22px 0;\n");
      out.write("      display: inline-block;\n");
      out.write("      border: none; background: #f1f1f1\"><br><br>\n");
      out.write("      <input type=\"radio\" name=\"sideA\" value=\"A\" required=\"required\">side A<br>\n");
      out.write("\t\t<input type=\"radio\" name=\"sideA\" value=\"B\" required=\"required\">side B<br><br>\n");
      out.write("      <button type=\"submit\" class=\"btn btn-default\" style=\"background-color: #008b8b; width: 90%; opacity:  0.9; cursor: pointer; padding: 10px 10px;\">Submit</button>\n");
      out.write("      \n");
      out.write("    </form>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("</center>\n");
      out.write("\n");
      out.write("        ");

          //int Bnumber=Integer.parseInt(request.getParameter("blockNo"));
          int roomNo=Integer.parseInt(request.getParameter("roomNo"));
          String rside=request.getParameter("sideA");
          //String RegNo=request.getParameter("Rnumber");
          String RegNo=(String)session.getAttribute("rNumber");
          
          

 try{
                String Dtbs="jdbc:mysql://localhost:3306/student";
                String pas="";
                String usName="root";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(Dtbs,usName,pas);
                Statement st=con.createStatement();
                String sql1="select * from blockdetails where Blocknumber='"+Bnumber+"' and roomNumber='"+roomNo+"' and side='"+rside+ "'";
                String sql3="select * from blockdetails where RegNumber='"+RegNo+"'";
                String sql2="insert into blockdetails(Blocknumber,roomNumber,side,RegNumber) Values('"+Bnumber+"','"+roomNo+"','"+rside+"','"+RegNo+"')";
                
               
               ResultSet rss=st.executeQuery(sql3);
                
                
               if(rss.next()){
                    out.print("username is present");
                }
                else{
                int counter=0;
                ResultSet rs=st.executeQuery(sql1);
                while(rs.next()){
                counter++;
                }
                if(counter<4){
                int i=st.executeUpdate(sql2 );
                if(i>0){
                out.print("your succesfull registerd");
                }
                }
                else{
                out.print("room is full");
                }
                }
            }
            catch(Exception e){
out.print(e);
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
