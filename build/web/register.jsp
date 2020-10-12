<%-- 
    Document   : register
    Created on : Aug 29, 2018, 12:13:30 PM
    Author     : samwel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<%@page import="javax.servlet.http.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String userGender=request.getParameter("sex");
            String userFname=request.getParameter("FirstName");
            String userLname=request.getParameter("LastName");
            String userSname=request.getParameter("SecondName");
            String userEmail=request.getParameter("EmailAddress");
            int userPhnumber=Integer.parseInt(request.getParameter("PhoneNumber"));
            String userRegno=request.getParameter("RegistrationNumber");
            String userDate=request.getParameter("DaY");
            String userCourse=request.getParameter("Course");
            String userPassword=request.getParameter("Password");
            
            session=request.getSession(true);
            session.setAttribute("rNumber",userRegno);
            
            
            try{
                
                String Dtbs="jdbc:mysql://localhost:3306/student";
                String pas="";
                String usName="root";
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(Dtbs,usName,pas);
                
                Statement st=con.createStatement();
              
                String sql3="select * from stdntdetail where RegNumber='"+userRegno+"'";
                String sql2="insert into stdntdetail(fname,sname,PhoneNumber,email,gender,password,RegNumber,BirthDate,course,lname) Values('"+userFname+"','"+userSname+"','"+userPhnumber+"','"+userEmail+"','"+userGender+"','"+userPassword+"','"+userRegno+"','"+userDate+"','"+userCourse+"','"+userLname+"')";
                
               ResultSet rs=st.executeQuery(sql3);
               
               if(rs.next()){
               out.print("user is orleady registered");
               }
               else{
                int i=st.executeUpdate(sql2);
                
                if(i>0){
                response.sendRedirect("index.html");
                }
               }
            }
            catch(Exception e){
                out.print(e);
            }
            
            %>
    </body>
</html>
