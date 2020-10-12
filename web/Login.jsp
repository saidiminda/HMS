<%-- 
    Document   : Login
    Created on : Aug 29, 2018, 12:13:07 PM
    Author     : samwel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<%@page import="javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/css/bootstrap.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <% 
            
        String WardenPassword="cive123";
        String WardenUsername="warden";
        String username=request.getParameter("uname");
        String password=request.getParameter("pass");
         session=request.getSession(true);
            session.setAttribute("rNumber",username);
        
        int number=1; 
      //  username == WardenUsername && password == WardenPassword
         if ( username.matches(WardenUsername) && password.matches(WardenPassword) ){
             
         %>
       <% response.sendRedirect("warden.html");%>
        <%
            
              
        }
        else {
            try{
                String Dtbs="jdbc:mysql://localhost:3306/student";
                String pas="";
                String usName="root";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(Dtbs,usName,pas);
                Statement st=con.createStatement();
                String sql1="select * from stdntdetail where RegNumber='"+username+"' and password='"+password+"'";
                ResultSet rs=st.executeQuery(sql1);
                
                if(rs.next()){
                response.sendRedirect("student.html");
                }
           else{ 
           response.sendRedirect("index.html");
              }
            }
            catch(Exception e){
out.print(e);
            }
        
        }
        
        %>
    </body>
</html>
